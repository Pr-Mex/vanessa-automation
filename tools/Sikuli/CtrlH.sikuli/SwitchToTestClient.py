kol = 0
while True:
    FindIm = findAll("HF.png") 
    ArrOfImage = list(FindIm)
    KolImages  = len(ArrOfImage)
    print 'KolImages='+ str(KolImages)
    for n in range(0, KolImages):
        t = ArrOfImage[n]
        print 't.x='+ str(t.x)
    if KolImages > 0:
        t = ArrOfImage[KolImages-1]
        print 'click t.x='+ str(t.x)
        click(Location(t.x+5,t.y+5))
        break
    sleep(1)
    kol = kol+1
    if kol > 5:
        exit(1)

exit(0)
