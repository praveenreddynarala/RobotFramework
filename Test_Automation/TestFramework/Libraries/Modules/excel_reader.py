"""
excel file reader implementation
"""
import xlrd
import datetime


_excel_data_dictionary_keys = []
_excel_data_dictionary = {}

def read_data_from_excel_file(file_path, sheet_index=0, sheet_name=None):
    """
    Implementing read data from excel file functionality
    :param file_path:
    :param sheet_index:
    :param sheet_name:
    :return: _excel_data_dictionary
    """
    try:
        modified_file_path = file_path.replace('/', '\\')
        workbook = xlrd.open_workbook(modified_file_path)
        if sheet_name is not None:
            if type(sheet_name) == int:
                sheet = workbook.sheet_by_index(sheet_name)
            else:
                sheet = workbook.sheet_by_name(sheet_name)
        elif sheet_index is not 0:
            if type(sheet_index) != int:
                sheet = workbook.sheet_by_name(sheet_index)
            else:
                sheet = workbook.sheet_by_index(sheet_index)
        else:
            sheet = workbook.sheet_by_index(0)
        for row in range(sheet.nrows):
            for col in range(sheet.ncols):
                value = sheet.cell(row, col).value
                if row == 0:
                    _excel_data_dictionary_keys.append(str(value))
                else:
                    if "date" in _excel_data_dictionary_keys[col].lower():
                        value = datetime.datetime(*xlrd.xldate_as_tuple(value, workbook.datemode))
                        value = "%d/%d/%d" % (value.month, value.day, value.year)
                    _excel_data_dictionary.update({_excel_data_dictionary_keys[col]: str(value)})
        return _excel_data_dictionary
    except:
        raise
