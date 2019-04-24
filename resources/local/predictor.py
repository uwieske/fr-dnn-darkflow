from darkflow.net.build import TFNet

options = {
    "labels": "/Users/uwieske/ukrec-res/job66/labels.txt",
    "backup": "/Users/uwieske/ukrec-res/job66/ckpt/",
    "model": "/Users/uwieske/ukrec-res/job66/yolo_ukrec.cfg",
    "load": 6000,
    "threshold": 0.3
}

tfnet = TFNet(options)


def predict(img):
    imgcv = img
    result = tfnet.return_predict(imgcv)
    print(result)
    return result


def main():
    predict()


if __name__ == "__main__":
    # execute only if run as a script
    main()
