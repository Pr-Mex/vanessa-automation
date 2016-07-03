Var CreatedInWindowAndFormVariables;
Var Indent;

Function Convert(TextToConvert) Export

	Reader = New XMLReader();
	Reader.SetString(TextToConvert);

	CreatedProcedures = New Array();
	CreatedInWindowAndFormVariables = New Map();

	Writer = New TextDocument;

	Reader.MoveToContent();
	Indent = 0;

	// Converting the file
	If Reader.NodeType = XMLNodeType.StartElement And
		Reader.Name = "uilog" Then

		ConvertIntoScenario(Reader, Writer);

	EndIf;
	
	Return Writer.GetText();

EndFunction

////////////////////////////////////////////////////////////////////////////////
// AUXILIARY PROCEDURES AND FUNCTIONS
Procedure AddLine(Writer, OutputString, AddGoTo = False)

	// Adding required number of spaces to the string from the left 
	Result = "";
	For Index = 1 To Indent Do
		Result = Result + "	";
	EndDo;
	Result = Result + OutputString;

	// Adding the string to the end of the result
	Writer.AddLine(Result);
	If AddGoTo Then
		Writer.AddLine("");
	EndIf;

EndProcedure

Procedure InsertLine(Writer, LineNumber, OutputString)

	// Adding required number of spaces to the string from the left
	Result = "";
	For Index = 1 To Indent Do
		Result = Result + "	";
	EndDo;
	Result = Result + OutputString;

	// Adding the string to the result
	Writer.InsertLine(LineNumber, Result);

EndProcedure

