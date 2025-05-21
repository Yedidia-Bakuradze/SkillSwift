import express from "express";
import dotenv from "dotenv";
dotenv.config();
import connectDB from "./config/db.js";
connectDB();

const port = process.env.PORT || 5000;

const app = express();

app.get("/api/test", (req, res) => {
  res.send({ message: "Server Online" });
});

app.listen(port, () => console.log(`Server is online on port: ${port}`));
