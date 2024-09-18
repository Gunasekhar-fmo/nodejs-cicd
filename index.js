import express, { urlencoded, json } from 'express';
const app = express();

app.use(urlencoded({ extended: true }));
app.use(json());

app.get('/', (req, res) => res.send('Dockerizing Node Application'));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));