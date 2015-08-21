"""SimpleApp.py"""
from pyspark import SparkContext

logFile = "sampletext.txt"  # Should be some file on your system
sc = SparkContext("local", "Simple App")
logData = sc.textFile(logFile).cache()

def lettersearch(letter):
    return logData.filter(lambda s: letter in s).count()

def main():
    numAs = lettersearch('a')
    numBs = lettersearch('b')

    print "Lines with a: %i, lines with b: %i" % (numAs, numBs)

if __name__ == '__main__':
    main()
