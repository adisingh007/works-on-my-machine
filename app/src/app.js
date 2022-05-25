const express = require("express");
const app = express();

app.get("/", (req, res) => {
    res.send("It works on your machine too 😃!");
});

module.exports = app;
