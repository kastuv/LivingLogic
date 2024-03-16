#include "gptserver.h"

GptServer::GptServer(QObject *parent) : QObject(parent), tcpServer(new QTcpServer(this)), clientSocket(nullptr)
{
    connect(tcpServer, &QTcpServer::newConnection, this, &GptServer::newConnection);
}

void GptServer::startServer()
{
    if (!tcpServer->isListening()) {
        if (!tcpServer->listen(QHostAddress::Any, 12345)) {
            qCritical() << "Failed to start server. Error:" << tcpServer->errorString();
            return;
        }
        qInfo() << "Server started, listening on port 12345.";
    } else {
        qWarning() << "Server is already running.";
    }
}

void GptServer::newConnection()
{
    if (!clientSocket) {
        clientSocket = tcpServer->nextPendingConnection();
        connect(clientSocket, &QTcpSocket::readyRead, this, &GptServer::readyRead);
        qInfo() << "Connected to client.";
    } else {
        qWarning() << "Rejecting connection, already connected to a client.";
        QTcpSocket *socket = tcpServer->nextPendingConnection();
        socket->close();
        socket->deleteLater();
    }
}

void GptServer::readyRead()
{
    if (clientSocket && clientSocket->bytesAvailable() > 0) {
        QByteArray data = clientSocket->readAll();//acts as a buffer
        QString message = QString::fromUtf8(data);
        emit messageReceived(message);
        processClientMessage(message); // Assuming you want to process the message
    }
}

void GptServer::processClientMessage(const QString &message) {
    qDebug() << "Received message from client:" << message;
    m_message = message;
}

void GptServer::sendToClient(const QString &message)
{
    if (clientSocket && clientSocket->state() == QTcpSocket::ConnectedState) {
        QByteArray byteArray = message.toUtf8();
        clientSocket->write(byteArray);
    } else {
        qWarning() << "Client is not connected.";
    }
}

void GptServer::sendPhoto(const QString &photoPath)
{
    if (!clientSocket) {
        qWarning() << "No client connected.";
        return;
    }

    QString img = "image::" + photoPath;
    qInfo()<<photoPath<< " Bhaskar";
    if (clientSocket && clientSocket->state() == QTcpSocket::ConnectedState) {
        QByteArray byteArray = img.toUtf8();
        clientSocket->write(byteArray);
    }
}

