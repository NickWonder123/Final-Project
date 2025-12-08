#include <string>
#include "jdbc.h"

class SqlConnector
{
    private:
    sql::Driver * driver;
    sql::Connection * con;

    public:
    SqlConnector(std::string dbName, std::string dbHost, std::string dbUser, std::string dbPass);
};