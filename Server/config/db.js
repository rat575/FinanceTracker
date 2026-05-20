const mongoose = require('mongoose');

async function connectDB() {
    try {
        const uri = process.env.URI;

        if (!uri) {
            throw new Error('URI is missing from Server/.env');
        }

        await mongoose.connect(uri);
        console.log('Connected to MongoDB');
    } catch (err) {
        console.error('Database connection failed:', err);
        process.exit(1);
    }
}

module.exports = connectDB;
