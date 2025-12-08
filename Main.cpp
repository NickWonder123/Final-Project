#include "jdbc.h"
#include "SqlConnector.h"
#include <iostream>
#include <string>

using namespace std;

// These values may change from computer to computer, so edit them here if needed
#define DB_HOST "localhost"
#define DB_USER "root"
#define DB_PASS ""
#define DataBase "videogames"

int main()
{
    try
    {
        SqlConnector sql(DataBase, DB_HOST, DB_USER, DB_PASS);
    }
    catch(sql::SQLException e)
    {
        cout << e.what() << endl;
    }
    catch(...)
    {
        cout << "Failed to connect to database" << endl;
    }
    // sql::ResultSet * result;
}