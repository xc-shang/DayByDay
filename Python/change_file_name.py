import os 

dir = 'E:\\'
for fname in os.listdir(dir):
    if (fname[0] in '0123' and fname.endswith('.mp3')):
        continue
    elif (fname.startswith('曲艺杂谈') and fname.endswith('.mp3')):
        os.rename(dir+fname, dir+'2-'+fname)
    elif (fname.startswith('豫剧名段') and fname.endswith('.mp3')):
        os.rename(dir+fname, dir+'1-'+fname)
    elif (fname.endswith('.mp3')):
        os.rename(dir+fname, dir+'0-'+fname)
    else:
        continue
