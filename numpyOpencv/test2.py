
import numpy as np

import cv2

#read gray scale image
a=cv2.imread("f1.jpg",0)
b=cv2.imread("f2.jpg",0)

#convert uint8 to int32

a1=np.int32(a)
b1=np.int32(b)
# create c to store results
c=np.zeros((np.size(a1,0),np.size(a1,1)),dtype=np.int32)

import numpyOpencv

# a1-b1, results are stored in c
numpyOpencv.imgSubtract(a1,b1,c)

# convert int32 to uint8 for openCV(to show)
c1=np.uint8(c)

cv2.namedWindow("image")
cv2.imshow("image",c1)
# wait for keyborad input to close window
cv2.waitKey(0)

