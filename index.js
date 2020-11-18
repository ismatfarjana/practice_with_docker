const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Hi there!");
});

//target port, if the target port inside container is changed, weneed to updathe the target port here too
app.listen(3000, () => {
  console.log("listening on port 3000");
});
