import json

PictureToFind = sys.argv[1]
match = find(Pattern(PictureToFind).similar(0.60))
temp_name = sys.argv[2]

#temp_name = 'c:/temp/111.json'
#match = find("1547221183087.png")

data = {} 
data['X1'] = match.getTopLeft().x
data['Y1'] = match.getTopLeft().y
data['X2'] = match.getBottomRight().x
data['Y2'] = match.getBottomRight().y

with open(temp_name, 'w') as outfile:
    json.dump(data, outfile)
exit(0)    
#print ("X="+str(match.x))