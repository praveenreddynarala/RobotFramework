"""
Implementing default run
Contains all test settings : Test Setup
Login and verify login
Test Teardown
"""

from TestFramework.Libraries.TestFixture import TestFixture
from TestFramework.Libraries.RobotTests.Login import Login
from TestFramework.Libraries.RobotTests.Home import Home


if __name__ == "__main__":
    """
    Database connectivity examples: START
    """
    import TestFramework.Libraries.Modules.database as Database

    Database.open_mssql(server="192.168.1.168", database="Telarix", user="Test", password="Test")

    rows = Database.get_rows("SELECT Name, Address FROM Test;")
    for row in rows:
        print "Name: " + str(row.Name) + " Address: " + str(row.Address)

    cursor = Database.get_cursor("SELECT Name, Address FROM Test;")
    row = cursor.fetchone()
    while row:
        print "Name: " + str(row.Name) + " Address: " + str(row.Address)
        row = cursor.fetchone()
    cursor.close()

    Database.close()
    """
    Database connectivity examples: END
    """

    testfixture = TestFixture()
    testfixture.setup("IE")
    testfixture.goto("https://automationtesting.ixtools.com/iXTools")

    login_page = Login()
    login_page.perform_login("test", "test")
    home_page = Home()
    is_login_successful = home_page.is_login_successful()
    print (is_login_successful)

    if(is_login_successful):
        home_page.sign_out()
    else:
        pass

    testfixture.teardown()
