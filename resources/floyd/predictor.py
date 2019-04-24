from darkflow.net.build import TFNet

options = {
    "backup": "/floyd/input/model/darkflow/ckpt/",
    "model": "./cfg/yolo_ukrec.cfg",
    "load": 6000,
    "threshold": 0.5
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
