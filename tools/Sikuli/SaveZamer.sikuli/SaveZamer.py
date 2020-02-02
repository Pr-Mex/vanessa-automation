if exists("1580198185757.png"):
    click("1580198185757.png")

if exists("1580198209410.png"):
    click("1580198209410.png")

click("1580198233333.png")
click("1580198252352.png")

sleep(1)

type("a", KeyModifier.CTRL)    

sleep(1)

click("1580198301825.png")

sleep(3)

Path = sys.argv[1]
#Path = "C:\Commons\Zamer\pff\UF"

App.setClipboard(Path)

sleep(1)

type("v", KeyModifier.CTRL)

sleep(1)

type(Key.ENTER)

sleep(1)

while True:
   if exists("1580198667799.png"):
       click("1580198667799.png")
       sleep(3)
   else:
       break

click("1580198803823.png")

sleep(1)

click("1580198817966.png")
click("1580198835113.png")


       
exit(0)       

