import requests
import json



def readfile_token():
    f = open("/Users/USER1/.jenkins/workspace/DGL/Resource/access_token.json", "r")
    global  access
    access = f.read()

def readfile_idlist():
    f = open("/Users/USER1/.jenkins/workspace/DGL/Resource/idlist.json", "r")
    global  idlist
    idlist = f.read()

readfile_idlist()
readfile_token()


url = "http://139.59.126.160/api/v1/oe/" + idlist

payload = ""
headers = {
    'x-access-token': access,
    'Content-Type': "application/x-www-form-urlencoded",
    'cache-control': "no-cache",
    'Postman-Token': "dc703b11-a910-421f-a56c-92f0d1217ada"
    }

response = requests.request("GET", url, data=payload, headers=headers)

with open('report.json', 'w') as outf:
    outf.write(response.content)

with open('report.json') as f:
    data = json.load(f)

    soi = data['result']['company']['address']['soi']
print(soi)


