from java.awt import Robot
robot = Robot()

DirectionStr = sys.argv[1]
# up=1 or down=-1
direction = -1
if DirectionStr == 'up':
    direction = 1
    
Kol = int(sys.argv[2])

keyDown(Key.CTRL)
sleep(0.1)
for x in range(0, Kol):
  robot.mouseWheel(direction)
  sleep(0.1)

keyUp()
  