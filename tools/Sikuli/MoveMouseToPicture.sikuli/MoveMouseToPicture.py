PictureToClick = sys.argv[1]

Find = 0
if Find == 0:
    if exists(Pattern(PictureToClick).similar(0.70)):
        hover(Pattern(PictureToClick).similar(0.70))
        Find = 1


if Find == 0:
    if exists(Pattern(PictureToClick).similar(0.60)):
        hover(Pattern(PictureToClick).similar(0.60))
        Find = 1


if Find == 0:
    if exists(Pattern(PictureToClick).similar(0.50)):
        hover(Pattern(PictureToClick).similar(0.50))
        Find = 1


exit(0)
