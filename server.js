const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000; // Use the PORT environment variable provided by Cloud Foundry, default to 3000 if not set

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
