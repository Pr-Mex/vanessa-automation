
////////////////////////////////////////////////////////////////////////////////
// FORM EVENT HANDLERS
&AtServer
Procedure OnCreateAtServer(Cancel, StandardProcessing)

	// Setting up initial values
	Object.SplitScriptIntoProcedures = True;

	Object.ScriptVariant = ? (String(Metadata.ScriptVariant) = "English",  "en", "ru");

	
	Items.ScriptVariant.ChoiceList.Add("en", NStr("en = 'English'; ru = 'Английский'"));
	Items.ScriptVariant.ChoiceList.Add("ru", NStr("en = 'Russian'; ru = 'Русский'"));

	Items.ObjectSearch.ChoiceList.Add(0, NStr("en = 'By presentation'; ru = 'По представлению'"));
	Items.ObjectSearch.ChoiceList.Add(1, NStr("en = 'By name'; ru = 'По имени'"));
	Items.ObjectSearch.ChoiceList.Add(2, NStr("en = 'By name and presentation'; ru = 'По имени и представлению'"));
	
	Items.ConversionVariant.ChoiceList.Add(0,  NStr("en = 'Log'; ru = 'Журнал'"));
	Items.ConversionVariant.ChoiceList.Add(1,  NStr("en = 'Text'; ru = 'Текст'"));

EndProcedure

&AtClient
Procedure OnOpen(Cancel)

	Object.MainProcedureName = ?(Object.ScriptVariant = "en",  "TestScenario_", "ТестовыйСценарий_") + ClearDate(Format(CurrentDate(), "DLF=D"));

	Items.SourceData.CurrentPage = ?(Object.ConversionVariant = 0,Items.SourceFiles, Items.SourceTexts);

EndProcedure

&AtServer
Procedure FillCheckProcessingAtServer(Cancel, AttributesToCheck)

	// Adding check fields according to the transform variant
	If Object.ConversionVariant = 0 Then

		AttributesToCheck.Add("SourceFile");
		AttributesToCheck.Add("ResultFile");

	Else

		If Not ValueIsFilled(SourceText.GetText()) Then

			Cancel = True;

			NewMessage = New UserMessage();
			NewMessage.Text = NStr("en = 'User action log is not specified.'; ru = 'Поле ""Журнал действий пользователя"" не заполнено.'");
			NewMessage.DataPath = "SourceText";
			NewMessage.Message();

		EndIf;

	EndIf;

EndProcedure

////////////////////////////////////////////////////////////////////////////////
// CONTROL EVENT HANDLERS
&AtClient
Procedure ConversionVariantOnChange(Item)

	Items.SourceData.CurrentPage = ? (Object.ConversionVariant = 0, Items.SourceFiles, Items.SourceTexts);

EndProcedure

&AtClient
Procedure ScriptVariantClearing(Item, StandardProcessing)

	StandardProcessing = False;

EndProcedure

&AtClient
Procedure ScriptVariantOnChange(Item)

	Object.MainProcedureName = ? (Object.ScriptVariant = "en",  "TestScenario_", "ТестовыйСценарий_") + ClearDate(Format(CurrentDate(), "DLF=D"));

EndProcedure

&AtClient
Procedure SourceFileOnStartChoice(Item, ChoiceData, StandardProcessing)

	StandardProcessing = False;

	Dialog = New FileDialog(FileDialogMode.Open);

	Dialog.FullFileName = SourceFile;
	Dialog.Title = NStr("en = 'Specify the user action log file.'; ru = 'Укажите файл журнала действий пользователя'");
	Dialog.Filter = NStr("en = 'User action log file (*.uil,*.txt,*.xml)|*.uil;*.txt;*.xml|All files (*.*)|*.*'; ru = 'Файлы журнала действий пользователя (*.uil,*.txt,*.xml)|*.uil;*.txt;*.xml|Все файлы (*.*)|*.*'");
	Dialog.DefaultExt= "uil";

	If Dialog.Choose() Then

		SourceFile = Dialog.FullFileName;

		If Not ValueIsFilled(ResultFile) Then

			ResultFile = Left(Dialog.FullFileName, StrLen(Dialog.FullFileName) - StrLen(Dialog.DefaultExt)) + NStr("en = 'ModuleText'; ru = 'ТекстМодуля'") + ".txt"

		EndIf;

	EndIf;

