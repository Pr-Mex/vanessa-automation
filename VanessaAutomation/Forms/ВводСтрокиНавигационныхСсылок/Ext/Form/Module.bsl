
&AtClient
Procedure СorrectLine(Command)
	
	StringNavigationLinks = StrReplace(StringNavigationLinks, "'", "");
	StringProcessed = "";
	For Index = 1 To StrLineCount(StringNavigationLinks) Do
		СurrentLine = StrGetLine(StringNavigationLinks, Index);
		If Left(СurrentLine, 10) = "e1cib/data" Then
			StringProcessed = StringProcessed + ?(IsBlankString(StringProcessed), СurrentLine, Chars.LF + СurrentLine);	
		EndIf;
	EndDo;
    StringNavigationLinks = StringProcessed;
	
EndProcedure

&AtClient
Procedure СloseWindowOk(Command)

	Close(StringNavigationLinks);
	
EndProcedure

&AtClient
Procedure СloseWindowCancel(Command)

	Close();

EndProcedure
