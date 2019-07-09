wait(Pattern("1464017836667.png").similar(0.60),60)
if not exists(Pattern("1464017836667.png").similar(0.60)):
    exit(1)    

click(Pattern("1464017836667.png").similar(0.60).targetOffset(18,2))

#type("n",KeyModifier.CTRL)

wait(Pattern("115LIl1lliZn.png").similar(0.60),60)
click(Pattern("115LIl1lliZn.png").similar(0.60))
wait(Pattern("Zufspnmpn2mx.png").similar(0.60),30)
click(Pattern("Zufspnmpn2mx.png").similar(0.60))


sleep(1)
paste("Gherkin")
sleep(1)
type(Key.ENTER)
exit(0)
