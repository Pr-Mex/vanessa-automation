
&НаКлиенте
Процедура СorrectLine(Команда)
	
	StringNavigationLinks = StrReplace(StringNavigationLinks, "'", "");
	StringProcessed = "";
	For Index = 1 To StrLineCount(StringNavigationLinks) Do
		СurrentLine = StrGetLine(StringNavigationLinks, Index);
		If Left(СurrentLine, 10) = "e1cib/data" Then
			StringProcessed = StringProcessed + ?(IsBlankString(StringProcessed), СurrentLine, Chars.LF + СurrentLine);	
		EndIf;
	EndDo;
    StringNavigationLinks = StringProcessed;
	
КонецПроцедуры

&НаКлиенте
Процедура СloseWindowOk(Команда)

	Close(StringNavigationLinks);
	
КонецПроцедуры

&НаКлиенте
Процедура СloseWindowCancel(Команда)

	Close();

КонецПроцедуры
