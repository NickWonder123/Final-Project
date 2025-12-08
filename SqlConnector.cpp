#include "jdbc.h"
#include "SqlConnector.h"
#include <string>

using namespace std;

SqlConnector::SqlConnector(std::string dbName, std::string dbHost, std::string dbUser, std::string dbPass)
{
    driver = sql::mysql::get_mysql_driver_instance();
    con = driver->connect(dbHost, dbUser, dbPass);
    con->setSchema(dbName);
}