HotKey = sys.argv[1]
Modif = sys.argv[2] 
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