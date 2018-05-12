Found = 0
if exists(Pattern("06narwbCJryx.png").targetOffset(-159,0)):
    click(Pattern("06narwbCJryx.png").targetOffset(-159,0))
    Found = 1
if exists(Pattern("O5JIBCIZbCr1.png").targetOffset(-194,-2)):
    click(Pattern("O5JIBCIZbCr1.png").targetOffset(-194,-2))
    Found = 1

if Found == 0:
    exit(1)
    
sleep(1)
exit(0)


