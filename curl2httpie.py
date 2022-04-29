#!/usr/local/opt/python@3.7/bin/python3.7
import pyperclip
from curlipie import curl_to_httpie

curl = pyperclip.paste();

curl = curl.replace("-data-binary","d").replace("--compressed \\","").replace("--insecure","").replace("iPhone","IPHONE");

result = curl_to_httpie(curl)

pyperclip.copy(result.httpie)
