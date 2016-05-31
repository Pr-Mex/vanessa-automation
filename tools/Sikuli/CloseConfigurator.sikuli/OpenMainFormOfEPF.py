if not exists(Pattern("___xQI.png").similar(0.60)):
    exit(1)
click(Pattern("___xQI.png").similar(0.60).targetOffset(16,0))
sleep(1)
if exists("Pupma.png"):
    doubleClick("Pupma.png")
    
exit(0)
