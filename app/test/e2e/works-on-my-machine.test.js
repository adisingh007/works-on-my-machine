const app = require("../../src/app");
const supertest = require("supertest");

describe("When making GET request to /", () => {
    it("should return 'It works on your machine too 😃!'", () => {
        return supertest(app)
            .get("/")
            .expect(200, "It works on your machine too 😃!");
    });
});
