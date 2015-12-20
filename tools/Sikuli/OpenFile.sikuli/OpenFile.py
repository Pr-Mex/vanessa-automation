import sys
path = sys.argv[1]
click(Pattern("MdaainaHIFIH.png").targetOffset(36,0))
sleep(1)
paste(path )
sleep(1)
type(Key.ENTER)
exit(0)


