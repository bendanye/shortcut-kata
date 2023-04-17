import linecache
import os

DIR = os.path.dirname(__file__)


def test_row_10_is_correct():
    line = linecache.getline(f"{DIR}/test2_2.csv", 10)
    assert line == '"whether","clean","boat","rocky","these","test2_2"\n'


def test_row_16_and_17_is_correct():
    line = linecache.getline(f"{DIR}/test2_2.csv", 16)
    assert line == '"worried","introduced","closer","large","pan","wash"\n'

    line = linecache.getline(f"{DIR}/test2_2.csv", 17)
    assert line == '"condition","corn","mistake","hospital","harbor","smell"\n'
