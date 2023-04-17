import os
import linecache
import pytest

DIR = os.path.dirname(__file__)


@pytest.mark.parametrize("line_number", [1])
def test_has_word(line_number):
    line = linecache.getline(f"{DIR}/test2_3.csv", line_number)
    assert line == '"explain","account","shade","white","word","death"\n'


@pytest.mark.parametrize("line_number", [5, 10, 13, 15, 20])
def test_has_world(line_number):
    line = linecache.getline(f"{DIR}/test2_3.csv", line_number)
    assert "world" in line


@pytest.mark.parametrize("line_number", [8, 21])
def test_has_kata(line_number):
    line = linecache.getline(f"{DIR}/test2_3.csv", line_number)
    assert "kata" in line
