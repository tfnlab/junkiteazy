import requests
from bs4 import BeautifulSoup
import os
import urllib.parse

def download_asset(url, asset_url):
    # Get the asset file name from the URL
    file_name = os.path.basename(urllib.parse.urlsplit(asset_url).path)
    # Create the file path to save the asset
    file_path = os.path.join('assets', file_name)
    # Make sure the 'assets' directory exists
    os.makedirs('assets', exist_ok=True)

    # Download the asset file
    response = requests.get(asset_url)
    with open(file_path, 'wb') as file:
        file.write(response.content)

    print(f"Downloaded: {file_name}")

def download_assets_from_url(url):
    # Send a GET request to the URL
    response = requests.get(url)
    # Create a BeautifulSoup object with the response text
    soup = BeautifulSoup(response.text, 'html.parser')

    # Find all <img> tags and download the corresponding image assets
    img_tags = soup.find_all('img')
    for img in img_tags:
        img_url = img.get('src')
        if img_url:
            asset_url = urllib.parse.urljoin(url, img_url)
            download_asset(url, asset_url)

    # Find all <link> tags with 'stylesheet' rel attribute and download the corresponding CSS assets
    css_tags = soup.find_all('link', rel='stylesheet')
    for css in css_tags:
        css_url = css.get('href')
        if css_url:
            asset_url = urllib.parse.urljoin(url, css_url)
            download_asset(url, asset_url)

    # Find all <script> tags and download the corresponding JS assets
    script_tags = soup.find_all('script')
    for script in script_tags:
        script_url = script.get('src')
        if script_url:
            asset_url = urllib.parse.urljoin(url, script_url)
            download_asset(url, asset_url)

    # Save the source file as index.html
    with open('index.html', 'w', encoding='utf-8') as file:
        file.write(response.text)

    print("Downloaded: index.html")

# Usage example
url = 'https://solarpanels.sunrun.com/p009/ca/losangeles/'
download_assets_from_url(url)
