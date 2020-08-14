HotKey = sys.argv[1]
Modif = sys.argv[2] 

lowerHotKey = str.lower(HotKey.encode('utf-8'))
if lowerHotKey == 'f1':
    HotKey = Key.F1
elif lowerHotKey == 'f2':
    HotKey = Key.F2
elif lowerHotKey == 'f3':
    HotKey = Key.F3
elif lowerHotKey == 'f4':
    HotKey = Key.F4
elif lowerHotKey == 'f5':
    HotKey = Key.F5
elif lowerHotKey == 'f6':
    HotKey = Key.F6
elif lowerHotKey == 'f7':
    HotKey = Key.F7
elif lowerHotKey == 'f8':
    HotKey = Key.F8
elif lowerHotKey == 'f9':
    HotKey = Key.F9
elif lowerHotKey == 'f10':
    HotKey = Key.F10
elif lowerHotKey == 'f11':
    HotKey = Key.F11
elif lowerHotKey == 'f12':
    HotKey = Key.F12
elif lowerHotKey == 'del':
    HotKey = Key.DELETE
elif lowerHotKey == 'delete':
    HotKey = Key.DELETE
elif lowerHotKey == 'left':
    HotKey = Key.LEFT
elif lowerHotKey == 'right':
    HotKey = Key.RIGHT
elif lowerHotKey == 'up':
    HotKey = Key.UP
elif lowerHotKey == 'down':
    HotKey = Key.DOWN
elif lowerHotKey == 'esc':
    HotKey = Key.ESC
elif lowerHotKey == 'end':
    HotKey = Key.END
elif lowerHotKey == 'home':
    HotKey = Key.HOME
elif lowerHotKey == 'tab':
    HotKey = Key.TAB

if Modif == 'win':
    type(HotKey, KeyModifier.WIN)
elif Modif == 'ctrl':
    type(HotKey, KeyModifier.CTRL)
elif Modif == 'alt':
    type(HotKey, KeyModifier.ALT)
elif Modif == 'shift':
    type(HotKey, KeyModifier.SHIFT)
elif Modif == 'no':
    type(HotKey)
else:
    print "wrong modifikator: " + Modif
    exit(1)

exit(0)    