#!/usr/bin/env python

from urllib.request import FancyURLopener
#from urllib.request import urlopen

email = '' # @gmail.com can be left out
password  = ''

url = 'https://%s:%s@mail.google.com/mail/feed/atom' % (email, password)

opener = FancyURLopener()
page = opener.open(url)

contents = page.read().decode('utf-8')

ifrom = contents.index('<fullcount>') + 11
ito   = contents.index('</fullcount>')

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

fullcount = contents[ifrom:ito]
if fullcount == '0':
	#print(bcolors.WARNING+'No New Emails'+bcolors.ENDC)
	print('No New Emails')
else:
	print(fullcount+' UNREAD Emails')
