// cameracontroller.h
#ifndef CAMERACONTROLLER_H
#define CAMERACONTROLLER_H

#include <QObject>
#include <QCamera>
#include <QMediaRecorder>
#include <QTcpSocket>
#include <QImage>
#include <QBuffer>
#include <QCameraImageCapture>

class CameraController : public QObject
{
    Q_OBJECT
public:
    explicit CameraController(QObject *parent = nullptr);

public slots:
    void startCamera();
    void takePhoto();
    void sendPhoto(const QString &serverAddress, quint16 port);

private slots:
    void photoCaptured(int id, const QImage &preview);
    void imageSaved(int id, const QString &fileName);

private:
    QCamera *m_camera;
    QCameraImageCapture *m_imageCapture;
};

#endif // CAMERACONTROLLER_H
