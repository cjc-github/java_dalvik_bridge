import os


def list_all_files(file_name):
    _files = []
    list_file = os.listdir(file_name)
    for i in range(0, len(list_file)):
        path = os.path.join(file_name, list_file[i])
        if os.path.isdir(path):
            _files.extend(list_all_files(path))
        if os.path.isfile(path):
            _files.append(path)
    return _files


def judge_third_library(file, num):
    dir = file.split("/")[num]
    if dir == "android":
        return False
    if dir == "androidx":
        return False
    if dir == "com" and file.split("/")[num + 1] == "google":
        return False
    return True


# Lorg/arguslab/native_leak/MainActivity;.send:(Ljava/lang/String;)V
# <org.arguslab.native_leak.MainActivity: void send(java.lang.String)>
class CountDalvikMethods:
    def __init__(self, apk_out, apktool_out):
        self.apk_out = apk_out
        self.apktool_out = apktool_out

    def report(self):
        apk_list = []
        for apk_name in os.listdir(self.apk_out):
            apk_path = os.path.join(self.apk_out, apk_name)
            apk_list.append(apk_path)

        for apk_path in apk_list:
            # [1] generate smali code
            output = os.path.join(self.apktool_out, os.path.basename(apk_path).split(".")[0])
            if os.path.exists(output):
                print(f"Has been decompile the apk: {apk_path}.")
            else:
                cmd = "java -jar lib/apktool_2.9.3.jar d -f " + apk_path + " -o " + output
                os.system(cmd)

            # [2] analysis smali code
            method_set = set()
            for file_name in os.listdir(output):
                smali_path = os.path.join(output, file_name)
                if file_name.startswith("smali") and os.path.isdir(smali_path):
                    num = len(smali_path.split("/"))
                    for file in list_all_files(smali_path):
                        # each file
                        if judge_third_library(file, num):
                            with open(file, "r") as f:
                                lines = f.readlines()
                                for line in lines:
                                    if line.startswith(".method ") > 0:
                                        method = "L" + file.split("/", num)[-1][:-6] + ";." + line.split(" ")[
                                            -1].replace("(", ":(")
                                        method_set.add(method)

            # [3] save the method
            with open("dalvik_method.txt", "a") as f:
                for i in method_set:
                    f.write(i)
