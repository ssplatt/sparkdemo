def add_pyspark_path():
    """
    Add PySpark to the PYTHONPATH
    Thanks go to this project: https://github.com/holdenk/sparklingpandas
    """
    import sys
    import os
    try:
        sys.path.append(os.path.join(os.environ['SPARK_HOME'], "python"))
        sys.path.append(os.path.join(os.environ['SPARK_HOME'],
            "python","lib","py4j-0.8.2.1-src.zip"))
    except KeyError:
        print "SPARK_HOME not set"
        sys.exit(1)

add_pyspark_path() # Now we can import pyspark

import unittest
import SimpleApp

class TestSA(unittest.TestCase):
    def setUp(self):
        pass
        
    def test_letter_c(self):
        self.assertEqual( SimpleApp.lettersearch('c'), 3)
    
if __name__ == '__main__':
    unittest.main()