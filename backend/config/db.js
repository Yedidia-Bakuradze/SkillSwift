import mongoose from "mongoose";
const connectDB = async () => {
  try {
    const connection = mongoose.connect(process.env.MONGODB_URI);
    console.log(
      `Connection has been established: ${(await connection).connection.host}`
    );
  } catch (error) {
    console.log(`Error: ${error.message}`);
    process.exit(1);
  }
};
