kol = 0
while True:
    FindIm = findAll("1465210805287.png") 
    ArrOfImage = list(FindIm)
    KolImages  = len(ArrOfImage)
    id = -1
    maxX = -1
    print 'KolImages='+ str(KolImages)
    for n in range(0, KolImages):
        t = ArrOfImage[n]
        print 't.x='+ str(t.x)
        if t.x > maxX:
            maxX = t.x
            id = n
    if KolImages > 0:
        t = ArrOfImage[id]
        print 'click t.x='+ str(t.x)
        click(Location(t.x+5,t.y+5))
        break
    sleep(1)
    kol = kol+1
    if kol > 5:
        exit(1)

exit(0)
