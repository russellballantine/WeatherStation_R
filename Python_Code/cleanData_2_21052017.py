#This Python class will do the initial cleaning and prep work to prepare for inclusion in an R dataset
#THis script does the following:
#   Creates the directory structure for the dirty and clean data.
#   renames files 'stationid_latitude'
#   removes asterisks, hashes,words not needed, and the 7 line header at the beginning of the files. 



import re
import os
import io
import shutil
import glob
import sys


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
            



def file_rename2():
    
    
    filenames = glob.glob('C:\\Users\\ballanr\\.spyder-py3\\Dataset1_Cleaned\\*.txt')
    for f in filenames:
        currfile = open(f,'rb')
        name = currfile.readline()
        name = name.decode("utf-8")
        name = name.replace('\n','')
        name = name.replace('\r','')
        name = name.replace('/','')
        currfile.close()
        os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,name + ".txt"))
        
def latitude_name():
    
    filenames = glob.glob('C:\\Users\\ballanr\\.spyder-py3\\Dataset1_Cleaned\\*.txt')
    for f in filenames:
        if 'Aberporth' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Aberporth_52.139' + ".txt"))
        elif 'Armagh' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Armagh_54.352' + ".txt"))
        elif 'Ballypatrick' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Ballypatrick_55.181' + ".txt"))
        elif 'Bradford' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Bradford_53.813' + ".txt"))
        elif 'Braemar' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Braemar_57.006' + ".txt"))
        elif 'Camborne' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Camborne_50.218' + ".txt"))
        elif 'Cambridge' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Cambridge_52.245' + ".txt"))
        elif 'Cardiff' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Cardiff_51.488' + ".txt"))
        elif 'Chivenor' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Chivenor_51.089' + ".txt"))
        elif 'Cwmystwyth' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Cwmystwyth_52.358' + ".txt"))
        elif 'Dunstaffnage' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Dunstaffnage_56.451' + ".txt"))
        elif 'Durham' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Durham_54.768' + ".txt"))
        elif 'Eastbourne' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Eastbourne_50.762' + ".txt"))
        elif 'Eskdalemuir' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Eskdalemuir_55.311' + ".txt"))
        elif 'Heathrow' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Heathrow_51.479' + ".txt"))
        elif 'Hurn' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Hurn_50.779' + ".txt"))
        elif 'Lerwick' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Lerwick_60.139' + ".txt"))
        elif 'Leuchars' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Leuchars_56.337' + ".txt"))
        elif 'Lowestoft' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Lowestoft_52.483' + ".txt"))
        elif 'Manston' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Manston_51.346' + ".txt"))
        elif 'Nairn' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Nairn_57.593' + ".txt"))
        elif 'Newton' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Newton_Rigg_54.670' + ".txt"))
        elif 'Oxford' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Oxford_51.761' + ".txt"))
        elif 'Paisley' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Paisley_55.846' + ".txt"))
        elif 'Ringway' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Ringway_53.356' + ".txt"))
        elif 'Ross' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Ross_Wye_51.911' + ".txt"))
        elif 'Shawbury' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Shawbury_52.794' + ".txt"))
        elif 'Sheffield' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Sheffield_53.381' + ".txt"))
        elif 'Southampton' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Southampton_50.898' + ".txt"))
        elif 'Stornoway' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Stornoway_58.214' + ".txt"))
        elif 'Sutton' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Sutton_Bonington_52.833' + ".txt"))
        elif 'Tiree' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Tiree_56.500' + ".txt"))
        elif 'Valley' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Valley_53.252' + ".txt"))
        elif 'Waddington' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Waddington_53.175' + ".txt"))
        elif 'Whitby' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Whitby_54.481' + ".txt"))
        elif 'Wick' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Wick_58.454' + ".txt"))
        elif 'Yeovilton' in f:
            os.rename(os.path.join(fobj_out,f),os.path.join(fobj_out ,'Yeovilton_51.006' + ".txt"))
            
def head_off():
     filenames = glob.glob('C:\\Users\\ballanr\\.spyder-py3\\Dataset1_Cleaned\\*.txt')
     for f in filenames:
         with open(f, 'r') as fin:
             data = fin.read().splitlines(True)
         with open(f, 'w') as fout:
             fout.writelines(data[7:])

                 
def string_remove():
    #This section removes any remaining string or characters not part of the data set. 
    #Add s = replace("string",replacement) as required
    replacement = ""
    for dname, dirs, files in os.walk(fobj_out):
        for fname in files:
            fpath = os.path.join(fobj_out, fname)
            with open(fpath) as f:
                s = f.read()
                s = s.replace("Provisional", replacement)
                s = s.replace("#",replacement)
                s = s.replace("Site closed",replacement)
                with open(fpath, "w") as f:
                    f.write(s)


    

                          

        
        
        
        
#cleanData_asterisk()                        
#file_rename()
#file_rename2()
#latitude_name()
#head_off()
#string_remove()

    

