from urllib import request 
from bs4 import BeautifulSoup

url = 'https://www.bbc.co.uk/'
userAgent = {'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36'}

req = request.Request(url,headers=userAgent)
with request.urlopen(req) as r:
    data = BeautifulSoup(r,'html.parser')

title = data.title.string
print(title)

with open(r'/data/scraprtitles.txt','a') as f:
    f.write(title)
