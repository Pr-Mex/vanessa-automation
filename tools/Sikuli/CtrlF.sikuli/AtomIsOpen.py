if not exists(Pattern("1463230028949.png").similar(0.80)):
    exit(1)    

click(Pattern("1463230028949.png").similar(0.80).targetOffset(10,0))

type("n",KeyModifier.CTRL)

click("Edit.png")
wait("SelectGramma.png",30)
click("SelectGramma.png")

sleep(2)
paste("Gherkin-ru")
sleep(1)
type(Key.ENTER)
exit(0)
