if exists("1580195068422.png"):
    click("1580195068422.png")


if exists("1580196282023.png"):
    click("1580196282023.png")
    
    
    
click("1580193456450.png")
sleep(1)
click("1580193473300.png")
sleep(1)
click("1580193506111.png")

sleep(1)

click("1580193456450.png")
click("1580193641655.png")
click("1580193668585.png")
click(Pattern("1580193691183.png").similar(0.60).targetOffset(-125,1))
if exists(Pattern("1580193722709.png").similar(0.77).targetOffset(-35,0)):
    click(Pattern("1580193722709.png").similar(0.77).targetOffset(-35,0))

if exists(Pattern("1580801201748.png").similar(0.80)):
    click(Pattern("1580801201748.png").similar(0.80).targetOffset(-40,0))


click(Pattern("1580193738511.png").similar(0.80).targetOffset(-41,0))
click(Pattern("1580193761791.png").similar(0.75).targetOffset(-40,-1))
click(Pattern("1580193778893.png").similar(0.75).targetOffset(-49,1))

click("1580193795299.png")
click("1580193805208.png")




exit(0)