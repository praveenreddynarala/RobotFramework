"""
Database connectivity implementation.
"""
_connection = None

def open_mssql(server, database, user, password, driver='{SQL Server}', port=1433):
    """
    Open mssql connection and saved to a global variable.
    :param server:
    :param database:
    :param user:
    :param password:
    :param driver:
    :param port:
    :return:
    """
    import pyodbc
    global _connection
    _connection = pyodbc.connect("DRIVER=%s;SERVER=%s;PORT=%s;DATABASE=%s;UID=%s;PWD=%s" % (driver, server, port, database, user, password))

def get_cursor(sql, params=None):
    """
    Returns cursor object for given sql.
    :param sql: sql
    :param params: query parameter
    :return:
    """
    global _connection
    cursor = _connection.cursor()
    if(params):
        cursor.execute(sql, params)
    else:
        cursor.execute(sql)
    return cursor

def get_rows(sql):
    """
    Returns all available rows for given sql.
    :param sql:
    :return:
    """
    global _connection
    cursor = _connection.cursor()
    cursor.execute(sql)
    rows = cursor.fetchall()
    cursor.close()  # Close cursor object.
    return rows

def close():
    """
    Close database connection.
    :return:
    """
    global _connection
    _connection.close()
