path2file = sys.argv[1]
file = open(path2file, 'r')
while True:
    line = file.readline()
    if not line:
        break
    stroka = unicode(line, 'utf-8')
    type('f', KeyModifier.CTRL)
    sleep(1)
    paste(stroka)
    sleep(1)
    type(Key.ENTER)
    sleep(1)
    type(Key.ESC)
    sleep(1)
    type(Key.HOME)
    type(Key.HOME)
    sleep(1)
    type('l', KeyModifier.CTRL)
    break

exit(0)
