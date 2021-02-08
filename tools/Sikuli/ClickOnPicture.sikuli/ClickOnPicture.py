PictureToClick = sys.argv[1]

Find = 0
if Find == 0:
    if exists(Pattern(PictureToClick).similar(0.70)):
        click(Pattern(PictureToClick).similar(0.70))
        Find = 1

if Find == 0:
    if exists(Pattern(PictureToClick).similar(0.60)):
        click(Pattern(PictureToClick).similar(0.60))
        Find = 1

if Find == 0:		
    click(Pattern(PictureToClick).similar(0.50))

exit(0)
	