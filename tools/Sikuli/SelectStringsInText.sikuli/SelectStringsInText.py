type(Key.HOME)
sleep(1)

if len(sys.argv) == 2:
    KolStrok = int(sys.argv[1])
    Napravlenye = 'down'


if len(sys.argv) == 3:
    KolStrok = -int(sys.argv[1])
    Napravlenye = 'up' 

if KolStrok < 0:
   KolStrok = -KolStrok


if Env.isLockOn(Key.NUM_LOCK):
    nlZap=True
else:
    nlZap=False
if nlZap: type(Key.NUM_LOCK)

keyDown(Key.SHIFT)
sleep(0.5)
for n in range(0, KolStrok):
    if Napravlenye == 'up':
        type(Key.UP)
    else:
        type(Key.DOWN)
    sleep(0.1)

keyUp()

if nlZap: type(Key.NUM_LOCK)

exit(0)
