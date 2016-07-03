type(Key.HOME)
sleep(1)
KolStrok = int(sys.argv[1])

if Env.isLockOn(Key.NUM_LOCK):
    nlZap=True
else:
    nlZap=False
if nlZap: type(Key.NUM_LOCK)

keyDown(Key.SHIFT)
sleep(0.5)
for n in range(0, KolStrok):
    type(Key.DOWN)
    sleep(0.1)

keyUp()

if nlZap: type(Key.NUM_LOCK)

exit(0)
