const request = require('supertest');
const app = require('./index');

describe('GET /', () => {
    it('responds with a message in JSON format', async () => {
        const response = await request(app).get('/');
        expect(response.statusCode).toBe(200);
        expect(response.body).toHaveProperty('message');
    });
});