if exists("1492761928555.png"):
    findAll("1492761928555.png")
elif exists("1543849229768.png"):
    findAll("1543849229768.png")

    
mm = SCREEN.getLastMatches()
while mm.hasNext(): # loop as long there is a first and more matches
    TekMatch = mm.next()
#    print "found: ", TekMatch   # access the next match in the row
    location = TekMatch.getTarget()
    print "match",";",location.x,";",location.y
#    click(location)
#    sleep(1)
#    print mm.x
#    t1= capture(mm.getX(), mm.getY(), mm.getW(), mm.getH())