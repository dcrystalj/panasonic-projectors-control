import requests
import win32api as win32
import win32con

from config import *


for p in projectors:

    url = p + 'cgi-bin/power_on.cgi'

    r = requests.post(url, auth=(username, password))

# Rotate screen to normal => 0 degree
device = win32.EnumDisplayDevices(None, 0)
dm = win32.EnumDisplaySettings(device.DeviceName,win32con.ENUM_CURRENT_SETTINGS)
dm.DisplayOrientation = win32con.DMDO_DEFAULT
win32.ChangeDisplaySettingsEx(device.DeviceName,dm)

