#wait(Pattern("DrnaxmaAumuu.png").similar(0.60),60)
kol = 0
while True:
    if exists(Pattern("DrnaxmaAumuu.png").similar(0.60),5):
        break
    if exists(Pattern("1464643667457.png").similar(0.60),5):
        click(Pattern("1464643667457.png").similar(0.60))
    sleep(1)
    kol = kol+1
    if kol > 5:
        exit(1)

exit(0)
