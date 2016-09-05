# -*- coding: utf-8 -*-
import smbclient
smb = smbclient.SambaClient(server="192.168.1.6",share="招聘简历",username='13242', password='snahko', domain='andon.com')
file_list=smb.listdir(u"/iHealth/8月/数据处理工程师/")
for item in file_list:
	print(item)
	smb.download(u"/iHealth/8月/数据处理工程师/"+item,u"./"+item)
