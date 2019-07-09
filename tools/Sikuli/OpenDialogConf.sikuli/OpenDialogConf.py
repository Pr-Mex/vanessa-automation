if not exists(Pattern("in.png").similar(0.60)):
    exit(1)
click(Pattern("in.png").similar(0.60))
sleep(0.5)
exit(0)
