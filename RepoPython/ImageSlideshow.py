from itertools import cycle
from PIL import Image, ImageTk
import tkinter as tk

root = tk.Tk()
root.title("Image Slideshow Viewer")

#  List of image paths (with commas)
image_path = [
    r"C:\Users\hp\OneDrive\Documents\OneDrive\文档\1012b765-500-3_1.jpg",
    r"C:\Users\hp\OneDrive\Documents\OneDrive\文档\Adizero_EVO_SL_Shoes_White_JS4495_HM5.jpg",
    r"C:\Users\hp\OneDrive\Documents\OneDrive\文档\JR6364-M-adidas-Adios-Pro-4-Hero_952x952.jpg",
    r"C:\Users\hp\OneDrive\Documents\OneDrive\文档\NIKEPEGASUSPREMIUMLV8.png",
    r"C:\Users\hp\OneDrive\Documents\OneDrive\文档\NIKEVOMERO18.png"
]

# Resize the images to 1080x1080
image_size = (1080, 1080)
images = [Image.open(path).resize(image_size) for path in image_path]
photo_images = [ImageTk.PhotoImage(image) for image in images]

label = tk.Label(root)
label.pack()

# Create a cycle of images
slideshow = cycle(photo_images)

def update_image():
    photo_image = next(slideshow)
    label.config(image=photo_image)
    root.after(3000, update_image)  # Schedule next image in 3 seconds

def start_slideshow():
    update_image()

# Play button
play_button = tk.Button(root, text='Play Slideshow', command=start_slideshow)
play_button.pack()

root.mainloop()