Function DoubleQuotationMarks(OutputString)

	// Doubling quotation marks for correctness during export to a file.
	Return StrReplace(OutputString, """", """""");

EndFunction

Function SearchValuesForTitle(Title, Name, Val SearchType)

	// Search 'by title' or 'by name and title'
	If SearchType = 0 Or SearchType = 2 Then
		If Not Title = Undefined Then
			Return """" + DoubleQuotationMarks(Title) + """";
		EndIf;
		If SearchType = 2 And Name = Undefined Then
			Raise NStr("en = 'Specify the title or name of the object'; ru = 'У объекта должны быть заполнены заголовок или имя'");
		EndIf;
		Return "";
	// Search 'by name'
	ElsIf SearchType = 1 Then
		If Name = Undefined Then
			Return """" + DoubleQuotationMarks(Title) + """";
		EndIf;
		Return "";
	// Search 'by name and title'
	Else
		Raise NStr("en = 'Unexpected object search type: '; ru = 'Неожиданный тип поиска объектов: '") + ObjectSearch;
	EndIf;

EndFunction

Function SearchValuesForName(Title, Name, Val SearchType, TitleEmpty)

	If (SearchType = 0 And TitleEmpty) Then
		SearchType = 1;
	EndIf;

	// Search 'by title'
	If SearchType = 0 Then
		Return "";
	// Search 'by name' or 'by name and title'
	ElsIf SearchType = 1 Or SearchType = 2 Then
		If Not Name = Undefined Then
			Return """" + Name + """";
		EndIf;
		If SearchType = 2 And Title = Undefined Then
			Raise NStr("en = 'Specify the title or name of the object'; ru = 'У объекта должны быть заполнены заголовок или имя'");
		EndIf;
		Return "";
	Else
		Raise NStr("en = 'Unexpected object search type: '; ru = 'Неожиданный тип поиска объектов: '") + ObjectSearch;
	EndIf;

EndFunction

Function ConvertTitleIntoVariableName(ObjectType, ObjectTitle)

	// Variable name starts with a type name
	If ObjectType = "ClientApplicationWindow" Then

		VariableName = ? (ScriptVariant = "en", "ClientWindow", "ОкноПриложения");
	ElsIf ObjectType = "Form" Then
		VariableName = ? (ScriptVariant = "en", "Form", "Форма");
	ElsIf ObjectType = "FormField" Then
		VariableName = ? (ScriptVariant = "en", "Field", "Поле");
	ElsIf ObjectType = "FormButton" Then
		VariableName = ? (ScriptVariant = "en", "Button", "Кнопка");
	ElsIf ObjectType = "FormGroup" Then
		VariableName = ? (ScriptVariant = "en", "Group", "Группа");
	ElsIf ObjectType = "FormTable" Then
		VariableName = ? (ScriptVariant = "en", "Table", "Таблица");
	ElsIf ObjectType = "FormDecoration" Then
		VariableName = ? (ScriptVariant = "en", "Decoration", "Декорация");
	ElsIf ObjectType = "CommandInterface" Then
		VariableName = ? (ScriptVariant = "en", "CommandInterface", "КомандныйИнтерфейс");
	ElsIf ObjectType = "CommandInterfaceGroup" Then
		VariableName = ? (ScriptVariant = "en", "CommandInterfaceGroup", "ГруппаКомандногоИнтерфейса");
	ElsIf ObjectType = "CommandInterfaceButton" Then
		VariableName = ? (ScriptVariant = "en", "CommandInterfaceButton", "КнопкаКомандногоИнтерфейса");
	ElsIf ObjectType = "setFileDialogResult" Then
		VariableName = ? (ScriptVariant = "en", "setFileDialogResult", "РезультатОткрытияФайла");
	Else
		Raise NStr("en = 'Unknown node: '; ru = 'Неопознанный узел '") + ObjectType;
	EndIf;

	// Cutting characters except letters and digits
	PreviousCharIsSpace = True;
	StringLength = StrLen(ObjectTitle);
	For Index = 1 To StringLength Do
		NextChar = Mid(ObjectTitle,Index, 1);
		If IsLetter(NextChar) Or IsDigit(NextChar) Then
			VariableName = VariableName + ? (PreviousCharIsSpace, Upper(NextChar), NextChar);
			PreviousCharIsSpace = False;
		Else
			PreviousCharIsSpace = True;
		EndIf;
	EndDo;

	Return VariableName;

EndFunction

Function IsDigit(Char)

	Code = CharCode(Char);
	Return Code >= 48 And Code <= 57;

EndFunction

Function IsLetter(Char)

	// All non-literal character codes are considered equal
	Return CharCode(Lower(Char)) <> CharCode(Upper(Char));

EndFunction

////////////////////////////////////////////////////////////////////////////////
// Convert procedures
Procedure ConvertIntoScenario(Reader, Writer)

	If GenerateClientConnectionScript Then

		AddLine(Writer, ? (ScriptVariant = "en", "&AtClient", "&НаКлиенте"));
		AddLine(Writer, ? (ScriptVariant = "en", "Procedure ", "Процедура ") + MainProcedureName + "()", True);

		Indent = Indent + 1;

		AddLine(Writer, ? (ScriptVariant = "en", "TestApplication = New TestedApplication();", "ТестовоеПриложение = Новый ТестируемоеПриложение();"));
		AddLine(Writer, ? (ScriptVariant = "en", "TimeOut = CurrentDate() + 60;", "ВремяОкончанияОжидания = ТекущаяДата() + 60;"));
		AddLine(Writer, ? (ScriptVariant = "en", "Connected = False;", "Подключен = Ложь;"));
		AddLine(Writer, ? (ScriptVariant = "en", "ConnectionErrorDescription = """";", "ОписаниеОшибкиСоединения = """";"));
		AddLine(Writer, ? (ScriptVariant = "en", "While Not CurrentDate() >= TimeOut Do", "Пока Не ТекущаяДата() >= ВремяОкончанияОжидания Цикл"));
		AddLine(Writer, ? (ScriptVariant = "en", "	Try", "	Попытка"));
		AddLine(Writer, ? (ScriptVariant = "en", "		TestApplication.Connect();", "		ТестовоеПриложение.УстановитьСоединение();"));
		AddLine(Writer, ? (ScriptVariant = "en", "		Connected = True;", "		Подключен = Истина;"));
		AddLine(Writer, ? (ScriptVariant = "en", "		Break;", "		Прервать;"));
		AddLine(Writer, ? (ScriptVariant = "en", "	Except", "	Исключение"));
		AddLine(Writer, ? (ScriptVariant = "en", "		ConnectionErrorDescription = ErrorDescription();", "		ОписаниеОшибкиСоединения = ОписаниеОшибки();"));
		AddLine(Writer, ? (ScriptVariant = "en", "	EndTry;", "	КонецПопытки;"));
		AddLine(Writer, ? (ScriptVariant = "en", "EndDo;", "КонецЦикла;"));
		AddLine(Writer, ? (ScriptVariant = "en", "If Not Connected Then", "Если Не Подключен Тогда"));
		AddLine(Writer, ? (ScriptVariant = "en", "	TestApplication = Undefined;", "	ТестовоеПриложение = Неопределено;"));
		AddLine(Writer, ? (ScriptVariant = "en", "	Message(""Connection cannot be established. "" + Chars.LF + ConnectionErrorDescription);", "	Сообщить(""Не смогли установить соединение! "" + Символы.ПС + ОписаниеОшибкиСоединения);"));
		AddLine(Writer, ? (ScriptVariant = "en", "	Return;", "	Возврат;"));
		AddLine(Writer, ? (ScriptVariant = "en", "EndIf;", "КонецЕсли;"), True);

		Indent = Indent - 1;

	Else

		AddLine(Writer, ? (ScriptVariant = "en", "&AtClient", "&НаКлиенте"));
		AddLine(Writer, ? (ScriptVariant = "en", "Procedure ", "Процедура ") + MainProcedureName + ? (ScriptVariant = "en", "(TestApplication)", "(ТестовоеПриложение)"), True);

	EndIf;

	Reader.Read();

	LocalWriter = Writer;
	If SplitScriptIntoProcedures Then
		LocalWriter = New TextDocument();
	EndIf;

	While Reader.NodeType <> XMLNodeType.EndElement Do

		If Reader.Name = "ClientApplicationWindow" или Reader.Name = "setFileDialogResult" Then

			LocalProcedureName = "";
			ConvertWindow(Reader, LocalWriter, LocalProcedureName);

			If SplitScriptIntoProcedures Then

				Indent = Indent + 1;
				AddLine(Writer, LocalProcedureName + ? (ScriptVariant = "en", "(TestApplication);", "(ТестовоеПриложение);"));
				Indent = Indent - 1 ;

			EndIf;

		ElsIf Reader.Name = "Form" Then

			AddLine(Writer, "");

			Indent = Indent + 1;

			WindowBeingProcessed = "";
			CreatedInWindowAndFormVariables.Insert(WindowBeingProcessed, New Map());
			ConvertForm(Reader, Writer, ? (ScriptVariant = "en", "TestApplication", "ТестовоеПриложение"));

			Indent = Indent - 1;

		Else

			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;

		EndIf;

	EndDo;

	If SplitScriptIntoProcedures Then
		AddLine(Writer, "");
	EndIf;
	AddLine(Writer, ? (ScriptVariant = "en", "EndProcedure", "КонецПроцедуры"));

	If SplitScriptIntoProcedures Then
		AddLine(Writer, LocalWriter.GetText());
	EndIf;

EndProcedure

Procedure ConvertWindow(Reader, Writer, LocalProcedureName)

	ObjectType = Reader.Name;
	ObjectTitle = "";
	IsMainWindow = False;
	While Reader.ReadAttribute() Do
		If Reader.Name = "caption" Then
			ObjectTitle = Reader.Value;
		ElsIf Reader.Name = "isMain" Then
			IsMainWindow = Boolean(Reader.Value);
		EndIf;
	EndDo;

	VariableName = ConvertTitleIntoVariableName(ObjectType, ? (IsMainWindow, ? (ScriptVariant = "en", "Main", "Основное"), ObjectTitle));

	WindowBeingProcessed = VariableName;

	If SplitScriptIntoProcedures Then 
		LineCountBeforeProcess = Writer.LineCount();
	EndIf;

	Indent = Indent + 1;

	If CreatedInWindowAndFormVariables.Get(WindowBeingProcessed) = Undefined Then

		CreatedInWindowAndFormVariables.Insert(WindowBeingProcessed, New Map());

		If IsMainWindow Then
			AddLine(Writer, "");
			AddLine(Writer, VariableName + ? (ScriptVariant = "en", " = Undefined;", " = Неопределено;"));
			AddLine(Writer, ? (ScriptVariant = "en", "ClientWindowsOfApplicationBeingTested = TestApplication.GetChildObjects();", "КлиентсткиеОкнаТестируемогоПриложения = ТестовоеПриложение.ПолучитьПодчиненныеОбъекты();"));
			AddLine(Writer, ? (ScriptVariant = "en", "For Each WindowBeingTested In ClientWindowsOfApplicationBeingTested Do", "Для Каждого ТестируемоеОкно Из КлиентсткиеОкнаТестируемогоПриложения Цикл"));
			AddLine(Writer, ? (ScriptVariant = "en", "	If WindowBeingTested.IsMain Then", "	Если ТестируемоеОкно.Основное Тогда"));
			AddLine(Writer, "		" + VariableName + ? (ScriptVariant = "en", " = WindowBeingTested;", " = ТестируемоеОкно;"));
			AddLine(Writer, ? (ScriptVariant = "en", "		Break;", "		Прервать;"));
			AddLine(Writer, ? (ScriptVariant = "en", "	EndIf;", "	КонецЕсли;"));
			AddLine(Writer, ? (ScriptVariant = "en", "EndDo;", "КонецЦикла;"));
		Else

			AddLine(Writer, VariableName + ? (ScriptVariant = "en", " = TestApplication.FindObject(Type(""TestedClientApplicationWindow""), """, " = ТестовоеПриложение.НайтиОбъект(Тип(""ТестируемоеОкноКлиентскогоПриложения""), """) + DoubleQuotationMarks(ObjectTitle) + """, , 30);");

		EndIf;

	EndIf;
	WindowClosed = False;

	Reader.Read();
	While Reader.NodeType <> XMLNodeType.EndElement Do

		If Reader.Name = "Form" Then
			ConvertForm(Reader, Writer, VariableName);
		ElsIf Reader.Name = "CommandInterface" Then
			ConvertWindowCommandInterface(Reader, Writer, VariableName);
		ElsIf Not ConvertCommand(Reader, Writer, VariableName) Then
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	Indent = Indent - 1;
	Reader.Read();

	If WindowClosed Or SplitScriptIntoProcedures Then
		CreatedInWindowAndFormVariables.Delete(WindowBeingProcessed);
	EndIf;

	If SplitScriptIntoProcedures Then

		ProcedureCount = 0;
		While True Do
			LocalProcedureName = VariableName + LastProcessedControl + LastProcessedCommand + ? (ProcedureCount = 0, "", ProcedureCount);
			Prologue = ? (ScriptVariant = "en", "Procedure ", "Процедура ") + LocalProcedureName + ? (ScriptVariant = "en", "(TestApplication)", "(ТестовоеПриложение)");
			If CreatedProcedures.Find(Prologue) = Undefined Then
				CreatedProcedures.Add(Prologue);
				Break;
			EndIf;
			ProcedureCount = ProcedureCount + 1;
		EndDo;

		InsertLine(Writer, LineCountBeforeProcess, Prologue);
					InsertLine(Writer, LineCountBeforeProcess, ? (ScriptVariant = "en", "&AtClient", "&НаКлиенте"));
		InsertLine(Writer, LineCountBeforeProcess, "");

		AddLine(Writer, ? (ScriptVariant = "en", "EndProcedure", "КонецПроцедуры"), True);

	EndIf;

EndProcedure

Procedure ConvertWindowCommandInterface(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectTitle = "";

	While Reader.ReadAttribute() Do
		If Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ObjectTitle);
	VariableName = ParentVariable + "CommandInterface";


	WindowForms = CreatedInWindowAndFormVariables.Get(WindowBeingProcessed);
	If WindowForms.Get(FormBeingProcessed) = Undefined Then

		WindowForms.Insert(FormBeingProcessed, New Array());
	
		AddLine(Writer, VariableName + " = " + ParentVariable + ? (ScriptVariant = "en", ".GetCommandInterface();", ".ПолучитьКомандныйИнтерфейс();"));

	EndIf;

	Reader.Read();

	While Reader.NodeType <> XMLNodeType.EndElement Do
		If Reader.Name = "CommandInterfaceButton" Then
			ConvertCommandInterfaceButton(Reader, Writer, VariableName);
		ElsIf Reader.Name = "CommandInterfaceGroup" Then
			ConvertCommandInterfaceGroup(Reader, Writer, VariableName);
		ElsIf Not ConvertCommand(Reader, Writer, VariableName) Then
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	Reader.Read();

EndProcedure

Procedure ConvertCommandInterfaceButton(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectTitle = "";

	While Reader.ReadAttribute() Do
		If Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ObjectTitle);
	VariableName = ? (SplitScriptIntoProcedures, "", ParentVariable) + LastProcessedControl;

	LineCountBeforeProcess = Writer.LineCount();

	Reader.Read();

	CommandConverted = False;
	While Reader.NodeType <> XMLNodeType.EndElement Do

		If ConvertCommand(Reader, Writer, VariableName) Then
			CommandConverted = True;
		Else
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	If CommandConverted Or GetFullHierarchy Then
		InsertLine(Writer, LineCountBeforeProcess + 1, VariableName + " = " + ParentVariable + ? (ScriptVariant = "en", ".FindObject(Type(""TestedCommandInterfaceButton""), """, ".НайтиОбъект(Тип(""ТестируемаяКнопкаКомандногоИнтерфейса""), """) + DoubleQuotationMarks(ObjectTitle) + """);");
	EndIf;

	Reader.Read();

EndProcedure

Procedure ConvertCommandInterfaceGroup(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectTitle = "";

	While Reader.ReadAttribute() Do
		If Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ObjectTitle);
	VariableName = ? (SplitScriptIntoProcedures, "", ParentVariable) + LastProcessedControl;

	LineCountBeforeProcess = Writer.LineCount();

	Reader.Read();

	While Reader.NodeType <> XMLNodeType.EndElement Do

		If Reader.Name = "CommandInterfaceButton" Then
			ConvertCommandInterfaceButton(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		ElsIf Reader.Name = "CommandInterfaceGroup" Then
			ConvertCommandInterfaceGroup(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		Else
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	If GetFullHierarchy Then
		InsertLine(Writer, LineCountBeforeProcess + 1, VariableName + " = " + ParentVariable + ? (ScriptVariant = "en", ".FindObject(Type(""TestedCommandInterfaceGroup""), """, ".НайтиОбъект(Тип(""ТестируемаяГруппаКомандногоИнтерфейса""), """) + DoubleQuotationMarks(ObjectTitle) + """);");
	EndIf;

	Reader.Read();

EndProcedure

Procedure ConvertForm(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectTitle = "";

	While Reader.ReadAttribute() Do
		If Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ObjectTitle);
	VariableName = ParentVariable + LastProcessedControl;
	FormBeingProcessed = VariableName;

	WindowForms = CreatedInWindowAndFormVariables.Get(WindowBeingProcessed);
	If WindowForms.Get(FormBeingProcessed) = Undefined Then

		WindowForms.Insert(FormBeingProcessed, New Array());
	
		AddLine(Writer, VariableName + " = " + ParentVariable + ? (ScriptVariant = "en", ".FindObject(Type(""TestedForm""), """, ".НайтиОбъект(Тип(""ТестируемаяФорма""), """) + DoubleQuotationMarks(ObjectTitle) + """);");

	EndIf;

	Reader.Read();

	While Reader.NodeType <> XMLNodeType.EndElement Do
		If Reader.Name = "FormField" Then
			ConvertField(Reader, Writer, VariableName);
		ElsIf Reader.Name = "FormTable" Then
			ConvertTable(Reader, Writer, VariableName);
		ElsIf Reader.Name = "FormDecoration" Then
			ConvertDecoration(Reader, Writer, VariableName);
		ElsIf Reader.Name = "FormButton" Then
			ConvertButton(Reader, Writer, VariableName);
		ElsIf Reader.Name = "FormGroup" Then
			ConvertGroup(Reader, Writer, VariableName);
		ElsIf Not ConvertCommand(Reader, Writer, VariableName) Then
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	Reader.Read();

EndProcedure

Procedure ConvertTable(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectName = Undefined;
	ObjectTitle = Undefined;
	While Reader.ReadAttribute() Do
		If Reader.Name = "name" Then
			ObjectName = Reader.Value;
		ElsIf Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ? (ObjectTitle = Undefined, ObjectName, ObjectTitle));

	VariableName = ? (SplitScriptIntoProcedures, "", ParentVariable) + LastProcessedControl;

	LineCountBeforeProcess = Writer.LineCount();
	Reader.Read();

	CommandConverted = False;
	While Reader.NodeType <> XMLNodeType.EndElement Do

		If Reader.Name = "FormField" Then
			ConvertField(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));

		ElsIf Reader.Name = "FormGroup" Then
			ConvertGroup(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		ElsIf ConvertCommand(Reader, Writer, VariableName, ObjectType) Then
			CommandConverted = True;
		Else
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	If CommandConverted Or GetFullHierarchy Then
		ConvertFieldInsertFindObjectLine(LineCountBeforeProcess, ObjectName, ObjectTitle, ParentVariable, VariableName, Writer, "TestedFormTable", "ТестируемаяТаблицаФормы");
	EndIf;

	Reader.Read();

EndProcedure

Procedure ConvertField(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectName = Undefined;
	ObjectTitle = Undefined;
	While Reader.ReadAttribute() Do
		If Reader.Name = "name" Then
			ObjectName = Reader.Value;
		ElsIf Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ? (ObjectTitle = Undefined, ObjectName, ObjectTitle));
	VariableName = ? (SplitScriptIntoProcedures, "", ParentVariable) + LastProcessedControl;

	LineCountBeforeProcess = Writer.LineCount();

	Reader.Read();

	CommandConverted = False;
	While Reader.NodeType <> XMLNodeType.EndElement Do

		If Reader.Name = "FormField" Then
			ConvertField(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		ElsIf ConvertCommand(Reader, Writer, VariableName) Then
			CommandConverted = True;
		Else
			Raise NStr("en = 'Unknown node'; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	If CommandConverted Or GetFullHierarchy Then
		ConvertFieldInsertFindObjectLine(LineCountBeforeProcess, ObjectName, ObjectTitle, ParentVariable, VariableName, Writer, "TestedFormField", "ТестируемоеПолеФормы");
	EndIf;

	Reader.Read();

EndProcedure

Procedure ConvertFieldInsertFindObjectLine(LineCountBeforeProcess, ObjectName, ObjectTitle, ParentVariable, VariableName, Writer, TypeNameEn, TypeNameRu)

	TitleValue = SearchValuesForTitle(ObjectTitle, ObjectName, ObjectSearch);
	NameValue = SearchValuesForName(ObjectTitle, ObjectName, ObjectSearch, TitleValue = "");
	InsertLine(Writer, LineCountBeforeProcess + 1,
				VariableName +
				" = " +
				ParentVariable +
				? (ScriptVariant = "en", ".FindObject(Type(""" + TypeNameEn + """), ", ".НайтиОбъект(Тип(""" + TypeNameRu + """), ") +
				? (TitleValue <> "" Or NameValue <> "", TitleValue, "") +
				? (NameValue <> "", ", " + NameValue, "") +
				");");

EndProcedure

Procedure ConvertButton(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectName = Undefined;
	ObjectTitle = Undefined;
	While Reader.ReadAttribute() Do
		If Reader.Name = "name" Then
			ObjectName = Reader.Value;
		ElsIf Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ? (ObjectTitle = Undefined, ObjectName, ObjectTitle));
	VariableName = ? (SplitScriptIntoProcedures, "", ParentVariable) + LastProcessedControl;

	LineCountBeforeProcess = Writer.LineCount();

	Reader.Read();

	CommandConverted = False;
	While Reader.NodeType <> XMLNodeType.EndElement Do

		If ConvertCommand(Reader, Writer, VariableName) Then
			CommandConverted = True;
		Else
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	If CommandConverted Or GetFullHierarchy Then
		ConvertFieldInsertFindObjectLine(LineCountBeforeProcess, ObjectName, ObjectTitle, ParentVariable, VariableName, Writer, "TestedFormButton", "ТестируемаяКнопкаФормы");
	EndIf;

	Reader.Read();

EndProcedure

Procedure ConvertDecoration(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectName = Undefined;
	ObjectTitle = Undefined;
	While Reader.ReadAttribute() Do
		If Reader.Name = "name" Then
			ObjectName = Reader.Value;
		ElsIf Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ? (ObjectTitle = Undefined, ObjectName, ObjectTitle));
	VariableName = ? (SplitScriptIntoProcedures, "", ParentVariable) + LastProcessedControl;

	LineCountBeforeProcess = Writer.LineCount();

	Reader.Read();

	CommandConverted = False;
	While Reader.NodeType <> XMLNodeType.EndElement Do

		If ConvertCommand(Reader, Writer, VariableName) Then
			CommandConverted = True;
		Else
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	If CommandConverted Or GetFullHierarchy Then
		ConvertFieldInsertFindObjectLine(LineCountBeforeProcess, ObjectName, ObjectTitle, ParentVariable, VariableName, Writer, "TestedFormDecoration", "ТестируемаяДекорацияФормы");
	EndIf;

	Reader.Read();

EndProcedure

Procedure ConvertGroup(Reader, Writer, ParentVariable)

	ObjectType = Reader.Name;
	ObjectName = Undefined;
	ObjectTitle = Undefined;
	While Reader.ReadAttribute() Do
		If Reader.Name = "name" Then
			ObjectName = Reader.Value;
		ElsIf Reader.Name = "title" Then
			ObjectTitle = Reader.Value;
		EndIf;
	EndDo;

	LastProcessedControl = ConvertTitleIntoVariableName(ObjectType, ? (ObjectTitle = Undefined, ObjectName, ObjectTitle));
	VariableName = ? (SplitScriptIntoProcedures, "", ParentVariable) + LastProcessedControl;

	LineCountBeforeProcess = Writer.LineCount();

	Reader.Read();

	CommandConverted = False;
	While Reader.NodeType <> XMLNodeType.EndElement Do

		If Reader.Name = "FormField" Then
			ConvertField(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		ElsIf Reader.Name = "FormTable" Then
			ConvertTable(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		ElsIf Reader.Name = "FormDecoration" Then
			ConvertDecoration(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		ElsIf Reader.Name = "FormButton" Then
			ConvertButton(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		ElsIf Reader.Name = "FormGroup" Then
			ConvertGroup(Reader, Writer, ? (GetFullHierarchy, VariableName, ParentVariable));
		ElsIf ConvertCommand(Reader, Writer, VariableName, ObjectType) Then
			CommandConverted = True;
		Else
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;

	EndDo;

	If CommandConverted Or GetFullHierarchy Then
		ConvertFieldInsertFindObjectLine(LineCountBeforeProcess, ObjectName, ObjectTitle, ParentVariable, VariableName, Writer, "TestedFormGroup", "ТестируемаяГруппаФормы");
	EndIf;

	Reader.Read();

EndProcedure

Function ConvertCommand(Reader, Writer, VariableName, ObjectType = "")

	If Reader.Name = "activate" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Activate();", ".Активизировать();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "Activate", "Активизировать");
		Reader.Read();

	ElsIf Reader.Name = "inputText" Then
		OutputText = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "text" Then
				OutputText = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".InputText(""", ".ВвестиТекст(""") + DoubleQuotationMarks(OutputText) + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "InputText", "ВвестиТекст");
		Reader.Read();

	ElsIf Reader.Name = "click" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Click();", ".Нажать();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "Click", "Нажать");
		Reader.Read();

	ElsIf Reader.Name = "clear" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Clear();", ".Очистить();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "Clear", "Очистить");
		Reader.Read();

	ElsIf Reader.Name = "create" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Create();", ".Создать();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "Create", "Создать");
		Reader.Read();

	ElsIf Reader.Name = "cancel" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".CancelEdit();", ".ОтменитьРедактирование();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "CancelEdit", "ОтменитьРедактирование");
		Reader.Read();

	ElsIf Reader.Name = "open" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Open();", ".Открыть();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "Open", "Открыть");
		Reader.Read();

	ElsIf Reader.Name = "startChoosing" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".StartChoosing();", ".Выбрать();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "StartChoosing", "Выбрать");
		Reader.Read();

	ElsIf Reader.Name = "startChoosingFromChoiceList" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".StartChoosingFromChoiceList();", ".ВыбратьИзСпискаВыбора();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "StartChoosingFromChoiceList", "ВыбратьИзСпискаВыбора");
		Reader.Read();

	ElsIf Reader.Name = "executeChoiceFromChoiceList" Then
		Presentation = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "presentation" Then
				Presentation = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".WaitForDropDownListGeneration();", ".ОжидатьФормированияВыпадающегоСписка();"), True);
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".ExecuteChoiceFromChoiceList(""", ".ВыполнитьВыборИзСпискаВыбора(""") + DoubleQuotationMarks(Presentation) + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "ExecuteChoiceFromChoiceList", "ВыполнитьВыборИзСпискаВыбора");
		Reader.Read();

	ElsIf Reader.Name = "openDropList" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".OpenDropList();", ".ОткрытьВыпадающийСписок();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "OpenDropList", "ОткрытьВыпадающийСписок");
		Reader.Read();

	ElsIf Reader.Name = "closeDropList" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".CloseDropList();", ".ЗакрытьВыпадающийСписок();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "CloseDropList", "ЗакрытьВыпадающийСписок");
		Reader.Read();

	ElsIf Reader.Name = "executeChoiceFromDropList" Then
		Presentation = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "presentation" Then
				Presentation = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".WaitForDropDownListGeneration();", ".ОжидатьФормированияВыпадающегоСписка();"), True);
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".ExecuteChoiceFromDropList(""", ".ВыполнитьВыборИзВыпадающегоСписка(""") + DoubleQuotationMarks(Presentation) + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "ExecuteChoiceFromDropList", "ВыполнитьВыборИзВыпадающегоСписка");
		Reader.Read();

	ElsIf Reader.Name = "increaseValue" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".IncreaseValue();", ".УвеличитьЗначение();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "IncreaseValue", "УвеличитьЗначение");
		Reader.Read();

	ElsIf Reader.Name = "decreaseValue" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".DecreaseValue();", ".УменьшитьЗначение();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "DecreaseValue", "УменьшитьЗначение");
		Reader.Read();

	ElsIf Reader.Name = "setCheck" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".SetCheck();", ".УстановитьОтметку();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "SetCheck", "УстановитьОтметку");
		Reader.Read();

	ElsIf Reader.Name = "selectOption" Then
		Presentation = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "presentation" Then
				Presentation = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".SelectOption(""", ".ВыбратьВариант(""") + DoubleQuotationMarks(Presentation) + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "SelectOption", "ВыбратьВариант");
		Reader.Read();

	ElsIf Reader.Name = "gotoValue" Then
		Presentation = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "value" Then
				Presentation = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoValue(""", ".ПерейтиКЗначению(""") + DoubleQuotationMarks(Presentation) + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoValue", "ПерейтиКЗначению");
		Reader.Read();

	ElsIf Reader.Name = "gotoNextMonth" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoNextMonth();", ".ПерейтиНаМесяцВперед();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoNextMonth", "ПерейтиНаМесяцВперед");
		Reader.Read();

	ElsIf Reader.Name = "gotoPreviousMonth" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoPreviousMonth();", ".ПерейтиНаМесяцНазад();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoPreviousMonth", "ПерейтиНаМесяцНазад");
		Reader.Read();

	ElsIf Reader.Name = "gotoNextYear" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoNextYear();", ".ПерейтиНаГодВперед();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoNextYear", "ПерейтиНаГодВперед");
		Reader.Read();

	ElsIf Reader.Name = "gotoPreviousYear" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoPreviousYear();", ".ПерейтиНаГодНазад();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoPreviousYear", "ПерейтиНаГодНазад");
		Reader.Read();

	ElsIf Reader.Name = "gotoDate" Then
		Presentation = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "date" Then
				Presentation = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; 'ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoDate(XMLValue(Type(""Date""), """, ".ПерейтиКДате(XMLЗначение(Тип(""Дата""), """) + Presentation + """));", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GoToDate", "ПерейтиКДате");
		Reader.Read();

	ElsIf Reader.Name = "setCurrentArea" Then
		Area = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "area" Then
				Area = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".SetCurrentArea(""", ".УстановитьТекущуюОбласть(""") + Area + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "SetCurrentArea", "УстановитьТекущуюОбласть");
		Reader.Read();

	ElsIf Reader.Name = "beginEditingCurrentArea" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".BeginEditingCurrentArea();", ".НачатьРедактированиеТекущейОбласти();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "BeginEditingCurrentArea", "НачатьРедактированиеТекущейОбласти");
		Reader.Read();

	ElsIf Reader.Name = "finishEditingCurrentArea" Then
		CancelFlag = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "cancel" Then
				CancelFlag = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".EndEditingCurrentArea(", ".ЗавершитьРедактированиеТекущейОбласти(") + CancelFlag + ");", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "EndEditingCurrentArea", "ЗавершитьРедактированиеТекущейОбласти");
		Reader.Read();

	ElsIf Reader.Name = "gotoNextItem" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoNextItem();", ".ПерейтиКСледующемуЭлементу();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoNextItem", "ПерейтиКСледующемуЭлементу");
		Reader.Read();

	ElsIf Reader.Name = "gotoPreviousItem" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoPreviousItem();", ".ПерейтиКПредыдущемуЭлементу();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoPreviousItem", "ПерейтиКПредыдущемуЭлементу");
		Reader.Read();

	ElsIf Reader.Name = "goOneLevelUp" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GoOneLevelUp();", ".ПерейтиНаУровеньВверх();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GoOneLevelUp", "ПерейтиНаУровеньВверх");
		Reader.Read();

	ElsIf Reader.Name = "goOneLevelDown" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GoOneLevelDown();", ".ПерейтиНаУровеньВниз();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GoOneLevelDown", "ПерейтиНаУровеньВниз");
		Reader.Read();

	ElsIf Reader.Name = "gotoNextRow" Then
		ConvertCommandPartGotoSpecificRow(Reader, VariableName, Writer, "GotoNextRow", "ПерейтиКСледующейСтроке");

	ElsIf Reader.Name = "gotoPreviousRow" Then
		ConvertCommandPartGotoSpecificRow(Reader, VariableName, Writer, "GotoPreviousRow", "ПерейтиКПредыдущейСтроке");

	ElsIf Reader.Name = "gotoFirstRow" Then
		ConvertCommandPartGotoSpecificRow(Reader, VariableName, Writer, "GotoFirstRow", "ПерейтиКПервойСтроке");

	ElsIf Reader.Name = "gotoLastRow" Then
		ConvertCommandPartGotoSpecificRow(Reader, VariableName, Writer, "GotoLastRow", "ПерейтиКПоследнейСтроке");

	ElsIf Reader.Name = "gotoRow" Then
		Direction = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "direction" Then
				Direction = ? (ScriptVariant = "en", ? (Reader.Value = "up", "RowGotoDirection.Up", "RowGotoDirection.Down"), ? (Reader.Value = "up", "НаправлениеПереходаКСтроке.Вверх", "НаправлениеПереходаКСтроке.Вниз"));
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		Reader.Read();
		ConvertCommandPartRowDescriptionPartInt(Reader, Writer);
		AddLine(Writer,
				VariableName + ? (ScriptVariant = "en", ".GotoRow(RowDescription", ".ПерейтиКСтроке(ОписаниеСтроки") + ? (Direction = "", "", ", " + Direction) + ");",
				True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoRow", "ПерейтиКСтроке");

	ElsIf Reader.Name = "setOrder" Then
		ColumnTitle = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "columnTitle" Then
				ColumnTitle = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".SetOrder(""", ".УстановитьПорядок(""") + DoubleQuotationMarks(ColumnTitle) + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "SetOrder", "УстановитьПорядок");
		Reader.Read();

	ElsIf Reader.Name = "choose" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Choose();", ".Выбрать();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "Choose", "Выбрать");
		Reader.Read();

	ElsIf Reader.Name = "selectAllRows" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".SelectAllRows();", ".ВыделитьВсеСтроки();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "SelectAllRows", "ВыделитьВсеСтроки");
		Reader.Read();

	ElsIf Reader.Name = "changeRow" Then
		AddLine(Writer, VariableName +? (ScriptVariant = "en", ".ChangeRow();", ".ИзменитьСтроку();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "ChangeRow", "ИзменитьСтроку");
		Reader.Read();

	ElsIf Reader.Name = "endEditRow" Then
		CancelFlag = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "cancel" Then
				CancelFlag = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".EndEditRow(", ".ЗакончитьРедактированиеСтроки(") + CancelFlag + ");", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "EndEditRow", "ЗакончитьРедактированиеСтроки");
		Reader.Read();

	ElsIf Reader.Name = "addRow" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".AddRow();", ".ДобавитьСтроку();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "AddRow", "ДобавитьСтроку");
		Reader.Read();

	ElsIf Reader.Name = "deleteRow" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".DeleteRow();", ".УдалитьСтроку();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "DeleteRow", "УдалитьСтроку");
		Reader.Read();

	ElsIf Reader.Name = "switchRowDeleteMark" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".SwitchRowDeleteMark();", ".ПереключитьПометкуУдаленияСтроки();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "SwitchRowDeleteMark", "ПереключитьПометкуУдаленияСтроки");
		Reader.Read();

	ElsIf Reader.Name = "expand" Then
		If ObjectType = "FormGroup" Then
			AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Expand();", ".Развернуть();"), True);
			LastProcessedCommand = ? (ScriptVariant = "en", "Expand", "Развернуть");
			Reader.Read();
		Else
			ConvertCommandPartRowDescription(Reader, VariableName, Writer, "Expand", "Развернуть");
		Endif;
		LastProcessedCommand = ? (ScriptVariant = "en", "Expand", "Развернуть");

	ElsIf Reader.Name = "collapse" Then
		If ObjectType = "FormGroup" Then
			AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Collapse();", ".Свернуть();"), True);
			LastProcessedCommand = ? (ScriptVariant = "en", "Collapse", "Свернуть");
			Reader.Read();
		Else
			ConvertCommandPartRowDescription(Reader, VariableName, Writer, "Collapse", "Свернуть");
		EndIf;
		LastProcessedCommand = ? (ScriptVariant = "en", "Collapse", "Свернуть");

	ElsIf Reader.Name = "close" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".Close();", ".Закрыть();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "Close", "Закрыть");
		WindowClosed = True;
		Reader.Read();

	ElsIf Reader.Name = "chooseUserMessage" Then
		MessageText = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "messageText" Then
				MessageText = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".ChooseUserMessage(""", ".ВыбратьСообщениеПользователю(""") + MessageText + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "ChooseUserMessage", "ВыбратьСообщениеПользователю");
		Reader.Read();

	ElsIf Reader.Name = "closeUserMessagesPanel" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".CloseUserMessagesPanel();", ".ЗакрытьПанельСообщенийПользователю();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "CloseUserMessagesPanel", "ЗакрытьПанельСообщенийПользователю");
		WindowClosed = True;
		Reader.Read();

	ElsIf Reader.Name = "gotoStartPage" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoStartPage();", ".ПерейтиКНачальнойСтранице();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoStartPage", "ПерейтиКНачальнойСтранице");
		WindowClosed = True;
		Reader.Read();

	ElsIf Reader.Name = "gotoNextWindow" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoNextWindow();", ".ПерейтиКСледующемуОкну();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoNextWindow", "ПерейтиКСледующемуОкну");
		WindowClosed = True;
		Reader.Read();

	ElsIf Reader.Name = "gotoPreviousWindow" Then
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".GotoPreviousWindow();", ".ПерейтиКПредыдущемуОкну();"), True);
		LastProcessedCommand = ? (ScriptVariant = "en", "GotoPreviousWindow", "ПерейтиКПредыдущемуОкну");
		WindowClosed = True;
		Reader.Read();

	ElsIf Reader.Name = "executeCommand" Then
		CommandRef = "";
		While Reader.ReadAttribute() Do
			If Reader.Name = "url" Then
				CommandRef = Reader.Value;
			Else
				Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
			EndIf;
		EndDo;
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", ".ExecuteCommand(""", ".ВыполнитьКоманду(""") + CommandRef + """);", True);
		LastProcessedCommand = ? (ScriptVariant = "en", "ExecureCommand", "ВыполнитьКоманду");
		Reader.Read();

	ElsIf Reader.Name = "filename" Then
		Reader.Read();
	Else
		Return False;
	EndIf;
	
	Reader.Read();

	Return True;

EndFunction

Procedure ConvertCommandPartGotoSpecificRow(Val Reader, Val VariableName, Val Writer, Val TermInt, Val TermRus)

	SwitchSelection = "";
	While Reader.ReadAttribute() Do
		If Reader.Name = "switchSelection" Then
			SwitchSelection = Reader.Value;
		Else
			Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
		EndIf;
	EndDo;
	AddLine(Writer, VariableName + ? (ScriptVariant = "en", "." + TermInt + "(", "." + TermRus + "(") + SwitchSelection + ");", True);
	LastProcessedCommand = ? (ScriptVariant = "en", TermInt, TermRus);
	Reader.Read();

EndProcedure

Procedure ConvertCommandPartRowDescription(Val Reader, Val VariableName, Val Writer, Val TermInt, Val TermRus)

	Reader.Read();
	If Reader.NodeType = XMLNodeType.StartElement And Reader.Name = "Field" Then
		ConvertCommandPartRowDescriptionPartInt(Reader, Writer);
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", "." + TermInt + "(RowDescription);", "." + TermRus + "(ОписаниеСтроки);"), True);
	Else
		AddLine(Writer, VariableName + ? (ScriptVariant = "en", "." + TermInt +"();", "." + TermRus + "();"), True);
	EndIf;

EndProcedure

Procedure ConvertCommandPartRowDescriptionPartInt(Val Reader, Val Writer)

	AddLine(Writer, ? (ScriptVariant = "en", "RowDescription = New Map();", "ОписаниеСтроки = Новый Соответствие();"));

	While Reader.NodeType <> XMLNodeType.EndElement Do
		If Reader.Name = "Field" Then
			ColumnTitle = "";
			CellText = "";
			While Reader.ReadAttribute() Do
				If Reader.Name = "title" Then
					ColumnTitle = Reader.Value;
				ElsIf Reader.Name = "cellText" Then
					CellText = Reader.Value;
				Else
					Raise NStr("en = 'Unknown attribute '; ru = 'Неопознанный атрибут '") + Reader.Name + ": " + Reader.Value;
				EndIf;
			EndDo;
			AddLine(Writer, ? (ScriptVariant = "en", "RowDescription.Insert(""", "ОписаниеСтроки.Вставить(""") + 
					ColumnTitle + """, """ + DoubleQuotationMarks(CellText) + """);");
			Reader.Read();
		Else
			Raise NStr("en = 'Unknown node '; ru = 'Неопознанный узел '") + Reader.Name + ": " + Reader.Value;
		EndIf;
		Reader.Read();
	EndDo;

EndProcedure