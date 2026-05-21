const express = require('express');
const connectDB = require('./config/db');
const authRoutes = require('./routes/auth');

require('dotenv').config();

const app = express();

app.use(express.json());
app.use('/api/auth', authRoutes);
const port = process.env.PORT ;

async function startServer() {
    await connectDB();

    app.listen(port, () => {
        console.log(`Server running on port ${port}`);
    });
}

startServer();
