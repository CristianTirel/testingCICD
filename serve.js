const express = require("express");
var cors = require("cors");
const app = express();

app.use(cors());
app.use("/games", express.static("/data/games")); //Serves resources from public folder
const server = app.listen(8000);
