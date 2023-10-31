import os
import re
import requests

# Function to download an image from a given URL
def download_image(url, folder):
    filename = url.split("/")[-1]
    filepath = os.path.join(folder, filename)
    response = requests.get(url)
    if response.status_code == 200:
        with open(filepath, "wb") as file:
            file.write(response.content)
        print(f"Downloaded: {filename}")
    else:
        print(f"Failed to download: {filename}")

# CSS file path
css_file = "style-newsunrun-three-bfb6e31d.css"

# Folder to save the downloaded images
download_folder = "downloaded_images"

# Create the download folder if it doesn't exist
if not os.path.exists(download_folder):
    os.makedirs(download_folder)

# Read the CSS file
with open(css_file, "r") as file:
    css_content = file.read()

# Find all URL references to images in the CSS file
image_urls = re.findall(r"url\(['\"]?([^'\")]+)['\"]?\)", css_content)

# Download each image
for url in image_urls:
    if url.startswith("http"):
        download_image(url, download_folder)
    else:
        full_url = f"https://solarpanels.sunrun.com/{url}"
        download_image(full_url, download_folder)
