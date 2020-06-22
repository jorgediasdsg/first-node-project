import express from 'express';

import routes from './routes';

const app = express();

app.get('/', (request, response) => response.json({ message: 'Hello World!' }));

app.listen(3333, () => {
    console.log(' Server start at port 3333 ');
});