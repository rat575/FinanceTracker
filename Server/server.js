const express = require('express');
const path = require('path');
require('dotenv').config({ path: path.join(__dirname, '.env') });
const connectDB = require('./config/db');
const authRoutes = require('./routes/auth');

const app = express();

app.use(express.json());
app.use('/api/auth', authRoutes);
const port = process.env.PORT || 3000;

async function startServer() {
    await connectDB();

    app.listen(port, () => {
        console.log(`Server running on port ${port}`);
    });
}

startServer();
