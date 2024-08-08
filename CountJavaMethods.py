import os


# Lorg/arguslab/native_leak/MainActivity;.send:(Ljava/lang/String;)V
# <org.arguslab.native_leak.MainActivity: void send(java.lang.String)>
class CountJavaMethods:
    def __init__(self, apk_out, soot_out):
        self.apk_out = apk_out
        self.soot_out = soot_out

    def report(self):
        apk_list = []
        for apk_name in os.listdir(self.apk_out):
            apk_path = os.path.join(self.apk_out, apk_name)
            apk_list.append(apk_path)

        for apk_path in apk_list:
            # [1] generate jimple code
            apk_name = os.path.basename(apk_path).split(".")[0]
            output = os.path.join(self.soot_out, apk_name)

            if os.path.exists(output):
                print(f"Has been decompile the apk: {apk_path}.")
            else:
                os.makedirs(output)
                cmd = f"cd {self.soot_out}; java -jar ../lib/soot-infoflow-cmd-2.13.0-jar-with-dependencies.jar -a " + \
                      os.path.abspath(apk_path) + " -p ../lib/android.jar -s ../lib/SourcesAndSinks.txt -wj sootOutput"
                os.system(cmd)
                os.rename(os.path.join(self.soot_out, "sootOutput"), output)

            # [2] analysis smali code
            method_set = set()
            for file_name in os.listdir(output):
                jimple_path = os.path.join(output, file_name)
                with open(jimple_path, "r") as f:
                    lines = f.readlines()
                    for line in lines:
                        if "invoke " in line:
                            try:
                                method = line.split("<", 1)[1].split(")>", 1)[0]
                                method_set.add(f"<{method})>\n")
                            except Exception as e:
                                pass

            # [3] save the method
            with open("java_method.txt", "a") as f:
                for i in method_set:
                    f.write(i)
