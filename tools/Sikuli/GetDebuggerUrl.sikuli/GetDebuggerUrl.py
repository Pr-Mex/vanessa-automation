if exists("1580195036155.png"):
    click("1580195036155.png")

if exists("1580196313479.png"):
    click("1580196313479.png")
    
    

wait("1580139116047.png",60)
click("1580139135270.png")

click("1580139153268.png")
click("1580139167834.png")
click(Pattern("1580139216233.png").targetOffset(12,23))

sleep(1)

type("c", KeyModifier.CTRL)

sleep(1)

click("1580139310601.png")
click("1580139330423.png")


Clipboard = App.getClipboard();

FileName = sys.argv[1]
#FileName = "C:/Temp/111.txt"

text = Clipboard
f = open(FileName, 'w')

f.write(text)
f.flush()
f.close()

exit(0)

