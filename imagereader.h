#ifndef IMAGEREADER_H
#define IMAGEREADER_H

//#include <QObject>
/*#include <QImage>
#include <QDebug>
#include <QQuickImageProvider>


class ImageReader :  public QQuickImageProvider
{
public:

   ImageReader()
        :
          QQuickImageProvider(QQuickImageProvider::Pixmap)
    {
    }

    virtual ~ImageReader()
    {}




    QPixmap requestPixmap(const QString &id, QSize *size, const QSize &requestedSize)
    {
        int width = 100;
        int height = 50;

        if (size)
            *size = QSize(width, height);
        QPixmap pixmap(requestedSize.width() > 0 ? requestedSize.width() : width,
                       requestedSize.height() > 0 ? requestedSize.height() : height);
        pixmap.fill(QColor(id).rgba());

        return pixmap;
    }

     QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize);
     QImage img;

signals:
     void imageDataRecived(QImage imgData);

public slots:
     void readImageFrom(QString path)
     {


          img = QImage("D:\\Desktop\\wave.jpg");


         qDebug() <<  " VAAVV" <<  img.width()
                   << img.height() <<  " \n";


         //emit imageDataRecived(img);



     }
};

#endif // IMAGEREADER_H
*/
