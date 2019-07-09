import json

PictureToFind = sys.argv[1]
res = 0
if exists(Pattern(PictureToFind).similar(0.60)):
    res = 1
    
temp_name = sys.argv[2]

#temp_name = 'c:/temp/111.json'
#match = find("1547221183087.png")

data = {} 
data['exists'] = res

with open(temp_name, 'w') as outfile:
    json.dump(data, outfile)
exit(0)    
#print ("X="+str(match.x))