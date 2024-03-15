#ifndef GPTSERVER_H
#define GPTSERVER_H

#include <QObject>
#include <QTcpServer>
#include <QTcpSocket>
#include <QHostAddress>
#include <QTimer>

class gptserver: public QObject
{
    Q_OBJECT
public:
    explicit gptserver(QObject *parent =nullptr);
    //To start a server
    Q_INVOKABLE void startServer();

signals:
    void messageReceived(QString message);
    //to know if we received a message

private slots:
    void newConnection();
    void readyRead();
    void checkForNewConnection();
    //loop to chekc new connection

private:
    QTcpServer *tcpServer;
    QTcpSocket *clientSocket;
    QTimer *connectionTimer;
};

#endif // GPTSERVER_H
