<<<<<<< HEAD
=======
// gptserver.cpp

>>>>>>> d822a80 (done1)
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
<<<<<<< HEAD
=======
    QString base64Data = message;
    QString fileName = "/Users/kaustuvpokharel/Documents/LivingLogic-app/report.pdf";
    sendReceiveAndSaveFile(base64Data, fileName);
>>>>>>> d822a80 (done1)
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

<<<<<<< HEAD
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

=======
void GptServer::sendReceiveAndSaveFile(const QString &dataToSend, const QString &fileName)
{
    if (clientSocket && clientSocket->state() == QTcpSocket::ConnectedState) {
        clientSocket->write(dataToSend.toUtf8());

        if (clientSocket->waitForBytesWritten()) {
            clientSocket->waitForReadyRead();
            QByteArray receivedData;
            while (clientSocket->bytesAvailable() > 0) {
                receivedData += clientSocket->readAll();
            }

            if (!receivedData.isEmpty()) {
                QByteArray decodedData = QByteArray::fromBase64(receivedData);

                qInfo() << "Received Base64 data:" << decodedData;

                QFile file(fileName);
                qInfo() << "Attempting to save file as:" << fileName;
                if (file.open(QIODevice::WriteOnly)) {
                    file.write(receivedData);
                    file.close();
                    qInfo() << "File '" << fileName << "' has been saved.";
                } else {
                    qCritical() << "Failed to save file:" << file.errorString();
                }
            } else {
                qWarning() << "Received empty data from client.";
            }
        } else {
            qCritical() << "Failed to send data to client.";
        }
    } else {
        qWarning() << "Client is not connected.";
    }
}




>>>>>>> d822a80 (done1)
