import csv
import os

DIR = os.path.dirname(__file__)


def test_csv_header_is_correct():
    with open(f"{DIR}/test2_1.csv") as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=",")
        assert next(csv_reader) == [
            "id",
            "address",
            "first_name",
            "last_name",
            "email",
            "gender",
        ]


def test_address_value_is_added():
    with open(f"{DIR}/test2_1.csv") as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=",")
        next(csv_reader)
        for row in csv_reader:
            assert row[1] == "NA"


def test_last_row_is_correct():
    with open(f"{DIR}/test2_1.csv") as csv_file:
        last_line = csv_file.readlines()[-1]
        assert last_line == "1031,NA,Test,2_2,hellokata@furl.net,Male"
