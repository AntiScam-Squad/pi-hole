#Working code to download latest domains from polkadot.js
import time
import requests
import json
from datetime import datetime

# Download all.json data
# working
url = requests.get("https://github.com/polkadot-js/phishing/raw/master/all.json")
text = url.text

key = json.loads(text)['deny']
#print(type(key))
#print(key)


# open file in write mode
with open(r'scam.txt', 'w') as fp:
    fp.write("############################################################## \n")  
    fp.write("# AntiScamSquad Block list of crypto scam links \n")
    fp.write("# Last updated: ")
    fp.write(time.strftime("%d-%b-%Y %H:%M:%S %Z"))
    fp.write("\n")
    fp.write("# https://github.com/polkadot-js/phishing/raw/master/all.json \n")        
    fp.write("############################################################## \n")  
    fp.write("\n")
    for l in key:
        # write each item on a new line
        fp.write("%s\n" % l)
    print('Done')