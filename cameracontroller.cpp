// cameracontroller.cpp
#include "cameracontroller.h"

CameraController::CameraController(QObject *parent) : QObject(parent)
{
    connect(&m_camera, &QCamera::imageCaptured, this, &CameraController::photoCaptured);
}

void CameraController::startCamera()
{
    m_camera.start();
}

void CameraController::takePhoto()
{
    // Start image processing
    m_camera.imageProcessing()->start();
}

void CameraController::sendPhoto(const QString &serverAddress, quint16 port)
{
    // Implement sending photo to server
}

void CameraController::photoCaptured(int requestId, const QImage &image)
{
    Q_UNUSED(requestId);
    Q_UNUSED(image);
    // Optionally handle image capture event
}
