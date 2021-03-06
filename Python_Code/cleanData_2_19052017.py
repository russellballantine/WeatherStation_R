import re
import os
import io
import shutil


fobj_out = 'C:\\Users\\ballanr\\.spyder-py3\\Dataset1_Cleaned\\'


def cleanData_asterisk():
    #This section removes asterisk
    os.mkdir('C:\\Users\\ballanr\\.spyder-py3\\Dataset1_temp\\')
    fobj_in = "C:\\Users\\ballanr\\.spyder-py3\\Dataset1\\"
    #rootdir = "C:\\Users\\ballanr\\.spyder-py3\\Proj1\\Dataset1"
    fobj_out = 'C:\\Users\\ballanr\\.spyder-py3\\Dataset1_temp\\'

    i = 0
    for root, dirs, files in os.walk(fobj_in):
        for filename in files:
            with open(os.path.join(root,filename),'r') as fh:
                with io.open(fobj_out + str(i) + ".txt", 'w') as fn:
                    for line in fh:
                        line = re.sub('[\*]','',line)
                        fn.write(line)
                        i = i + 1
                        
                        
                        
                        
def file_rename():
    
    stations = ['Aberporth','Armagh','Ballypatrick_Forest','Bradford','Braemar','Camborne','Cambridge_NIAB','Cardiff_Bute_Park','Chivenor',
                'Cwmystwyth','Dunstaffnage','Durham','Eastbourne','Eskdalemuir','Heathrow','Hurn','Lerwick','Leuchars','Lowestoft','Manston','Nairn',
                'Newton_Rigg','Oxford','Paisley','Ringway','RossOnWye','Shawbury','Sheffield','Southampton','Stornoway_Airport','Sutton_Bonington',
                'Tiree','Valley','Waddington','Whitby','Wick_Airport','Yeovilton' ]
    
    
    #os.mkdir('C:\\Users\\ballanr\\.spyder-py3\\Dataset1_temp\\')           
    root_src_dir = 'C:\\Users\\ballanr\\.spyder-py3\\Dataset1_temp\\'
    root_dst_dir = 'C:\\Users\\ballanr\\.spyder-py3\\Dataset1_Cleaned\\'
    
    
    for fname in stations:
        for src_dir, dirs, files in os.walk(root_src_dir):
            dst_dir = src_dir.replace(root_src_dir, root_dst_dir, 1)
            for file_ in files:
                src_file = os.path.join(src_dir, file_)
                dst_file = os.path.join(dst_dir, file_)
                shutil.move(src_file, dst_file)
                    
                #print(dst_dir)
            

cleanData_asterisk()                        
file_rename()

        
