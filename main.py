import argparse

from CountDalvikMethods import CountDalvikMethods
from CountJavaMethods import CountJavaMethods

if __name__ == '__main__':
    Title = "[+] Welcome to using Android Java and Dalvik Bridge Analysis."
    parser = argparse.ArgumentParser(description=Title)
    parser.add_argument("--i", "-i", default="apk", help="input dir.")
    parser.add_argument("--ao", "-ao", default="apktool_out", help="output dir.")
    parser.add_argument("--so", "-so", default="soot_out", help="output dir.")
    args = parser.parse_args()

    cdm = CountDalvikMethods(args.i, args.ao)
    cdm.report()

    cjm = CountJavaMethods(args.i, args.so)
    cjm.report()
    print("done.")
