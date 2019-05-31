import os
from PIL import Image

for image in os.listdir("./images/"):
    img = Image.open("./images/" + image).convert("L")
    img.save("./grayscale/" + image)