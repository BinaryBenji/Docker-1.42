var config = {}

config.host = process.env.HOST || "https://supersite.documents.azure.com:443/";
config.authKey = process.env.AUTH_KEY || "FIzEoFggSs2Ox1fSG8L9ezcPYLSsY4jHDt7RormM7TMXZMw4pCG7e1s7Xk7CxYj97XgL8NAbKUnPya3iEhO1lQ==";
config.databaseId = "ToDoList";
config.collectionId = "Items";

module.exports = config;