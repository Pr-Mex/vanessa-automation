kol = 0
while True:
    if exists(Pattern("DrnaxmaAumuu.png").similar(0.60),5):
        break
    FindIm = findAll("1464643667457.png") 
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
        #click(t1)
        #click(ArrOfImage[KolImages-1])
    sleep(1)
    kol = kol+1
    if kol > 5:
        exit(1)

exit(0)
