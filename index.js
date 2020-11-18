const express = require("express");

const app = express();

//changes made here not reflected to container. to do so, build container again to copy over and add the new changes to the container
app.get("/", (req, res) => {
  res.send(" hi hi Bye bye!");
});

//target port, if the target port inside container is changed, weneed to updathe the target port here too
app.listen(3000, () => {
  console.log("listening on port 3000");
});

// while on any change of source code, we need to make sure that whole npm package dont get reinstalled
