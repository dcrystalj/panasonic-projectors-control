import requests

from config import *


for p in projectors:

    url = p + 'cgi-bin/power_on.cgi'

    r = requests.post(url, auth=(username, password))
