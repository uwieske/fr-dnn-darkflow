"""
Flask Serving
This file is a sample flask app that can be used to test the DL model with an API.
This app does the following:
    - accepts a json payload (image data and other meta data)
    - extract from the payload image data
    - forward image data and feed it to the DL net
    - process the response from the DL net by packing the DL response to its response and
     return the response to the client
"""

import base64
import io

import cv2
import numpy as np
from PIL import Image
from flask import Flask, request, Response
from darkflow.predictor import predict
from raven.utils import json
from werkzeug.exceptions import BadRequest

app = Flask(__name__)


@app.route('/detect', methods=['POST'])
def detect():
    if not request.json:
        return BadRequest("Payload (content) not present in request")

    requestPayload = request.json
    print(request.data)
    comdelim = requestPayload['data'].find(",")
    base64Image = requestPayload['data'][comdelim + 1:len(requestPayload['data'])]
    imgdata = base64.b64decode(base64Image)
    image = Image.open(io.BytesIO(imgdata))
    img = cv2.cvtColor(np.array(image), cv2.COLOR_BGR2RGB)

    # send image data to DL net
    result = predict(img)

    # create response
    data = result
    js = json.dumps(data)
    res = Response(js, status=200, mimetype='application/json')
    print(res.data)
    return res


if __name__ == '__main__':
    app.run(host='0.0.0.0')
