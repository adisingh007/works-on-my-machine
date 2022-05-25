const app = require("./app");
const APP_PORT = 3000;

app.listen(APP_PORT, () => {
    console.log(`Application listening on port ${APP_PORT}!`);
});
