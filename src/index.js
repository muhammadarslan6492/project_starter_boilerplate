import Server from './core/app';
import './core/env';
import Socket from './core/socket';

const server = new Server();
const httpServer = server.getHttpServer();
const socketServer = new Socket(httpServer);
server.listen(process.env.PORT);

export default socketServer;
