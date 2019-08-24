const fastify = require('fastify')({ logger: true });

const PORT = 8080;
const HOST = '0.0.0.0';

fastify.get('/', async (request, reply) => {
	return 'Hello world';
});

const start = async () => {
	try {
		await fastify.listen(PORT);
		fastify.log.info(`Server listening on ${fastify.server.address().port}`);
	} catch (err) {
		fastify.log.error(err);
		process.exit(1);
	}
};

start();