EndProcedure

&AtClient
Procedure SourceFileOnOpen(Item, StandardProcessing)

	StandardProcessing = False;

	DocumentToView = New TextDocument();
	DocumentToView.Read(SourceFile);
	DocumentToView.Show(SourceFile);

EndProcedure

&AtClient
Procedure ResultFileOnStartChoice(Item, ChoiceData, StandardProcessing)

	StandardProcessing = False;

	Dialog = New FileDialog(FileDialogMode.Save);

	Dialog.FullFileName = ResultFile;
	Dialog.Title = NStr("en = 'Specify the file where the conversion result will be saved.'; ru = 'Укажите файл для сохранения результата преобразования'");
	Dialog.Filter= NStr("en = 'Text files (*.txt)|*.txt|All files (*.*)|*.*'; ru = 'Текстовые файлы (*.txt)|*.txt|Все файлы (*.*)|*.*'");
	
	If Dialog.Choose() Then

		SourceFile = Dialog.FullFileName;

	EndIf;

EndProcedure

&AtClient
Procedure ResultFileOnOpen(Item, StandardProcessing)

	StandardProcessing = False;

	DocumentToView = New TextDocument();
	DocumentToView.Read(ResultFile);
	DocumentToView.Show(ResultFile);

EndProcedure

////////////////////////////////////////////////////////////////////////////////
// AUXILIARY PROCEDURES AND FUNCTIONS
&AtClient
Function IsDigit(Char)

	Code = CharCode (Char);
	Return Code >= 48 And Code <= 57;

EndFunction

&AtClient
Function IsLetter(Char)

	// All non-literal character codes are considered equal
	Return CharCode(Lower(Char)) <> CharCode(Upper(Char));

EndFunction

&AtClient
Function ClearDate(DateToClear)

	Result = "";

	StringLength = StrLen(DateToClear);
	For Index = 1 To StringLength Do
		NextChar = Mid(DateToClear,Index, 1);
		If IsDigit(NextChar) Then
			Result = Result + NextChar;
		Else
			Result = Result + "_";
		EndIf;
	EndDo;

	Return Result;

EndFunction

////////////////////////////////////////////////////////////////////////////////
// Conversion procedures
&AtServer
Function ConvertAtServer(TextToConvert)
	
	ThisDataProcessor = FormAttributeToValue("Object");
	Return ThisDataProcessor.Convert(TextToConvert);
	
EndFunction

&AtClient
Procedure Convert(Command)

	// Preparing data to be converted
	ClearMessages();
	If Not CheckFilling() Then
		Return;
	EndIf;

	TextToConvert = "";
	If Object.ConversionVariant = 0 Then

		Reader = New TextDocument();
		Reader.Read(SourceFile);
		TextToConvert = Reader.GetText();
		Reader = Undefined;

	Else

		TextToConvert = SourceText.GetText();

	EndIf;

	ConversionResult = ConvertAtServer(TextToConvert);

	If Not ValueIsFilled(ConversionResult) Then
		Message(NStr("en = 'Cannot convert data'; ru = 'Не удалось выполнить преобразование'"));
		Return;
	EndIf;

	If Object.ConversionVariant = 0 Then

		Writer = New TextDocument();
		Writer.AddLine(ConversionResult);
		Writer.Write(ResultFile);
		Writer.Show(ResultFile);

	Else

		ResultText.Clear();
		ResultText.AddLine(ConversionResult);

	EndIf;

EndProcedure
