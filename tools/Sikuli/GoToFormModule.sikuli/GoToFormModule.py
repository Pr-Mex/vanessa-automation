FindIm = findAll(Pattern("EIMoaunb.png").similar(0.50)) 
ArrOfImage = list(FindIm)
KolImages  = len(ArrOfImage)
if KolImages == 0:
    exit(1)
t = ArrOfImage[0]
click(Location(t.x+5,t.y+5))
sleep(1)
exit(0)
