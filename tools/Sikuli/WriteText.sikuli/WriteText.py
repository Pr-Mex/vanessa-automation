# Посимвольный вывод символов
def VyvestiStrokuPosimvolno(stroka):
    dlina = len(stroka)
    i = 0
    while i < dlina:
        tekSimvol = stroka[i]
        paste(tekSimvol)
        sleep(0.05)
        type('c', KeyModifier.CTRL)
        i = i + 1
        buf = Env.getClipboard()
        if i == dlina:
            sleep(1)
            continue
        if buf == tekSimvol:
            kkk = 0
            while kkk < 5:
                type('c', KeyModifier.CTRL)
                buf = Env.getClipboard()
                kkk = kkk + 1
                sleep(0.7)
                if buf == '':
                    break
            

# Паузы
ShortBreak = 1
MiddleBreak = 3
BigBreak = 5

step = sys.argv[1]

# Открытие текстового редактора
if step == "1":
    type('r', KeyModifier.WIN)
    type(Key.DELETE)
    sleep(ShortBreak)
#    paste(u"notepad++ -nosession")
    paste(u"code")
    sleep(MiddleBreak)
    type(Key.ENTER)
    sleep(MiddleBreak)
    exit(0)
# Ввод текста
elif step == "2":
    #type('n', KeyModifier.CTRL)
    path2file = sys.argv[2]
    file = open(path2file, 'r')
    while True:
        line = file.readline()
        if not line:
            break
        stroka = unicode(line, 'utf-8')
        VyvestiStrokuPosimvolno(stroka)
    sleep(BigBreak)
    exit(0)
# Сохранение текста
elif step == "3":
    path2VanessaBehavoirFeature = sys.argv[2]
    type('s', KeyModifier.CTRL)
    sleep(2)
    type(Key.DELETE)
    sleep(1)
    paste(path2VanessaBehavoirFeature)
    sleep(1)
    exit(0)
elif step == "4":
    type(Key.ENTER)
    sleep(1)
    type(Key.F4, KeyModifier.CTRL)
    sleep(1)
    type(Key.F4, KeyModifier.ALT)
    sleep(BigBreak)
    exit(0)
    