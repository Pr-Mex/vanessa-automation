if Env.isLockOn(Key.NUM_LOCK):
    nlZap=True
else:
    nlZap=False
if nlZap: type(Key.NUM_LOCK)

keyDown(Key.SHIFT)
sleep(0.5)

type(Key.END)
sleep(0.5)
keyUp()

if nlZap: type(Key.NUM_LOCK)

exit(0)

