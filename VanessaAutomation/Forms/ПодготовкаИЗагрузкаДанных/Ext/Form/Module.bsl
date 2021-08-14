
// IRP Team v.1.2

#Region Variables

//
&AtClient
Var LocalizedStringFromServer;

#EndRegion

#Region Vanessa


#Region ServiceFunctionsAndProcedures

//
&AtClient
Var Vanessa;

// 
&AtClient
Var Контекст Export;

//
&AtClient
Var КонтекстСохраняемый Export;

&AtClient
Function ПолучитьСписокТестов(КонтекстФреймворкаBDD) Export
	LocalizedStringFromServer = LocalizedStringsServer();
	Vanessa = КонтекстФреймворкаBDD;	
	AllTests = New Array;
	AddStepsByLanguage(Vanessa, AllTests, "ru");
	
	For Each Item In AllTests Do
		Item.ТипШага = "Подготовка и загрузка данных";
	EndDo;						
	
	Return AllTests;
EndFunction
	
&AtServer
Function GetTemplateAtServer(Val TemplateName)
	ObjectServer = FormAttributeToValue("Object");
	Return ObjectServer.GetTemplate(TemplateName);
EndFunction
	
&AtClient
Function ПолучитьМакетОбработки(Val TemplateName) Export
	Return GetTemplateAtServer(TemplateName);
EndFunction

#EndRegion

#Region WorkWithScenarious

&AtClient
Procedure IExecuteCodeAndPutToVarible(Code, VaribleName) Export
	Data = ISearchItemAndPutURLToVaribleAtServer(Code);
	Vanessa.СохранитьЗначениеПеременнойВКонтекст(VaribleName, Data);
EndProcedure

&AtServer
Function ISearchItemAndPutURLToVaribleAtServer(Code)
	Return Eval(Code);
EndFunction

&AtClient
Procedure ПередНачаломСценария() Export
	Return;
EndProcedure

&AtClient
Procedure ПередОкончаниемСценария() Export
	Return;
EndProcedure

#EndRegion

&AtClient
Procedure InitForm(VanessaContext) Export
	Vanessa = VanessaContext;
EndProcedure

&AtClient
Procedure IRunDatabaseClean() Export
	IRunDatabaseCleanAtServer();
EndProcedure

&AtClient
Procedure ЯЗапускаюОчисткуБазыДанных() Export
	IRunDatabaseClean();
EndProcedure

&AtServer
Procedure IRunDatabaseCleanAtServer()
	AdministrationInfoBaseDeletionMode.ClearDatabase();
EndProcedure

&AtClient
Procedure ICheckOrCreateCatalogObjects(Val ObjectName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateCatalogObjectsAtServer(ObjectName, Values);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляСправочникаОбъекты(Val ИмяОбъекта, Val Значения) Export
	ICheckOrCreateCatalogObjects(ИмяОбъекта, Значения);
EndProcedure

&AtClient
Procedure ICheckOrCreateCatalogObjectsWithDataExchangeLoadTrue(Val ObjectName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateCatalogObjectsAtServer(ObjectName, Values, True);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляСправочникаОбъектыСОбменДаннымиЗагрузкаИстина(Val ИмяОбъекта, Val Значения) Export
	ICheckOrCreateCatalogObjectsWithDataExchangeLoadTrue(ИмяОбъекта, Значения);
EndProcedure

&AtServerNoContext
Procedure ICheckOrCreateCatalogObjectsAtServer(ObjectName, Values, DataExchange = False)
	ObjectValues = GetValueTableFromVanessaTableArray(Values);
	ObjectAttributes = New ValueTable;
	FillColumnsByStandardAttributes(ObjectAttributes, "Catalogs", ObjectName);
	FillColumnsByCommonAttributes(ObjectAttributes, "Catalogs", ObjectName);
	FillColumnsByAttributes(ObjectAttributes, "Catalogs", ObjectName);
	ColumnsNames = New Array;
	For Each Column In ObjectAttributes.Columns Do
		If ObjectValues.Columns.Find(Column.Name) = Undefined Then
			ColumnsNames.Add(Column.Name);
		EndIf;
	EndDo;
	For Each ColumnName In ColumnsNames Do
		ObjectAttributes.Columns.Delete(ColumnName);
	EndDo;
	RefColumnName = ?(ObjectAttributes.Columns.Find("Ref") <> Undefined, "Ref", "Ссылка");
	For Each Row In ObjectValues Do
		Ref = GetObjectLinkFromObjectURL(Row[RefColumnName]);
		If ValueIsFilled(Ref.DataVersion) Then
			Obj = Ref.GetObject();
		Else
			Predefined = StrFind(Row[RefColumnName], "?refName=");
			If Predefined Then
				Continue;
			EndIf;
			FoundColumn = ObjectAttributes.Columns.Find("IsFolder");
			If FoundColumn = Undefined Then
				FoundColumn = ObjectAttributes.Columns.Find("ЭтоГруппа");	
			EndIf;
			If FoundColumn <> Undefined
				And Row[FoundColumn.Name] = "True" Then
				Obj = Catalogs[ObjectName].CreateFolder();
			Else
				Obj = Catalogs[ObjectName].CreateItem();
			EndIf;
			Obj.SetNewObjectRef(Ref);
		EndIf;		
		
		For Each Column In ObjectAttributes.Columns Do
			If Row[Column.Name] = "" Then
				Continue;
			EndIf;
			If Column.Name = RefColumnName Then
				Continue;
			EndIf;
			If Column.Name = "IsFolder" Or Column.Name = "ЭтоГруппа" Then
				Continue;
			EndIf;
			If (Column.Name = "DeletionMark" Or Column.Name = "ПометкаУдаления")
				And Row[Column.Name] = "True" Then
				Obj.DeletionMark = True;
				Continue;
			EndIf;
			FillTipicalObjectAttributesByValues(Obj, Row, Column);
		EndDo;
		If Not ValueIsFilled(Obj.Code) Then
			Obj.SetNewCode();
		EndIf;
		Obj.DataExchange.Load = DataExchange;
		Obj.Write();
	EndDo;
EndProcedure

&AtClient
Procedure ICheckOrCreateDocumentObjects(Val ObjectName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateDocumentObjectsAtServer(ObjectName, Values);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляДокументаОбъекты(Val ИмяОбъекта, Val Значения) Export
	ICheckOrCreateDocumentObjects(ИмяОбъекта, Значения);
EndProcedure

&AtClient
Procedure ICheckOrCreateDocumentObjectsWithDataExchangeLoadTrue(Val ObjectName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateDocumentObjectsAtServer(ObjectName, Values, True);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляДокументаОбъектыСОбменДаннымиЗагрузкаИстина(Val ИмяОбъекта, Val Значения) Export
	ICheckOrCreateDocumentObjectsWithDataExchangeLoadTrue(ИмяОбъекта, Значения);
EndProcedure

&AtServerNoContext
Procedure ICheckOrCreateDocumentObjectsAtServer(ObjectName, Values, DataExchange = False)
	ObjectValues = GetValueTableFromVanessaTableArray(Values);	
	ObjectAttributes = New ValueTable;
	FillColumnsByStandardAttributes(ObjectAttributes, "Documents", ObjectName);
	FillColumnsByCommonAttributes(ObjectAttributes, "Documents", ObjectName);
	FillColumnsByAttributes(ObjectAttributes, "Documents", ObjectName);
	ColumnsNames = New Array;
	For Each Column In ObjectAttributes.Columns Do
		If ObjectValues.Columns.Find(Column.Name) = Undefined Then
			ColumnsNames.Add(Column.Name);
		EndIf;
	EndDo;
	For Each ColumnName In ColumnsNames Do
		ObjectAttributes.Columns.Delete(ColumnName);
	EndDo;
	RefColumnName = ?(ObjectAttributes.Columns.Find("Ref") <> Undefined, "Ref", "Ссылка");
	For Each Row In ObjectValues Do
		Ref = GetObjectLinkFromObjectURL(Row[RefColumnName]);
		If ValueIsFilled(Ref.DataVersion) Then
			Obj = Ref.GetObject();
		Else
			Obj = Documents[ObjectName].CreateDocument();
			Obj.SetNewObjectRef(Ref);
		EndIf;		
		
		For Each Column In ObjectAttributes.Columns Do
			If Row[Column.Name] = "" Then
				Continue;
			EndIf;
			If Column.Name = RefColumnName Then
				Continue;
			EndIf;
			If Column.Name = "Posted" Or Column.Name = "Проведен" Then
				Continue;
			EndIf;
			If (Column.Name = "DeletionMark" Or Column.Name = "ПометкаУдаления")
				And Row[Column.Name] = "True" Then
				Obj.DeletionMark = True;
				Continue;
			EndIf;
			FillTipicalObjectAttributesByValues(Obj, Row, Column);
		EndDo;
		FoundColumn = ObjectAttributes.Columns.Find("Posted");
		If FoundColumn = Undefined Then
			FoundColumn = ObjectAttributes.Columns.Find("Проведен");	
		EndIf;
		If FoundColumn <> Undefined
			And Row[FoundColumn.Name] = "True" Then
			DocumentWriteModeValue = DocumentWriteMode.Posting;
		Else
			DocumentWriteModeValue = DocumentWriteMode.Write;
		EndIf;
		If Not ValueIsFilled(Obj.Number) Then
			Obj.SetNewNumber();
		EndIf;
		Obj.DataExchange.Load = DataExchange;
		If DocumentWriteModeValue = DocumentWriteMode.Posting Then
			Obj.Write(DocumentWriteMode.Write);
			Obj.Write(DocumentWriteMode.Posting);
		Else
			Obj.Write(DocumentWriteModeValue);
		EndIf;
	EndDo;
EndProcedure

&AtClient
Procedure ICheckOrCreateChartOfCharacteristicTypesObjects(Val ObjectName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateChartOfCharacteristicTypesObjectsAtServer(ObjectName, Values);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляПланаВидовХарактеристикОбъекты(Val ИмяОбъекта, Val Значения) Export
	ICheckOrCreateChartOfCharacteristicTypesObjects(ИмяОбъекта, Значения);
EndProcedure

&AtClient
Procedure ICheckOrCreateChartOfCharacteristicTypesObjectsWithDataExchangeLoadTrue(Val ObjectName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateChartOfCharacteristicTypesObjectsAtServer(ObjectName, Values, True);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляПланаВидовХарактеристикОбъектыСОбменДаннымиЗагрузкаИстина(Val ИмяОбъекта, Val Значения) Export
	ICheckOrCreateChartOfCharacteristicTypesObjectsWithDataExchangeLoadTrue(ИмяОбъекта, Значения);
EndProcedure

&AtServerNoContext
Procedure ICheckOrCreateChartOfCharacteristicTypesObjectsAtServer(ObjectName, Values, DataExchange = False)	
	ObjectValues = GetValueTableFromVanessaTableArray(Values);
	ObjectAttributes = New ValueTable;
	FillColumnsByStandardAttributes(ObjectAttributes, "ChartsOfCharacteristicTypes", ObjectName);
	FillColumnsByCommonAttributes(ObjectAttributes, "ChartsOfCharacteristicTypes", ObjectName);
	FillColumnsByAttributes(ObjectAttributes, "ChartsOfCharacteristicTypes", ObjectName);
	ColumnsNames = New Array;
	For Each Column In ObjectAttributes.Columns Do
		If ObjectValues.Columns.Find(Column.Name) = Undefined Then
			ColumnsNames.Add(Column.Name);
		EndIf;
	EndDo;
	For Each ColumnName In ColumnsNames Do
		ObjectAttributes.Columns.Delete(ColumnName);
	EndDo;
	RefColumnName = ?(ObjectAttributes.Columns.Find("Ref") <> Undefined, "Ref", "Ссылка");
	For Each Row In ObjectValues Do
		Ref = GetObjectLinkFromObjectURL(Row[RefColumnName]);
		If ValueIsFilled(Ref.DataVersion) Then
			Obj = Ref.GetObject();
		Else
			Predefined = StrFind(Row[RefColumnName], "?refName=");
			If Predefined Then
				Continue;
			EndIf;
			Obj = ChartsOfCharacteristicTypes[ObjectName].CreateItem();
			Obj.SetNewObjectRef(Ref);
		EndIf;		
		
		For Each Column In ObjectAttributes.Columns Do
			If Row[Column.Name] = "" Then
				Continue;
			EndIf;
			If Column.Name = RefColumnName Then
				Continue;
			EndIf;
			If (Column.Name = "DeletionMark" Or Column.Name = "ПометкаУдаления")
				And Row[Column.Name] = "True" Then
				Obj.DeletionMark = True;
				Continue;
			EndIf;
			FillTipicalObjectAttributesByValues(Obj, Row, Column);
		EndDo;
		Obj.DataExchange.Load = DataExchange;
		Obj.Write();
	EndDo;
EndProcedure

&AtClient
Procedure IRefillObjectTabularSection(Val TabularSectionName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	IRefillObjectTabularSectionAtServer(TabularSectionName, Values);
EndProcedure

&AtClient
Procedure ЯПерезаполняюДляОбъектаТабличнуюЧасть(Val ИмяТабличнойЧасти, Val Значения) Export
	IRefillObjectTabularSection(ИмяТабличнойЧасти, Значения);
EndProcedure

&AtClient
Procedure ЯВыполняюКодИВставляюВПеременную(Val Код, Val ИмяПеременной) Export
	IExecuteCodeAndPutToVarible(Код, ИмяПеременной);
EndProcedure

&AtServerNoContext
Procedure IRefillObjectTabularSectionAtServer(TabularSectionName, Values)	
	ObjectValues = GetValueTableFromVanessaTableArray(Values);
	RefColumnName = ?(ObjectValues.Columns.Find("Ref") <> Undefined, "Ref", "Ссылка");
	ObjectValues.Indexes.Add(RefColumnName);
	ObjectsRefs = ObjectValues.Copy(, RefColumnName);
	ObjectsRefs.GroupBy(RefColumnName);
	ObjectAttributes = New ValueTable;
	Ref = GetObjectLinkFromObjectURL(ObjectValues[0][RefColumnName]);
	FillColumnsByTabularSectionAttributes(ObjectAttributes, Ref.Metadata().TabularSections[TabularSectionName].Attributes);
	ColumnsNames = New Array;
	For Each Column In ObjectAttributes.Columns Do
		If ObjectValues.Columns.Find(Column.Name) = Undefined Then
			ColumnsNames.Add(Column.Name);
		EndIf;
	EndDo;
	For Each ColumnName In ColumnsNames Do
		ObjectAttributes.Columns.Delete(ColumnName);
	EndDo;
	
	For Each ObjectsRefsRow In ObjectsRefs Do
		ObjectValuesFilter = New Structure;
		ObjectValuesFilter.Insert(RefColumnName, ObjectsRefsRow[RefColumnName]);
		FoundObjectValuesRows = ObjectValues.FindRows(ObjectValuesFilter);
		Ref = GetObjectLinkFromObjectURL(ObjectsRefsRow[RefColumnName]);
		If ValueIsFilled(Ref.DataVersion) Then
			FillingObj = Ref.GetObject();
			FillingObj[TabularSectionName].Clear();
		Else
			Continue;
		EndIf;
		For Each Row In FoundObjectValuesRows Do
			Obj = FillingObj[TabularSectionName].Add();
			For Each Column In ObjectAttributes.Columns Do
				If Row[Column.Name] = "" Then
					Continue;
				EndIf;
				If Column.Name = RefColumnName Then
					Continue;
				EndIf;
				FillTipicalObjectAttributesByValues(Obj, Row, Column);
			EndDo;
		EndDo;
		FillingObj.DataExchange.Load = True;
		FillingObj.Write();
	EndDo;
EndProcedure

&AtClient
Procedure ICheckOrCreateInformationRegisterRecords(Val RegisterName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateInformationRegisterRecordsAtServer(RegisterName, Values);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписи(Val ИмяРегистра, Val Значения) Export
	ICheckOrCreateInformationRegisterRecords(ИмяРегистра, Значения);
EndProcedure

&AtClient
Procedure ICheckOrCreateInformationRegisterRecordsUsingRecordSets(Val RegisterName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateInformationRegisterRecordsAtServer(RegisterName, Values, True);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписиИспользуяНаборыЗаписей(Val ИмяРегистра, Val Значения) Export
	ICheckOrCreateInformationRegisterRecordsUsingRecordSets(ИмяРегистра, Значения);
EndProcedure

&AtClient
Procedure ICheckOrCreateInformationRegisterRecordsUsingRecordSetsWithDataExchangeLoadTrue(Val RegisterName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateInformationRegisterRecordsAtServer(RegisterName, Values, True, True);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписиИспользуяНаборыЗаписейСОбменДаннымиЗагрузкаИстина(Val ИмяРегистра, Val Значения) Export
	ICheckOrCreateInformationRegisterRecordsUsingRecordSetsWithDataExchangeLoadTrue(ИмяРегистра, Значения);
EndProcedure

&AtServerNoContext
Procedure ICheckOrCreateInformationRegisterRecordsAtServer(RegisterName, Values, UseRecordSets = False, DataExchange = False)	
	ObjectValues = GetValueTableFromVanessaTableArray(Values);	
	ObjectAttributes = New ValueTable;
	FillColumnsByStandardAttributes(ObjectAttributes, "InformationRegisters", RegisterName);
	FillColumnsByDimensions(ObjectAttributes, "InformationRegisters", RegisterName);
	FillColumnsByAttributes(ObjectAttributes, "InformationRegisters", RegisterName);
	FillColumnsByResources(ObjectAttributes, "InformationRegisters", RegisterName);
	ColumnsNames = New Array;
	For Each Column In ObjectAttributes.Columns Do
		If ObjectValues.Columns.Find(Column.Name) = Undefined Then
			ColumnsNames.Add(Column.Name);
		EndIf;
	EndDo;
	For Each ColumnName In ColumnsNames Do
		ObjectAttributes.Columns.Delete(ColumnName);
	EndDo;
	
	RegisterMetadata = Metadata.InformationRegisters[RegisterName];
	MasterDimensions = New Array;
	If RegisterMetadata.WriteMode = Metadata.ObjectProperties.RegisterWriteMode.RecorderSubordinate Then
		RecorderColumn = ObjectAttributes.Columns.Find("Recorder");
		If RecorderColumn = Undefined Then
			RecorderColumn = ObjectAttributes.Columns.Find("Регистратор");
		EndIf;
		MasterDimensions.Add(RecorderColumn.Name);		
	ElsIf UseRecordSets Then
		For Each Dimension In RegisterMetadata.Dimensions Do
			If Dimension.Master Then
				MasterDimensions.Add(Dimension.Name);
			EndIf;			
		EndDo;		
		If RegisterMetadata.InformationRegisterPeriodicity <> Metadata.ObjectProperties.InformationRegisterPeriodicity.Nonperiodical Then
			PeriodColumn = ObjectAttributes.Columns.Find("Period");
			If PeriodColumn = Undefined Then
				PeriodColumn = ObjectAttributes.Columns.Find("Период");
			EndIf;
			If PeriodColumn <> Undefined Then
				MasterDimensions.Add(PeriodColumn.Name);
			EndIf;
		EndIf;	
	EndIf;
	
	If MasterDimensions.Count() Then
		MasterDimensionsName = StrConcat(MasterDimensions, ",");
		DimensionsTable = ObjectValues.Copy(, MasterDimensionsName);
		DimensionsTable.GroupBy(MasterDimensionsName);
		DimensionsFilter = New Structure(MasterDimensionsName);
		For Each DimensionsSet In DimensionsTable Do
			RegisterSet = InformationRegisters[RegisterName].CreateRecordSet();		
			FillPropertyValues(DimensionsFilter, DimensionsSet);
			FoundRows = ObjectValues.FindRows(DimensionsFilter);
			For Each MasterDimension In MasterDimensions Do
				ValueType = RegisterSet.Filter[MasterDimension].Value;
				DimensionValue = ParseStringValue(DimensionsSet[MasterDimension], RegisterSet.Filter[MasterDimension].ValueType);					
				RegisterSet.Filter[MasterDimension].Set(DimensionValue);	
			EndDo;
			For Each Row In FoundRows Do
				Obj = RegisterSet.Add();
				For Each Column In ObjectAttributes.Columns Do
					If Row[Column.Name] = "" Then
						Continue;
					EndIf;
					If Column.Name = "LineNumber" Or Column.Name = "НомерСтроки" Then
						Continue;
					EndIf;
					If MasterDimensions.Find(Column.Name) <> Undefined Then
						Obj[Column.Name] = RegisterSet.Filter[Column.Name].Value;
						Continue;
					EndIf;
					FillTipicalObjectAttributesByValues(Obj, Row, Column);
				EndDo;
			EndDo;
			If RegisterSet.Count() Then
				RegisterSet.DataExchange = DataExchange;
				RegisterSet.Write(True);
			EndIf;
		EndDo;
	Else
		For Each Row In ObjectValues Do
			Obj = InformationRegisters[RegisterName].CreateRecordManager();
			For Each Column In ObjectAttributes.Columns Do
				//If Row[Column.Name] = "" Then
				//	Continue;
				//EndIf;
				FillTipicalObjectAttributesByValues(Obj, Row, Column);
			EndDo;
			Obj.Write(True);
		EndDo;
	EndIf;
EndProcedure

&AtClient
Procedure ICheckOrCreateAccumulationRegisterRecords(Val RegisterName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateAccumulationRegisterRecordsAtServer(RegisterName, Values);
EndProcedure

&AtClient
Procedure ЯПроверяюИлиСоздаюДляРегистраНакопленийЗаписи(Val ИмяРегистра, Val Значения) Export
	ICheckOrCreateAccumulationRegisterRecords(ИмяРегистра, Значения);
EndProcedure

&AtServerNoContext
Procedure ICheckOrCreateAccumulationRegisterRecordsAtServer(RegisterName, Values)	
	ObjectValues = GetValueTableFromVanessaTableArray(Values);	
	ObjectAttributes = New ValueTable;
	FillColumnsByStandardAttributes(ObjectAttributes, "AccumulationRegisters", RegisterName);
	FillColumnsByDimensions(ObjectAttributes, "AccumulationRegisters", RegisterName);
	FillColumnsByAttributes(ObjectAttributes, "AccumulationRegisters", RegisterName);
	FillColumnsByResources(ObjectAttributes, "AccumulationRegisters", RegisterName);
	ColumnsNames = New Array;
	For Each Column In ObjectAttributes.Columns Do
		If ObjectValues.Columns.Find(Column.Name) = Undefined Then
			ColumnsNames.Add(Column.Name);
		EndIf;
	EndDo;
	For Each ColumnName In ColumnsNames Do
		ObjectAttributes.Columns.Delete(ColumnName);
	EndDo;
	RecorderColumn = ObjectAttributes.Columns.Find("Recorder");
	If RecorderColumn = Undefined Then
		RecorderColumn = ObjectAttributes.Columns.Find("Регистратор");
	EndIf;
	If RecorderColumn <> Undefined Then
		RecorderColumnName = RecorderColumn.Name;
		RecorderTable = ObjectValues.Copy(, RecorderColumnName);
		RecorderTable.GroupBy(RecorderColumnName);
		For Each RecorderRow In RecorderTable Do
			RegisterSet = AccumulationRegisters[RegisterName].CreateRecordSet();
			RecorderFilter = New Structure;
			RecorderFilter.Insert(RecorderColumnName, RecorderRow[RecorderColumnName]);
			FoundRows = ObjectValues.FindRows(RecorderFilter);
			RecorderRef = GetObjectLinkFromObjectURL(RecorderRow[RecorderColumnName]);
			RegisterSet.Filter[RecorderColumnName].Set(RecorderRef);
			For Each Row In FoundRows Do
				Obj = RegisterSet.Add();
				For Each Column In ObjectAttributes.Columns Do
					If Row[Column.Name] = "" Then
						Continue;
					EndIf;
					If Column.Name = "LineNumber" Or Column.Name = "НомерСтроки" Then
						Continue;
					EndIf;
					If Column.Name = RecorderColumnName Then
						Obj[Column.Name] = RecorderRef;
						Continue;
					EndIf;
					If Column.Name = "RecordType" Or Column.Name = "ВидДвижения" Then
						Obj[Column.Name] = AccumulationRecordType[Row[Column.Name]];
						Continue;
					EndIf;
					FillTipicalObjectAttributesByValues(Obj, Row, Column);
				EndDo;
			EndDo;
			If RegisterSet.Count() Then
				RegisterSet.Write(True);
			EndIf;
		EndDo;
	Else
		For Each Row In ObjectValues Do
			Obj = AccumulationRegisters[RegisterName].CreateRecordManager();
			For Each Column In ObjectAttributes.Columns Do
				If Row[Column.Name] = "" Then
					Continue;
				EndIf;
				FillTipicalObjectAttributesByValues(Obj, Row, Column);
			EndDo;
			Obj.Write(True);
		EndDo;
	EndIf;
EndProcedure

&AtClient
Procedure IRefillConstantByValue(Val ConstantName, Val ConstantValue) Export
	IRefillConstantByValueAtServer(ConstantName, ConstantValue);
EndProcedure

&AtClient
Procedure ЯПерезаполняюКонстантуЗначением(Val ИмяКонстанты, Val ЗначениеКонстанты) Export
	IRefillConstantByValue(ИмяКонстанты, ЗначениеКонстанты);
EndProcedure

&AtServerNoContext
Procedure IRefillConstantByValueAtServer(ConstantName, ConstantValue)
	ConstantData = New Structure;
	ConstantData.Insert("Name", ConstantName);
	ConstantData.Insert("ValueType", Metadata.Constants[ConstantName].Type);
	ConstantData.Insert(ConstantName, ConstantValue);
	FilledValue = New Structure;
	FilledValue.Insert(ConstantName, Constants[ConstantName].Get());
	FillTipicalObjectAttributesByValues(FilledValue, ConstantData, ConstantData);
	Constants[ConstantName].Set(FilledValue[ConstantName]);
EndProcedure

#EndRegion

#Region Events

&AtServer
Procedure ServerCallOnOpen()
	DrawDataListHack();
	FillMetadataType();
	FillMetadata();
EndProcedure

&AtServer
Procedure OnCreateAtServer(Cancel, StandardProcessing)	
	MaxDownstreamDependenciesHierarchyLevel = 1;
EndProcedure

&AtClient
Procedure OnOpen(Cancel)
	If not Initialized Then
		ServerCallOnOpen();
		Initialized = True;
	EndIf;
	FillStepsLanguage();
	LocalizedStringFromServer = LocalizedStringsServer();
EndProcedure

&AtClient
Procedure MetadataListUseOnChange(Item)	
	CurrentRow = Items.MetadataList.CurrentRow;
	MetadataListRow = MetadataList.FindByID(CurrentRow);
	MetadataListRowItems = MetadataListRow.GetItems();
	For Each MetadataListRowItem In MetadataListRowItems Do
		MetadataListRowItem.Use = MetadataListRow.Use;
	EndDo;
EndProcedure

&AtClient
Procedure MetadataListSelection(Item, RowSelected, Field, StandardProcessing)
	CurrentRow = Items.MetadataList.CurrentRow;
	MetadataListRow = MetadataList.FindByID(CurrentRow);
	If MetadataListRow <> Undefined Then
		MetadataListRowParent = MetadataListRow.GetParent();
		If MetadataListRowParent <> Undefined Then
			FillDataList(MetadataListRowParent.Name, MetadataListRow.Name);
		EndIf;
	EndIf;
EndProcedure

&AtClient
Procedure IncludeUpstreamDependenciesDefaultOnChange(Item)
	For Each Row In DataRefs Do
		Row.IncludeUpstreamDependencies = IncludeUpstreamDependenciesDefault;
	EndDo;
EndProcedure

&AtClient
Procedure IncludeDownstreamDependenciesDefaultOnChange(Item)
	For Each Row In DataRefs Do
		Row.IncludeDownstreamDependencies = IncludeDownstreamDependenciesDefault;
	EndDo;
EndProcedure

&AtClient
Procedure GenerateFeature(Command)
	Feature.Очистить();
	Feature.ДобавитьСтроку(GeneratedFeatureFile());
	Items.GroupPages.CurrentPage = Items.GroupPageFeature;
EndProcedure

&AtClient
Procedure GenerateFeatureForRefs(Command)		
	Feature.Очистить();
	Feature.ДобавитьСтроку(GenerateFeatureFileForRefsAtServer());
	Items.GroupPages.CurrentPage = Items.GroupPageFeature;
EndProcedure
	
&AtClient
Procedure SelectDependentItems(Command)
	SelectDependentItemsAtServer();
EndProcedure

&AtClient
Procedure AddObjectByURL(Command)
	Notify = New NotifyDescription("AddObjectByURLContinuation", ThisObject);
	ShowInputString(Notify, "", NStr("ru = 'Введите навигационные ссылки'"), , True);	
EndProcedure

&AtClient
Procedure AddObjectByURLContinuation(Result, AdditionalParameters) Export
	If Result = Undefined Then
		Return;
	EndIf;
	ObjectURLs = StrSplit(Result, Chars.LF + ",", False);
	ObjectRefs = GetObjectLinksFromObjectURLs(ObjectURLs);
	For Each ObjectRef In ObjectRefs Do
		NewRow = DataRefs.Add();
		NewRow.Item = ObjectRef;
		NewRow.IncludeUpstreamDependencies = IncludeUpstreamDependenciesDefault;
		NewRow.IncludeDownstreamDependencies = IncludeDownstreamDependenciesDefault;
	EndDo;
EndProcedure

&НаКлиенте
Procedure StepsLanguageПриИзменении(Элемент)
	FillMetadataType();
	Для Каждого СтрокаДерева Из MetadataList.ПолучитьЭлементы() Цикл
		Для Каждого Элем Из MetadataType Цикл
			Если Элем.Значение = СтрокаДерева.Name Тогда
				СтрокаДерева.Presentation = Элем.Представление;
			КонецЕсли;	 
		КонецЦикла;	 
	КонецЦикла;	 
EndProcedure

&AtClient
Procedure DataRefsOnStartEdit(Item, NewRow, Clone)	
	If NewRow Then
		CurrentRow = Item.CurrentData;
		CurrentRow.IncludeUpstreamDependencies = IncludeUpstreamDependenciesDefault;
		CurrentRow.IncludeDownstreamDependencies = IncludeDownstreamDependenciesDefault;
	EndIf;	
EndProcedure

#EndRegion

#Region Private

&AtServer
Procedure DrawDataListHack()
	DataListValue = New ValueTable();
	DataListValue.Columns.Add("Title", New TypeDescription("String"));
	NewAttributes = New Array;
	For Each Column In DataListValue.Columns Do
		NewAttributes.Add(New FormAttribute(Column.Name, Column.ValueType, "DataList"));
	EndDo;
	ChangeAttributes(NewAttributes);	
	For Each Column In DataListValue.Columns Do
		NewItem = Items.Add("DataList" + Column.Name, Type("FormField"), Items.DataList);
		NewItem.Type = FormFieldType.InputField;
		NewItem.DataPath = "DataList" + "." + Column.Name;
	EndDo;
	ValueToFormAttribute(DataListValue, "DataList");
EndProcedure

&AtServer
Procedure FillMetadataType()
	MetadataType.Clear();
	MetadataType.Add("Constants", RL().s1);
	MetadataType.Add("Catalogs", RL().s2);
	MetadataType.Add("Documents", RL().s3);
	MetadataType.Add("ChartsOfCharacteristicTypes", RL().s4);
	MetadataType.Add("InformationRegisters", RL().s5);
	MetadataType.Add("AccumulationRegisters", RL().s6);
EndProcedure

&AtServer
Procedure FillMetadata()
	MetadataListObject = FormAttributeToValue("MetadataList");
	MetadataListObject.Rows.Clear();
	For Each MetadataTypeItem In MetadataType Do
		MetadataListParentRow = MetadataListObject.Rows.Add();
		MetadataListParentRow.Use = False;
		MetadataListParentRow.Name = MetadataTypeItem.Value;
		MetadataListParentRow.Presentation = MetadataTypeItem.Presentation;
		For Each Data In Metadata[MetadataTypeItem.Value] Do
			MetadataListRow = MetadataListParentRow.Rows.Add();
			MetadataListRow.Use = False;
			MetadataListRow.Name = Data.Name;
			MetadataListRow.Presentation = Data.Synonym;
			If IsBlankString(MetadataListRow.Presentation) Then
				MetadataListRow.Presentation = Data.Name;
			EndIf;	
			MetadataListRow.FullName = MetadataTypeValueSingle(MetadataListParentRow.Name)
										+ "."
										+ MetadataListRow.Name;
		EndDo;
		MetadataListParentRow.Rows.Sort("Presentation");
	EndDo;
	ValueToFormAttribute(MetadataListObject, "MetadataList");
EndProcedure

&AtServer
Procedure FillDataList(Val MetadataTypeValue, Val MetadataValue)	
	DataListValue = FormAttributeToValue("DataList");
	DataListValue.Columns.Clear();
	If MetadataTypeValue = "Catalogs"
		OR MetadataTypeValue = "Documents"
		OR MetadataTypeValue = "ChartsOfCharacteristicTypes" Then
		FillColumnsByStandardAttributes(DataListValue, MetadataTypeValue, MetadataValue);
		FillColumnsByCommonAttributes(DataListValue, MetadataTypeValue, MetadataValue);
		FillColumnsByAttributes(DataListValue, MetadataTypeValue, MetadataValue);
	EndIf;
	
	ExistingAttributes = GetAttributes("DataList");
	OldAttributes = New Array;
	For Each Attribute In ExistingAttributes Do
		OldAttributes.Add(Attribute.Path + "." + Attribute.Name);
		DataListItems = New Array;
		For Each ChildItem In Items.DataList.ChildItems Do
			If ChildItem.Type = FormFieldType.InputField Then
				DataListItems.Add(ChildItem);
			EndIf; 
		EndDo;
		For Each ItemForDelete In DataListItems Do
			Items.Delete(ItemForDelete);
		EndDo;
	EndDo;
	NewAttributes = New Array;
	For Each Column In DataListValue.Columns Do
		NewAttributes.Add(New FormAttribute(Column.Name, Column.ValueType, "DataList"));
	EndDo;
	ChangeAttributes(NewAttributes, OldAttributes);	
	
	For Each Column In DataListValue.Columns Do
		NewItem = Items.Add("DataList" + Column.Name, Type("FormField"), Items.DataList);
		NewItem.Type = FormFieldType.InputField;
		NewItem.DataPath = "DataList" + "." + Column.Name;
	EndDo;
	
	ValueToFormAttribute(DataListValue, "DataList");
		
	DatabaseObjectsValueTable = GetDatabaseObjectsValueTableWithoutTabularSection(MetadataTypeValueSingle(MetadataTypeValue) + "." + MetadataValue);
	
	If DatabaseObjectsValueTable.Count() Then
		DataList.Load(DatabaseObjectsValueTable);
	EndIf;	
EndProcedure

&AtServerNoContext
Function GetDatabaseObjectsValueTableWithoutTabularSection(Val MetadataObjectFullName, Val Refs = Undefined)
	Query = New Query;
	Query.Text = StrTemplate("SELECT ALLOWED *
									|FROM
									|	%1 AS Object"
								, MetadataObjectFullName);
	If Refs <> Undefined Then
		If TypeOf(Refs) <> Type("Array") Then
			RefArray = New Array;
			RefArray.Add(Refs);
		Else
			RefArray = Refs;
		EndIf;
		Query.Text = Query.Text + "
			|WHERE Object.Ref IN (&RefArray)";
		Query.SetParameter("RefArray", RefArray);
	EndIf;
	QueryExecute = Query.Execute();
	If QueryExecute.IsEmpty() Then
		QueryUnload = New ValueTable;		
	Else
		QueryUnload = QueryExecute.Unload();
	EndIf;
	ColumnsNames = New Array;
	For Each Column In QueryUnload.Columns Do
		If Column.ValueType = New TypeDescription("ValueTable") Then
			ColumnsNames.Add(Column.Name);
		EndIf;
	EndDo;
	For Each ColumnName In ColumnsNames Do
		QueryUnload.Columns.Delete(ColumnName);
	EndDo;
	Return QueryUnload;	
EndFunction

&AtServerNoContext
Function GetDatabaseObjectsValueTablesOfTabularSection(Val MetadataObjectFullName, Val Refs = Undefined)
	TabularSections = New Structure;
	Query = New Query;
	Query.Text = StrTemplate("SELECT ALLOWED *
									|FROM
									|	%1 AS Object"
								, MetadataObjectFullName);
	If Refs <> Undefined Then
		If TypeOf(Refs) <> Type("Array") Then
			RefArray = New Array;
			RefArray.Add(Refs);
		Else
			RefArray = Refs;
		EndIf;
		Query.Text = Query.Text + "
			|WHERE Object.Ref IN (&RefArray)";
		Query.SetParameter("RefArray", RefArray);
	EndIf;
	QueryExecute = Query.Execute();
	If QueryExecute.IsEmpty() Then
		QueryUnload = New ValueTable;		
	Else
		QueryUnload = QueryExecute.Unload();
	EndIf;
	For Each Column In QueryUnload.Columns Do
		If Column.ValueType = New TypeDescription("ValueTable") Then
			TabularSectionTable = QueryUnload[0][Column.Name].Copy();
			DeleteUnsupportedValueTableColumn(TabularSectionTable);
			TabularSectionTable.Clear();
			For Each Row In QueryUnload Do
				For Each SubRow In Row[Column.Name] Do
					NewRow = TabularSectionTable.Add();
					FillPropertyValues(NewRow, SubRow);
				EndDo;
			EndDo;
			If TabularSectionTable.Count() Then
				TabularSections.Insert(Column.Name, TabularSectionTable);
			EndIf;
		EndIf;
	EndDo;
	
	Return TabularSections;	
EndFunction

&AtServerNoContext
Function GetDatabaseRegistersValueTable(Val MetadataObjectFullName, Val RecordKeys = Undefined)
	Query = New Query;
	If RecordKeys <> Undefined Then
		If TypeOf(RecordKeys) <> Type("Array") Then
			RecordKeysArray = New Array;
			RecordKeysArray.Add(RecordKeys);
		Else
			RecordKeysArray = RecordKeys;
		EndIf;
		
		RecordKeyFields = New Array;
		RecordKeysTable = New ValueTable;
		RegisterMetadata = Metadata.FindByFullName(MetadataObjectFullName);
		
		For Each Dimension In RegisterMetadata.Dimensions Do
			RecordKeysTable.Columns.Add(Dimension.Name, Dimension.Type);
			RecordKeyFields.Add(Dimension.Name);
		EndDo;	
		If RegisterMetadata.InformationRegisterPeriodicity <> Metadata.ObjectProperties.InformationRegisterPeriodicity.Nonperiodical Then
			RecordKeysTable.Columns.Add("Period", New TypeDescription("Date"));
			RecordKeyFields.Add("Period");
		EndIf;
		If RegisterMetadata.WriteMode = Metadata.ObjectProperties.RegisterWriteMode.RecorderSubordinate Then
			RecordKeysTable.Columns.Add("Recorder", New TypeDescription(Documents.AllRefsType().Types()));
			RecordKeyFields.Add("Recorder");
		EndIf;
		
		For Each RecordKey In RecordKeysArray Do
			FillPropertyValues(RecordKeysTable.Add(), RecordKey);			
		EndDo;
		Query.Text = StrTemplate("SELECT ALLOWED *
			|INTO RecordKeysTable 
			|FROM 
			|	&RecordKeysTable AS RecordKeysTable
			|;
			|SELECT ALLOWED *
			|FROM
			|	%1 AS ObjectReg
			| WHERE (%2) IN (SELECT * FROM RecordKeysTable)"
			, MetadataObjectFullName, StrConcat(RecordKeyFields, ", "));
		Query.SetParameter("RecordKeysTable", RecordKeysTable);
	Else
		Query.Text = StrTemplate("SELECT ALLOWED *
								|FROM
								|	%1 AS ObjectReg"
							, MetadataObjectFullName);

	EndIf;
	QueryExecute = Query.Execute();
	If QueryExecute.IsEmpty() Then
		QueryUnload = New ValueTable;		
	Else
		QueryUnload = QueryExecute.Unload();
	EndIf;
	ColumnsNames = New Array;
	For Each Column In QueryUnload.Columns Do
		If Column.ValueType = New TypeDescription("ValueTable") Then
			ColumnsNames.Add(Column.Name);
		EndIf;
	EndDo;
	For Each ColumnName In ColumnsNames Do
		QueryUnload.Columns.Delete(ColumnName);
	EndDo;
	Return QueryUnload;	
EndFunction

&AtServerNoContext
Procedure DeleteUnsupportedValueTableColumn(ProcessTable)
	UnsupportedColumnNames = New Array;
	UnsupportedColumnNames.Add("LineNumber");
	UnsupportedColumnNames.Add("НомерСтроки");
	For Each UnsupportedColumnName In UnsupportedColumnNames Do
		If ProcessTable.Columns.Find(UnsupportedColumnName) <> Undefined Then
			ProcessTable.Columns.Delete(UnsupportedColumnName);
		EndIf;
	EndDo;
EndProcedure

&AtServerNoContext
Procedure FillColumnsByStandardAttributes(DataListValue, Val MetadataTypeValue, Val MetadataValue)
	For Each Attribute In Metadata[MetadataTypeValue][MetadataValue].StandardAttributes Do
		AttributeType = Attribute.Type;
		DataListValue.Columns.Add(Attribute.Name, New TypeDescription(AttributeType), Attribute.Synonym);
	EndDo;
EndProcedure

&AtServerNoContext
Procedure FillColumnsByCommonAttributes(DataListValue, Val MetadataTypeValue, Val MetadataValue)
	For Each Attribute In Metadata.CommonAttributes Do
		If Attribute.Content.Contains(Metadata[MetadataTypeValue][MetadataValue]) Then
			FindedCommonAttributeContentItem = Attribute.Content.Find(Metadata[MetadataTypeValue][MetadataValue]);
			If FindedCommonAttributeContentItem <> Undefined And FindedCommonAttributeContentItem.Use
				= Metadata.ObjectProperties.CommonAttributeUse.Use Then
				AttributeType = Attribute.Type;
				SupportedTypes = ExcludeUnsupportedType(AttributeType);
				DataListValue.Columns.Add(Attribute.Name, SupportedTypes, Attribute.Synonym);
			EndIf;
		EndIf;
	EndDo;
EndProcedure

&AtServerNoContext
Procedure FillColumnsByAttributes(DataListValue, Val MetadataTypeValue, Val MetadataValue)
	For Each Attribute In Metadata[MetadataTypeValue][MetadataValue].Attributes Do
		AttributeType = Attribute.Type;
		SupportedTypes = ExcludeUnsupportedType(AttributeType);
		DataListValue.Columns.Add(Attribute.Name, SupportedTypes, Attribute.Synonym);
	EndDo;
EndProcedure

&AtServerNoContext
Procedure FillColumnsByDimensions(DataListValue, Val MetadataTypeValue, Val MetadataValue)
	For Each Attribute In Metadata[MetadataTypeValue][MetadataValue].Dimensions Do
		AttributeType = Attribute.Type;
		SupportedTypes = ExcludeUnsupportedType(AttributeType);
		DataListValue.Columns.Add(Attribute.Name, SupportedTypes, Attribute.Synonym);
	EndDo;
EndProcedure

&AtServerNoContext
Procedure FillColumnsByResources(DataListValue, Val MetadataTypeValue, Val MetadataValue)
	For Each Attribute In Metadata[MetadataTypeValue][MetadataValue].Resources Do
		AttributeType = Attribute.Type;
		SupportedTypes = ExcludeUnsupportedType(AttributeType);
		DataListValue.Columns.Add(Attribute.Name, SupportedTypes, Attribute.Synonym);
	EndDo;
EndProcedure

&AtServerNoContext
Procedure FillColumnsByTabularSectionAttributes(DataListValue, Val TabularSectionMetadata)
	For Each Attribute In TabularSectionMetadata Do
		AttributeType = Attribute.Type;
		SupportedTypes = ExcludeUnsupportedType(AttributeType);
		DataListValue.Columns.Add(Attribute.Name, SupportedTypes, Attribute.Synonym);
	EndDo;
EndProcedure

&AtServerNoContext
Function ExcludeUnsupportedType(AttributeType)	
	Return New TypeDescription(AttributeType
									, 
									, "ValueStorage"
									, AttributeType.NumberQualifiers
									, AttributeType.StringQualifiers
									, AttributeType.DateQualifiers
									, AttributeType.BinaryDataQualifiers);
EndFunction

&AtServerNoContext
Function MetadataTypeValueSingle(Val MetadataTypeValue)
	If MetadataTypeValue = "Catalogs" Then
		ReturnValue = "Catalog";
	ElsIf MetadataTypeValue = "Documents" Then
		ReturnValue = "Document";
	ElsIf MetadataTypeValue = "ChartsOfCharacteristicTypes" Then
		ReturnValue = "ChartOfCharacteristicTypes";
	ElsIf MetadataTypeValue = "InformationRegisters" Then
		ReturnValue = "InformationRegister";
	ElsIf MetadataTypeValue = "AccumulationRegisters" Then
		ReturnValue = "AccumulationRegister";
	ElsIf MetadataTypeValue = "Constants" Then
		ReturnValue = "Constant";
	Else
		ReturnValue = "";
	EndIf;
	Return ReturnValue;
EndFunction

&AtServerNoContext
Function MetadataTypeValueEnFromRu(Val MetadataTypeValue)
	If MetadataTypeValue = "Справочник" Then
		ReturnValue = "Catalog";
	ElsIf MetadataTypeValue = "Документ" Then
		ReturnValue = "Document";
	ElsIf MetadataTypeValue = "ПланВидовХарактеристик" Then
		ReturnValue = "ChartOfCharacteristicTypes";
	ElsIf MetadataTypeValue = "РегистрСведений" Then
		ReturnValue = "InformationRegister";
	ElsIf MetadataTypeValue = "РегистрНакопления" Then
		ReturnValue = "AccumulationRegister";
	ElsIf MetadataTypeValue = "Константа" Then
		ReturnValue = "Constant";
	Else
		ReturnValue = MetadataTypeValue;
	EndIf;
	Return ReturnValue;
EndFunction

&AtServerNoContext
Function MetadataTypeValueRuFromEn(Val MetadataTypeValue)
	If MetadataTypeValue = "Catalog" Then
		ReturnValue = "Справочник";
	ElsIf MetadataTypeValue = "Document" Then
		ReturnValue = "Документ";
	ElsIf MetadataTypeValue = "ChartOfCharacteristicTypes" Then
		ReturnValue = "ПланВидовХарактеристик";
	ElsIf MetadataTypeValue = "InformationRegister" Then
		ReturnValue = "РегистрСведений";
	ElsIf MetadataTypeValue = "AccumulationRegister" Then
		ReturnValue = "РегистрНакопления";
	ElsIf MetadataTypeValue = "Constant" Then
		ReturnValue = "Константа";
	Else
		ReturnValue = MetadataTypeValue;
	EndIf;
	Return ReturnValue;
EndFunction

&AtServerNoContext
Function GetObjectLinkFromObjectURL(ObjectURL)
	Five = 5;
	Nine = 9;
	Eleven = 11;
    FirstDot = StrFind(ObjectURL, "e1cib/data/");
    Predefined = StrFind(ObjectURL, "?refName=");
    If Predefined Then
		SecondDot = Predefined;
	Else
    	SecondDot = StrFind(ObjectURL, "?ref=");
    EndIf;    
    TypePresentation = Mid(ObjectURL, FirstDot + Eleven, SecondDot - FirstDot - Eleven);
    If Predefined Then
    	ValueTemplate = ValueToStringInternal(PredefinedValue(TypePresentation + "." + Mid(ObjectURL, SecondDot + Nine)));
    	LinkValue = ValueTemplate;
    Else
    	ValueTemplate = ValueToStringInternal(PredefinedValue(TypePresentation + ".EmptyRef"));
    	LinkValue = StrReplace(ValueTemplate, "00000000000000000000000000000000", Mid(ObjectURL, SecondDot + Five));
    EndIf;
    Return ValueFromStringInternal(LinkValue);    
EndFunction

&AtServerNoContext
Function GetObjectLinksFromObjectURLs(ObjectURLs)
	ObjectLinks = New Array;	
	For Each ObjectURL In ObjectURLs Do
		ObjectLinks.Add(GetObjectLinkFromObjectURL(ObjectURL));	
	EndDo;
	Return ObjectLinks;
EndFunction

&AtServerNoContext
Function GetObjectLinkBySearchString(Manager, SearchString)
	
	ValueList = Manager.GetChoiceData(New Structure("SearchString", SearchString));
	Return ?(ValueIsFilled(ValueList), ValueList[0].Value, Undefined);
	
EndFunction

&AtServerNoContext
Function GetValueTableFromVanessaTableArray(Val TableArray)
	Two = 2;
	ReturnValue = New ValueTable();
	If TableArray.Count() < Two Then
		Return ReturnValue;
	EndIf;
	
	ColumnsNames = TableArray[0];
	For Each ColumnData In ColumnsNames Do
		ReturnValue.Columns.Add(ColumnData.Value, New TypeDescription("String"));
	EndDo;
	TableArray.Delete(0);
	For Each Row In TableArray Do
		NewRow = ReturnValue.Add();
		For Each ColumnData In ColumnsNames Do
			CellValue = Row[ColumnData.Key];
			CellValue = StrReplace(CellValue, "\\'", "\");
			CellValue = StrReplace(CellValue, "\n", Chars.LF);
			CellValue = StrReplace(CellValue, "\'", "'");
			NewRow[ColumnData.Value] = CellValue;
		EndDo; 
	EndDo;
	
	Return ReturnValue;
EndFunction

&AtServer
Procedure SelectDependentItemsAtServer()
	MetadataListValue = FormAttributeToValue("MetadataList");
	ProcessingDependencies = New Array;
	Dependencies = New Array;
	For Each MetadataListParentRow In MetadataListValue.Rows Do
		For Each MetadataListRow In MetadataListParentRow.Rows Do
			If MetadataListRow.Use Then				
				MetadataObject = Metadata.FindByFullName(MetadataListRow.FullName);				
				ProcessingDependencies.Add(MetadataObject);
				Dependencies.Add(MetadataObject);
			EndIf;
		EndDo;
	EndDo;
	ProcessingDependenciesLoop(ProcessingDependencies, Dependencies);
	DependenciesNames = New Array;
	For Each Dependence In Dependencies Do
		DependenceNameParts = StrSplit(Dependence.FullName(), ".");
		DependenceName = MetadataTypeValueEnFromRu(DependenceNameParts[0]) + "." + DependenceNameParts[1];
		DependenciesNames.Add(DependenceName);
	EndDo;
	For Each ParentItem In MetadataList.GetItems() Do
		For Each Item In ParentItem.GetItems() Do
			If DependenciesNames.Find(Item.FullName) <> Undefined Then
				Item.Use = True;
			EndIf;
		EndDo;
	EndDo;
EndProcedure

&AtServerNoContext
Procedure ProcessingDependenciesLoop(ProcessingDependencies, Dependencies)
	LoopProtect = 10000;
	ProcessedTypes = New Array;
	While ProcessingDependencies.Count()
		And LoopProtect Do
		MetadataObjectFullName = ProcessingDependencies[0].FullName();
		ObjectData = GetDatabaseObjectsValueTableWithoutTabularSection(MetadataObjectFullName);
		FillDependencies(ObjectData, ProcessingDependencies, Dependencies, ProcessedTypes);
		TabularSections = GetDatabaseObjectsValueTablesOfTabularSection(MetadataObjectFullName);
		For Each TabularSection In TabularSections Do
			ObjectData = TabularSection.Value;
			FillDependencies(ObjectData, ProcessingDependencies, Dependencies, ProcessedTypes);
		EndDo;
		ProcessingDependencies.Delete(0);
		LoopProtect = LoopProtect - 1;
	EndDo;
EndProcedure

&AtServerNoContext
Procedure FillDependencies(ObjectData, ProcessingDependencies, Dependencies, ProcessedTypes)
	For Each Row In ObjectData Do
		For Each Column In ObjectData.Columns Do
			If isUnsupportedAttribute(Column.Name) Then
				Continue;
			EndIf;
			DataValue = Row[Column.Name];
			DataValueTypeOf = TypeOf(DataValue);
			If ProcessedTypes.Find(DataValueTypeOf) <> Undefined Then
				Continue;
			EndIf;
			MetadataObject = Metadata.FindByType(DataValueTypeOf);
			If isMetadataObjectAndDataValueNotEmpty(MetadataObject, DataValue)
				And Dependencies.Find(MetadataObject) = Undefined Then
				ProcessingDependencies.Add(MetadataObject);
				Dependencies.Add(MetadataObject);
				ProcessedTypes.Add(DataValueTypeOf);
			EndIf;
		EndDo;
	EndDo;
EndProcedure

&AtServer
Function GetRefsWithDependencies()
	// Get a copy of DataRefs table, but without "Item" column's type constraints,
	// so we can put there objects of other types, for example - RecordKey.
	ItemsTable = New ValueTable;
    ItemsTable.Columns.Add("Item");
	ItemsTable.Columns.Add("IncludeUpstreamDependencies");
	ItemsTable.Columns.Add("IncludeDownstreamDependencies");
    For Each TableRow In DataRefs Do
		FillPropertyValues(ItemsTable.Add(), TableRow);
    EndDo;
	
	Dependencies = ItemsTable.Copy();
	
	ProcessingDependencies = ItemsTable.Copy(New Structure("IncludeUpstreamDependencies", True));
	ProcessingUpstreamDependenciesLoopForObjects(ProcessingDependencies, Dependencies);
	
	ProcessingDependencies = ItemsTable.Copy(New Structure("IncludeDownstreamDependencies", True));
	ProcessingDownstreamDependenciesLoopForObjects(ProcessingDependencies, Dependencies, MaxDownstreamDependenciesHierarchyLevel);
	
	Dependencies.GroupBy("Item");
	Return Dependencies.UnloadColumn("Item");
EndFunction

&AtServerNoContext
Procedure ProcessingUpstreamDependenciesLoopForObjects(ProcessingDependencies, Dependencies)
	LoopProtect = 10000;
	While ProcessingDependencies.Count() And LoopProtect Do
		ItemsByTypes = GroupItemsByType(ProcessingDependencies.UnloadColumn("Item"));
		For Each KeyValuePair In ItemsByTypes Do 
			CurrentDependences = KeyValuePair.Value;
			MetadataObjectFullName = CurrentDependences[0].Metadata().FullName();
			ObjectData = GetDatabaseObjectsValueTableWithoutTabularSection(MetadataObjectFullName, CurrentDependences);
			FillDependenciesForObjects(ObjectData, ProcessingDependencies, Dependencies);
			TabularSections = GetDatabaseObjectsValueTablesOfTabularSection(MetadataObjectFullName, CurrentDependences);
			For Each TabularSection In TabularSections Do
				ObjectData = TabularSection.Value;
				FillDependenciesForObjects(ObjectData, ProcessingDependencies, Dependencies);
			EndDo;
			For Each Item In CurrentDependences Do
				ProcessingDependencies.Delete(ProcessingDependencies.Find(Item, "Item"));	
			EndDo;
		EndDo;
		LoopProtect = LoopProtect - 1;
	EndDo;
EndProcedure

&AtServerNoContext
Procedure ProcessingDownstreamDependenciesLoopForObjects(ProcessingDependencies, Dependencies, Val LoopsRemaining = 1)
	ProcessedDependences = New Map;
	While ProcessingDependencies.Count() And LoopsRemaining Do
		CurrentProcessingDependencies = ProcessingDependencies.UnloadColumn("Item");
		FoundObjects = FindByRef(CurrentProcessingDependencies).UnloadColumn(1);
		ObjectsByType = GroupItemsByType(FoundObjects);
		For Each KeyValuePair In ObjectsByType Do 
			CurrentObjects = KeyValuePair.Value;
			MetadataObjectFullName = CurrentObjects[0].Metadata().FullName();
			MetadataClass = MetadataTypeValueEnFromRu(StrSplit(MetadataObjectFullName, ".")[0]);		
			For Each DataValue In CurrentObjects Do
				If DataValue = Undefined
				 Or ProcessedDependences[DataValue] <> Undefined
				 Or Dependencies.Find(DataValue, "Item") <> Undefined Then
					Continue;
				EndIf;
				Dependencies.Add().Item = DataValue;
				If Not StrEndsWith(MetadataClass, "Register") Then
					ProcessingDependencies.Add().Item = DataValue;
				EndIf;		
			EndDo;	
		EndDo;	
		For Each Item In CurrentProcessingDependencies Do
			ProcessingDependencies.Delete(ProcessingDependencies.Find(Item, "Item"));
			ProcessedDependences.Insert(Item, Item);
		EndDo;
		LoopsRemaining = LoopsRemaining - 1;
	EndDo;
EndProcedure

&AtServerNoContext
Procedure FillDependenciesForObjects(ObjectData, ProcessingDependencies, Dependencies)
	For Each Row In ObjectData Do
		For Each Column In ObjectData.Columns Do
			If isUnsupportedAttribute(Column.Name) Then
				Continue;
			EndIf;
			DataValue = Row[Column.Name];
			XMLType = XMLTypeOf(DataValue);
			If XMLType = Undefined Then
				Continue;
			EndIf;
			TypeName = XMLType.TypeName;
			If Not (StrStartsWith(TypeName, "CatalogRef") Or StrStartsWith(TypeName, "DocumentRef") Or StrStartsWith(TypeName, "ChartOfCharacteristicTypesRef"))
			 Or DataValue.IsEmpty()
			 Or Dependencies.Find(DataValue, "Item") <> Undefined Then
				Continue;
			EndIf;		
			PredefinedCheck = New Structure;
			PredefinedCheck.Insert("Predefined", Undefined);
			FillPropertyValues(PredefinedCheck, DataValue);
			If PredefinedCheck.Predefined <> Undefined And PredefinedCheck.Predefined Then
				Continue;
			EndIf;
			ProcessingDependencies.Add().Item = DataValue;
			Dependencies.Add().Item = DataValue;
		EndDo;
	EndDo;
EndProcedure

&AtServerNoContext
Function EnumNameByRef(RefData) Export
	RefNameType = RefData.Metadata().Name;
	ValueIndex = Enums[RefNameType].IndexOf(RefData);
	Return Metadata.Enums[RefNameType].EnumValues[ValueIndex].Name;
EndFunction

&AtServerNoContext
Procedure FillTipicalObjectAttributesByValues(Obj, Row, Column)
	If Not IsWritableObjectField(Obj, Column.Name) Then
		Return;
	EndIf;
	Obj[Column.Name] = ParseStringValue(Row[Column.Name], Column.ValueType);
EndProcedure

&AtServerNoContext
Function ParseStringValue(Val StringValue, Val ValueType)
	If ValueType.ContainsType(Type("Boolean"))
		And (StringValue = "True"
			Or StringValue = "False") Then
		Return ?(StringValue = "True", True, False);
	EndIf;
	If Left(StringValue, 10) = "e1cib/data" Then
		Return GetObjectLinkFromObjectURL(StringValue);
	EndIf;
	If Left(StringValue, 4) = "Enum" And StrOccurrenceCount(StringValue, ".") = 2 Then
		Return PredefinedValue(StringValue);
	EndIf;
	If TypeOf(StringValue) = Type("String")
		And (StringValue = "ValueStorage"
		or StringValue = "ХранилищеЗначения")Then
		Return Undefined;
	EndIf;
	XMLTypeName = XMLType(ValueType.Types()[0]).TypeName;
	XMLTypeNameParts = StrSplit(XMLTypeName, ".");
	MetadataClass = XMLTypeNameParts[0];
	If StrEndsWith(MetadataClass, "Ref") And ValueIsFilled(StringValue) Then
		Manager = New(Left(MetadataClass, StrLen(MetadataClass) - 3) + "Manager." + XMLTypeNameParts[1]);
		Link = GetObjectLinkBySearchString(Manager, StringValue);
		If Link <> Undefined Then
			Return Link;
		EndIf;
	EndIf;
	ValueLen = StrLen(StringValue);
	If ValueLen = 36
		And StrOccurrenceCount(StringValue, "-") = 4 Then
		Return New UUID(StringValue);
	EndIf;
	If (ValueLen = 18 Or ValueLen = 19)
		And StrOccurrenceCount(StringValue, ".") = 2
		And StrOccurrenceCount(StringValue, ":") = 2 Then
		DateString = Mid(StringValue, 7, 4)
					+ Mid(StringValue, 4, 2)
					+ Mid(StringValue, 1, 2)
					+ ?(ValueLen = 18, "0", "") 
					+ StrReplace(Mid(StringValue, 12), ":", "");
		Return Date(DateString);
	EndIf;
	Return StringValue;
EndFunction

&AtClient
Procedure AddStepsByLanguage(Vanessa, AllTests, LangCode)
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s1a_" + LangCode]
										, LocalizedStringsClient()["s1b_" + LangCode]
										, LocalizedStringsClient()["s1c_" + LangCode]
										, LocalizedStringsClient()["s1d_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s2a_" + LangCode]
										, LocalizedStringsClient()["s2b_" + LangCode]
										, StrTemplate(ScenarioCatalogActionString(LangCode, ThisObject.UseDataExhangeLoadTrue), LocalizedStringsClient()["s2d_" + LangCode], "", "")
										, LocalizedStringsClient()["s2f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s3a_" + LangCode]
										, LocalizedStringsClient()["s3b_" + LangCode]
										, StrTemplate(ScenarioDocumentActionString(LangCode, ThisObject.UseDataExhangeLoadTrue), LocalizedStringsClient()["s3d_" + LangCode], "", "")
										, LocalizedStringsClient()["s3f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s4a_" + LangCode]
										, LocalizedStringsClient()["s4b_" + LangCode]
										, StrTemplate(ScenarioChartOfCharacteristicTypesActionString(LangCode, ThisObject.UseDataExhangeLoadTrue), LocalizedStringsClient()["s4d_" + LangCode], "", "")
										, LocalizedStringsClient()["s4f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s5a_" + LangCode]
										, LocalizedStringsClient()["s5b_" + LangCode]
										, StrTemplate(ScenarioInformationRegisterActionString(LangCode), LocalizedStringsClient()["s5d_" + LangCode], "", "")
										, LocalizedStringsClient()["s5f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s6a_" + LangCode]
										, LocalizedStringsClient()["s6b_" + LangCode]
										, StrTemplate(ScenarioAccumulationRegisterActionString(LangCode), LocalizedStringsClient()["s6d_" + LangCode], "", "")
										, LocalizedStringsClient()["s6f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s7a_" + LangCode]
										, LocalizedStringsClient()["s7b_" + LangCode]
										, StrTemplate(ScenarioTabularSectionActionString(LangCode), LocalizedStringsClient()["s7d_" + LangCode], "", "")
										, LocalizedStringsClient()["s7e_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s8a_" + LangCode]
										, LocalizedStringsClient()["s8b_" + LangCode]
										, LocalizedStringsClient()["s8c_" + LangCode]
										, LocalizedStringsClient()["s8d_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s10a_" + LangCode]
										, LocalizedStringsClient()["s10b_" + LangCode]
										, StrTemplate(ScenarioConstantActionString(LangCode), LocalizedStringsClient()["s10d_" + LangCode], LocalizedStringsClient()["s10g_" + LangCode])
										, LocalizedStringsClient()["s10f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s12a_" + LangCode]
										, LocalizedStringsClient()["s12b_" + LangCode]
										, StrTemplate(LocalizedStringsClient()["s12c_" + LangCode], LocalizedStringsClient()["s12d_" + LangCode], "", "")
										, LocalizedStringsClient()["s12f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s13a_" + LangCode]
										, LocalizedStringsClient()["s13b_" + LangCode]
										, StrTemplate(ScenarioCatalogActionString(LangCode, ThisObject.UseDataExhangeLoadTrue), LocalizedStringsClient()["s13d_" + LangCode], "", "")
										, LocalizedStringsClient()["s13f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s14a_" + LangCode]
										, LocalizedStringsClient()["s14b_" + LangCode]
										, StrTemplate(ScenarioDocumentActionString(LangCode, ThisObject.UseDataExhangeLoadTrue), LocalizedStringsClient()["s14d_" + LangCode], "", "")
										, LocalizedStringsClient()["s14f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s15a_" + LangCode]
										, LocalizedStringsClient()["s15b_" + LangCode]
										, StrTemplate(ScenarioChartOfCharacteristicTypesActionString(LangCode, ThisObject.UseDataExhangeLoadTrue), LocalizedStringsClient()["s15d_" + LangCode], "", "")
										, LocalizedStringsClient()["s15f_" + LangCode]
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, LocalizedStringsClient()["s16a_" + LangCode]
										, LocalizedStringsClient()["s16b_" + LangCode]
										, StrTemplate(LocalizedStringsClient()["s16c_" + LangCode], LocalizedStringsClient()["s16d_" + LangCode], "", "")
										, LocalizedStringsClient()["s16f_" + LangCode]
										, "");
EndProcedure

&AtClient
Procedure FillStepsLanguage()
	If Not ValueIsFilled(ThisObject.StepsLanguage) Then
		ThisObject.StepsLanguage = "en";
	EndIf;
EndProcedure

&AtServerNoContext
Function GroupItemsByType(ItemArray)
	ItemsByType = New Map();
	For Each ArrayItem In ItemArray Do
		ItemType = TypeOf(ArrayItem);
		ItemsOfType = ItemsByType[ItemType];
		If ItemsOfType = Undefined Then
			ItemsOfType = New Array;
			ItemsByType[ItemType] = ItemsOfType;
		EndIf;
		ItemsOfType.Add(ArrayItem);
	EndDo;
	Return ItemsByType;
EndFunction

&AtServerNoContext
Function IsWritableObjectField(Obj, FieldName)
	//TO-DO: Check by object
	ReturnValue = True;
	If Lower(FieldName) = "isfolder"
		or Lower(FieldName) = "этогруппа" Then
		ReturnValue = False;
	EndIf;
	Return ReturnValue;
EndFunction

#Region GenerateFeature

#Region FeatureFile

&AtServer
Function GeneratedFeatureFile()
	LangCode = ThisObject.StepsLanguage;
	ReturnValue = New Array;	
	Scenarious = New Array;		
	MetadataListValue = FormAttributeToValue("MetadataList");
	
	For Each MetadataListParentRow In MetadataListValue.Rows Do
		For Each MetadataListRow In MetadataListParentRow.Rows Do
			If Not MetadataListRow.Use Then
				Continue;
			EndIf;
			
			If MetadataListParentRow.Name = "Constants" Then
				MarkdownConstantValue = GetMarkdownConstantValue(MetadataListRow.Name);
				If Not ValueIsFilled(MarkdownConstantValue) Then
					Continue;
				EndIf;
				Scenarious.Add(ScenarioConstant(MetadataListRow.Name, MarkdownConstantValue, LangCode));
			Else
				MarkdownTables = GetMarkdownTables(MetadataTypeValueSingle(MetadataListParentRow.Name),
					MetadataListRow.Name);
				ContinueFlag = True;
				If ValueIsFilled(MarkdownTables.ObjectDataMarkdownTable) Then
					ContinueFlag = False;
				EndIf;
				If ContinueFlag And MarkdownTables.TabularSectionsDataMarkdownTables.Count() Then
					For Each MarkdownTable In MarkdownTables.TabularSectionsDataMarkdownTables Do
						If ValueIsFilled(MarkdownTable.Value) Then
							ContinueFlag = False;
							Break;
						EndIf;
					EndDo;
				EndIf;
				If ContinueFlag Then
					Continue;
				EndIf;
				If MetadataListParentRow.Name = "Catalogs" Then
					Scenarious.Add(ScenarioCatalog(MetadataListRow.Name, MarkdownTables, LangCode, ThisObject.UseDataExhangeLoadTrue));
				ElsIf MetadataListParentRow.Name = "Documents" Then
					Scenarious.Add(ScenarioDocument(MetadataListRow.Name, MarkdownTables, LangCode, ThisObject.UseDataExhangeLoadTrue));
				ElsIf MetadataListParentRow.Name = "ChartsOfCharacteristicTypes" Then
					Scenarious.Add(ScenarioChartOfCharacteristicTypes(MetadataListRow.Name, MarkdownTables, LangCode, ThisObject.UseDataExhangeLoadTrue));
				ElsIf MetadataListParentRow.Name = "InformationRegisters" Then
					Scenarious.Add(ScenarioInformationRegister(MetadataListRow.Name, MarkdownTables, LangCode));
				ElsIf MetadataListParentRow.Name = "AccumulationRegisters" Then
					Scenarious.Add(ScenarioAccumulationRegister(MetadataListRow.Name, MarkdownTables, LangCode));
				Else
					Scenarious.Add("");
				EndIf;
			EndIf;
		EndDo;
	EndDo;
	
	ReturnValue.Add(FeatureTitle(LangCode));
	For Each Scenario In Scenarious Do
		ReturnValue.Add(Scenario);
	EndDo;
	
	Return StrConcat(ReturnValue, Chars.LF);
EndFunction

&AtServer
Function GenerateFeatureFileForRefsAtServer()	
	LangCode = ThisObject.StepsLanguage;
	ReturnValue = New Array;	
	Scenarious = New Array;
	AddComments = Not DontAddCommentsWithMetadataName;
	
	Objects = GetRefsWithDependencies();
	ObjectsByTypes = GroupItemsByType(Objects);
	
	ObjectsByTypesTable = New ValueTable;
	ObjectsByTypesTable.Columns.Add("TypePriority");
	ObjectsByTypesTable.Columns.Add("MetadataClass");
	ObjectsByTypesTable.Columns.Add("MetadataObjectName");
	ObjectsByTypesTable.Columns.Add("Objects");
	For Each KeyValuePair In ObjectsByTypes Do
		ObjectsOfType = KeyValuePair.Value;
		
		MetadataFullName = ObjectsOfType[0].Metadata().FullName();
		MetadataFullNameParts = StrSplit(MetadataFullName, ".");
		MetadataClass = MetadataTypeValueEnFromRu(MetadataFullNameParts[0]);
		MetadataObjectName = MetadataFullNameParts[1];
		
		If MetadataClass = "Catalog" Then
			TypePriority = 1;
		ElsIf MetadataClass = "ChartOfCharacteristicTypes" Then
			TypePriority = 2;
		ElsIf MetadataClass = "InformationRegister" Then
			TypePriority = 3;
		ElsIf MetadataClass = "AccumulationRegister" Then
			TypePriority = 4;
		ElsIf MetadataClass = "Document" Then
			TypePriority = 5;
		Else
			Raise NStr("ru = 'Неподдерживаемый класс метаданных!'");
		EndIf;
		
		NewRow = ObjectsByTypesTable.Add();
		NewRow.TypePriority = TypePriority;
		NewRow.MetadataClass = MetadataClass;
		NewRow.MetadataObjectName = MetadataObjectName;
		NewRow.Objects = ObjectsOfType;
	EndDo;
	ObjectsByTypesTable.Sort("TypePriority, MetadataObjectName");
	
	Scenario = New Array;	
	Scenario.Add(LocalizedStringsServer()["s11a_" + LangCode]);
	Scenario.Add("");
	
	For Each TableRow In ObjectsByTypesTable Do
		MetadataClass = TableRow.MetadataClass;
		MetadataObjectName = TableRow.MetadataObjectName;
	
		MarkdownTables = GetMarkdownTables(MetadataClass, MetadataObjectName, TableRow.Objects);
		
		If IsBlankString(MarkdownTables.ObjectDataMarkdownTable) Then
			Continue;
		EndIf;

		If MetadataClass = "Catalog" Then
			ScenarioActionString = ScenarioCatalogActionString(LangCode, ThisObject.UseDataExhangeLoadTrue);
		ElsIf MetadataClass = "Document" Then
			ScenarioActionString = ScenarioDocumentActionString(LangCode, ThisObject.UseDataExhangeLoadTrue);
		ElsIf MetadataClass = "ChartOfCharacteristicTypes" Then
			ScenarioActionString = ScenarioChartOfCharacteristicTypesActionString(LangCode, ThisObject.UseDataExhangeLoadTrue);
		ElsIf MetadataClass = "InformationRegister" Then
			ScenarioActionString = ScenarioInformationRegisterActionString(LangCode);
		ElsIf MetadataClass = "AccumulationRegister" Then
			ScenarioActionString = ScenarioAccumulationRegisterActionString(LangCode);
		EndIf;
		
		If AddComments Then
			LocalizedMetadataClass = ?(LangCode = "ru", MetadataTypeValueRuFromEn(MetadataClass), MetadataClass);
			Scenario.Add(Chars.Tab + "// " + LocalizedMetadataClass + "." + MetadataObjectName);
			Scenario.Add("");
		EndIf;	
		Scenario.Add(Chars.Tab + StrTemplate(ScenarioActionString, """" + MetadataObjectName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
		For Each DataValue In MarkdownTables.TabularSectionsDataMarkdownTables Do
			Scenario.Add("");
			Scenario.Add(Chars.Tab + StrTemplate(ScenarioTabularSectionActionString(LangCode), """" + DataValue.Key + """", Chars.LF, DataValue.Value));
		EndDo;
		Scenario.Add("");
	EndDo;
	
	Scenario = StrConcat(Scenario, Chars.LF);
		
	ReturnValue.Add(FeatureTitle(LangCode, True));
	ReturnValue.Add(Scenario);
	
	Return StrConcat(ReturnValue, Chars.LF);	
EndFunction

&AtServerNoContext
Function FeatureTitle(LangCode, ObjectsMode = False)
	TitleString = New Array;
	TitleString.Add(LocalizedStringsServer()["s9a_" + LangCode]);
	TitleString.Add(LocalizedStringsServer()["s9b_" + LangCode]);
	TitleString.Add("");
	TitleString.Add(LocalizedStringsServer()[?(ObjectsMode, "s9f_", "s9c_") + LangCode]);
	TitleString.Add("");
	TitleString.Add(LocalizedStringsServer()["s9d_" + LangCode]);
	TitleString.Add(Chars.Tab + LocalizedStringsServer()["s9e_" + LangCode]);
	TitleString.Add("");
	Return StrConcat(TitleString, Chars.LF);
EndFunction

#EndRegion

#Region Scenario_Catalog

&AtServerNoContext
Function ScenarioCatalog(MetadataName, MarkdownTables, LangCode, DataExchangeLoad)
	Scenario = New Array;	
	Scenario.Add(StrTemplate(LocalizedStringsServer()[?(DataExchangeLoad, "s13e_", "s2e_") + LangCode], MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioCatalogActionString(LangCode, DataExchangeLoad), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	For Each DataValue In MarkdownTables.TabularSectionsDataMarkdownTables Do
		Scenario.Add("");
		Scenario.Add(Chars.Tab + StrTemplate(ScenarioTabularSectionActionString(LangCode), """" + DataValue.Key + """", Chars.LF, DataValue.Value));
	EndDo;
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioCatalogActionString(LangCode, DataExchangeLoad)
	ReturnValue = LocalizedStringsServer()[?(DataExchangeLoad, "s13c_", "s2c_") + LangCode];
	Return ReturnValue;
EndFunction

#EndRegion

#Region Scenario_Document

&AtServerNoContext
Function ScenarioDocument(MetadataName, MarkdownTables, LangCode, DataExchangeLoad)
	Scenario = New Array;	
	Scenario.Add(StrTemplate(LocalizedStringsServer()[?(DataExchangeLoad, "s14e_", "s3e_") + LangCode], MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioDocumentActionString(LangCode, DataExchangeLoad), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	For Each DataValue In MarkdownTables.TabularSectionsDataMarkdownTables Do
		Scenario.Add("");
		Scenario.Add(Chars.Tab + StrTemplate(ScenarioTabularSectionActionString(LangCode), """" + DataValue.Key + """", Chars.LF, DataValue.Value));
	EndDo;
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioDocumentActionString(LangCode, DataExchangeLoad)
	ReturnValue = LocalizedStringsServer()[?(DataExchangeLoad, "s14c_", "s3c_") + LangCode];
	Return ReturnValue;
EndFunction

#EndRegion

#Region Scenario_ChartOfCharacteristicTypes

&AtServerNoContext
Function ScenarioChartOfCharacteristicTypes(MetadataName, MarkdownTables, LangCode, DataExchangeLoad)
	Scenario = New Array;	
	Scenario.Add(StrTemplate(LocalizedStringsServer()[?(DataExchangeLoad, "s15e_", "s4e_") + LangCode], MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioChartOfCharacteristicTypesActionString(LangCode, DataExchangeLoad), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	For Each DataValue In MarkdownTables.TabularSectionsDataMarkdownTables Do
		Scenario.Add("");
		Scenario.Add(Chars.Tab + StrTemplate(ScenarioTabularSectionActionString(LangCode), """" + DataValue.Key + """", Chars.LF, DataValue.Value));
	EndDo;
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioChartOfCharacteristicTypesActionString(LangCode, DataExchangeLoad)
	ReturnValue = LocalizedStringsServer()[?(DataExchangeLoad, "s15c_", "s4c_") + LangCode];
	Return ReturnValue;
EndFunction

#EndRegion

#Region Scenario_TabularSection

&AtServerNoContext
Function ScenarioTabularSectionActionString(LangCode)
	ReturnValue = LocalizedStringsServer()["s7c_" + LangCode];
	Return ReturnValue;
EndFunction

#EndRegion

#Region Scenario_InformationRegister

&AtServerNoContext
Function ScenarioInformationRegister(MetadataName, MarkdownTables, LangCode)
	Scenario = New Array;
	Scenario.Add(StrTemplate(LocalizedStringsServer()["s5e_" + LangCode], MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioInformationRegisterActionString(LangCode), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioInformationRegisterActionString(LangCode)
	ReturnValue = LocalizedStringsServer()["s5c_" + LangCode];
	Return ReturnValue;
EndFunction

#EndRegion

#Region Scenario_AccumulationRegister

&AtServerNoContext
Function ScenarioAccumulationRegister(MetadataName, MarkdownTables, LangCode)
	Scenario = New Array;
	Scenario.Add(StrTemplate(LocalizedStringsServer()["s6e_" + LangCode], MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioAccumulationRegisterActionString(LangCode), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioAccumulationRegisterActionString(LangCode)
	ReturnValue = LocalizedStringsServer()["s6c_" + LangCode];
	Return ReturnValue;
EndFunction

#EndRegion

#Region Scenario_Constant

&AtServerNoContext
Function ScenarioConstant(MetadataName, MarkdownConstantValue, LangCode)
	Scenario = New Array;	
	Scenario.Add(StrTemplate(LocalizedStringsServer()["s10e_" + LangCode], MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioConstantActionString(LangCode), """" + MetadataName + """", MarkdownConstantValue));
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioConstantActionString(LangCode)
	ReturnValue = LocalizedStringsServer()["s10c_" + LangCode];
	Return ReturnValue;
EndFunction

#EndRegion

#Region MarkdownTable

&AtServerNoContext
Function GetMarkdownTables(Val MetadataObjectPropertyName, Val MetadataObjectName, Val Objects = Undefined)
	ReturnValue = New Structure();
	IsRegister = StrEndsWith(MetadataObjectPropertyName, "Register");
	If IsRegister Then
		ObjectData = GetDatabaseRegistersValueTable(MetadataObjectPropertyName + "." + MetadataObjectName, Objects);				
	Else
		ObjectData = GetDatabaseObjectsValueTableWithoutTabularSection(MetadataObjectPropertyName + "." + MetadataObjectName, Objects);
	EndIf;
	ObjectDataMarkdownTable = GetMarkdownTable(MetadataObjectPropertyName, MetadataObjectName, ObjectData);
	ReturnValue.Insert("ObjectDataMarkdownTable", ObjectDataMarkdownTable);
	TabularSectionsDataMarkdownTables = New Structure;
	If Not IsRegister Then
		TabularSections = GetDatabaseObjectsValueTablesOfTabularSection(MetadataObjectPropertyName + "." + MetadataObjectName, Objects);
		For Each ItemData In TabularSections Do
			TabularSectionMarkdownTable = GetMarkdownTable(MetadataObjectPropertyName, MetadataObjectName, ItemData.Value);
			TabularSectionsDataMarkdownTables.Insert(ItemData.Key, TabularSectionMarkdownTable);
		EndDo;
	EndIf;
	ReturnValue.Insert("TabularSectionsDataMarkdownTables", TabularSectionsDataMarkdownTables);
	Return ReturnValue;
EndFunction

&AtServerNoContext
Function GetMarkdownTable(Val MetadataObjectPropertyName, Val MetadataObjectName, DataTable)
	ReturnValue = "";
	MarkdownData = New Array;	 
	
	If Not DataTable.Count() Then
		Return ReturnValue;
	EndIf;
	
	MarkdownFirst = New Array;
	MarkdownFirst.Add(Chars.Tab);
	For Each Column In DataTable.Columns Do
		If isUnsupportedAttribute(Column.Name) Then
			Continue;
		EndIf;
		ColumnName = Column.Name;
		MarkdownFirst.Add("|'");
		MarkdownFirst.Add(ColumnName);
		MarkdownFirst.Add("'");
	EndDo;
	If MarkdownFirst.Count() Then
		MarkdownFirst.Add("|");
	EndIf;
	
	MarkdownData.Add(StrConcat(MarkdownFirst));
	For Each Row In DataTable Do
		Markdown = New Array;
		Markdown.Add(Chars.Tab);
		For Each Column In DataTable.Columns Do
			If isUnsupportedAttribute(Column.Name) Then
				Continue;
			EndIf;
			Markdown.Add("|'");
			RowData = GeValuetStringRepresentation(Row[Column.Name]);
			Markdown.Add(RowData);
			Markdown.Add("'");
		EndDo;
		If Markdown.Count() Then
			Markdown.Add("|");
		EndIf;
		MarkdownData.Add(StrConcat(Markdown));
	EndDo;
	
	FormatGerkinTable(MarkdownData);
	ReturnValue = StrConcat(MarkdownData, Chars.LF);
	
	Return ReturnValue;
EndFunction

&AtServerNoContext
Function GeValuetStringRepresentation(DataValue)
	ReturnValue = "";
	DataValueTypeOf = TypeOf(DataValue);
	MetadataObject = Metadata.FindByType(DataValueTypeOf);
	If MetadataObject = Undefined Then
		If DataValueTypeOf = Type("Boolean") Then
			ReturnValue = Format(DataValue, "BF=False; BT=True;");
		Else
			ReturnValue = String(DataValue);
			ReturnValue = StrReplace(ReturnValue, "\", "\\");
			ReturnValue = StrReplace(ReturnValue, Chars.LF, "\n");
			ReturnValue = StrReplace(ReturnValue, Chars.CR, "");
			ReturnValue = StrReplace(ReturnValue, "'", "\'");
		EndIf;
	ElsIf isMetadataObjectAndDataValueNotEmpty(MetadataObject, DataValue) Then
		PredefinedCheck = New Structure;
		PredefinedCheck.Insert("Predefined", Undefined);
		FillPropertyValues(PredefinedCheck, DataValue);		
		If PredefinedCheck.Predefined <> Undefined
			And PredefinedCheck.Predefined Then
			ReturnValue = GetURL(DataValue);
			ReturnValue = Left(ReturnValue, StrFind(ReturnValue, "=") - 1)
							+ "Name="
							+ DataValue.PredefinedDataName;
		Else
			ReturnValue = GetURL(DataValue);
		EndIf;
	ElsIf Metadata.Enums.Contains(MetadataObject) Then
		If Not DataValue.IsEmpty() Then
			ReturnValue = "Enum." + MetadataObject.Name + "." + EnumNameByRef(DataValue);
		EndIf;
	Else
		ReturnValue = "";
	EndIf;
	Return ReturnValue;
EndFunction

&AtServerNoContext
Function isMetadataObjectAndDataValueNotEmpty(MetadataObject, DataValue)
	Return MetadataObject <> Undefined
			And (Metadata.Catalogs.Contains(MetadataObject)
				Or Metadata.Documents.Contains(MetadataObject)
				Or Metadata.ChartsOfCharacteristicTypes.Contains(MetadataObject)
				Or Metadata.ChartsOfAccounts.Contains(MetadataObject)
				Or Metadata.ChartsOfCalculationTypes.Contains(MetadataObject))
			And Not DataValue.IsEmpty();
EndFunction

&AtServerNoContext
Function isUnsupportedAttribute(AttributeName)
	UnsupportedAttributes = New Array;
	UnsupportedAttributes.Add("DataVersion");
	UnsupportedAttributes.Add("ВерсияДанных");
	UnsupportedAttributes.Add("Predefined");
	UnsupportedAttributes.Add("Предопределенный");
	UnsupportedAttributes.Add("PredefinedDataName");
	UnsupportedAttributes.Add("ИмяПредопределенныхДанных");
	UnsupportedAttributes.Add("ValueType");
	UnsupportedAttributes.Add("ТипЗначения");
	Return UnsupportedAttributes.Find(AttributeName) <> Undefined;
EndFunction

&AtServerNoContext
Function SetParametersInExampleString(Val Str)
	StrArray = New Array;
	Str = StrReplace(Str, "\|", "~EscapeVerticalBarr~");
	
	Str = TrimAll(Str);
	If Left(Str, 1) <> "|" Then
		Return StrArray;
	EndIf;	 
	
	If Right(Str, 1) <> "|" Then
		Return StrArray;
	EndIf;	 
	
	Str = Mid(Str, 2);
	Str = Mid(Str, 1, StrLen(Str) - 1);
	
	StrArray = StrSplit(Str, "|");
	
	For Kkk = 0 По StrArray.Count() - 1 Do
		StrArray[Kkk] = TrimAll(StrArray[Kkk]);
		StrArray[Kkk] = StrReplace(StrArray[Kkk], "~EscapeVerticalBarr~", "\|");
	EndDo;
	
	List = New ValueList;
	For Each ArrayItem In StrArray Do
		List.Add(ArrayItem);
	EndDo;
	
	Return  List;
EndFunction

&AtServerNoContext
Procedure FormatGerkinTable(TableArray)
	ParametersArray = SetParametersInExampleString(TableArray[0]);
	ParametersCount = ParametersArray.Count();
	LengthArray = New Array;
	For i = 0 To ParametersCount - 1 Do
		LengthArray.Add(0);
	EndDo;
	
	For Each Row In TableArray Do
		ParametersArray = SetParametersInExampleString(Row);
		
		For Kkk = 0 To LengthArray.Count() - 1 Do
			RowLength = StrLen(TrimAll(ParametersArray.Get(Kkk)));
			If RowLength > LengthArray[Kkk] Then
				LengthArray[Kkk] = RowLength;
			EndIf;	 
		EndDo;
	EndDo;	
	For Ppp = 0 To (TableArray.Count() - 1) Do
		Row = TableArray[Ppp];
		ParametersArray = SetParametersInExampleString(Row);
		ParametersRow = "| ";
		For Kkk = 0 To LengthArray.Count() - 1 Do
			Ch = TrimAll(ParametersArray[Kkk]);
			While StrLen(Ch) < LengthArray[Kkk] Do
				Ch = Ch + " ";
			EndDo;
			ParametersRow = ParametersRow + Ch + " | ";
		EndDo;
		
		ParametersRow = TrimAll(ParametersRow);
		
		TableArray[Ppp] = Chars.Tab + Chars.Tab + ParametersRow;
	EndDo;
EndProcedure

#EndRegion

#Region ConstantValue

&AtServerNoContext
Function GetMarkdownConstantValue(Val MetadataObjectName)
	DataValue = Constants[MetadataObjectName].Get();
	Return GeValuetStringRepresentation(DataValue);
EndFunction

#EndRegion

#EndRegion

#EndRegion

#Region Localization

&AtServer
Function RL()
	ReturnData = New Structure();
	If StepsLanguage = "en" Then
		ReturnData.Insert("s1", "Constants");
		ReturnData.Insert("s2", "Catalogs");
		ReturnData.Insert("s3", "Documents");
		ReturnData.Insert("s4", "Charts of characteristic types");
		ReturnData.Insert("s5", "Information registers");
		ReturnData.Insert("s6", "Accumulation registers");
	Else	
		ReturnData.Insert("s1", "Константы");
		ReturnData.Insert("s2", "Справочники");
		ReturnData.Insert("s3", "Документы");
		ReturnData.Insert("s4", "Планы видов характеристик");
		ReturnData.Insert("s5", "Регистры сведений");
		ReturnData.Insert("s6", "Регистры накопления");
	EndIf;	 
	Return ReturnData;	
EndFunction

&AtClient
Function LocalizedStringsClient()
	Return LocalizedStringFromServer;
EndFunction

&AtServerNoContext
Function LocalizedStringsServer()
	ReturnData = New Structure();
	ReturnData.Insert("s1a_en", "IRunDatabaseClean()");
	ReturnData.Insert("s1a_ru", "ЯЗапускаюОчисткуБазыДанных()");
	ReturnData.Insert("s1b_en", "IRunDatabaseClean");
	ReturnData.Insert("s1b_ru", "ЯЗапускаюОчисткуБазыДанных");
	ReturnData.Insert("s1c_en", "And I run database clean");
	ReturnData.Insert("s1c_ru", "И Я запускаю очистку базы данных");
	ReturnData.Insert("s1d_en", "Cleans the database");
	ReturnData.Insert("s1d_ru", "Очищает базу данных");
	
	ReturnData.Insert("s2a_en", "ICheckOrCreateCatalogObjects(ObjectName, Values)");
	ReturnData.Insert("s2a_ru", "ЯПроверяюИлиСоздаюДляСправочникаОбъекты(ИмяОбъекта, Значения)");
	ReturnData.Insert("s2b_en", "ICheckOrCreateCatalogObjects");
	ReturnData.Insert("s2b_ru", "ЯПроверяюИлиСоздаюДляСправочникаОбъекты");
	ReturnData.Insert("s2c_en", "And I check or create catalog %1 objects:%2%3");
	ReturnData.Insert("s2c_ru", "И я проверяю или создаю для справочника %1 объекты:%2%3");
	ReturnData.Insert("s2d_en", """ObjectName""");
	ReturnData.Insert("s2d_ru", """ИмяОбъекта""");
	ReturnData.Insert("s2e_en", "Scenario: Create catalog %1 objects");
	ReturnData.Insert("s2e_ru", "Сценарий: Создание объектов для справочника %1");
	ReturnData.Insert("s2f_en", "Creates catalog items and groups");
	ReturnData.Insert("s2f_ru", "Создаёт элементы и группы справочника");
	
	ReturnData.Insert("s3a_en", "ICheckOrCreateDocumentObjects(ObjectName, Values)");
	ReturnData.Insert("s3a_ru", "ЯПроверяюИлиСоздаюДляДокументаОбъекты(ИмяОбъекта, Значения)");
	ReturnData.Insert("s3b_en", "ICheckOrCreateDocumentObjects");
	ReturnData.Insert("s3b_ru", "ЯПроверяюИлиСоздаюДляДокументаОбъекты");
	ReturnData.Insert("s3c_en", "And I check or create document %1 objects:%2%3");
	ReturnData.Insert("s3c_ru", "И я проверяю или создаю для документа %1 объекты:%2%3");
	ReturnData.Insert("s3d_en", """ObjectName""");
	ReturnData.Insert("s3d_ru", """ИмяОбъекта""");
	ReturnData.Insert("s3e_en", "Scenario: Create document %1 objects");
	ReturnData.Insert("s3e_ru", "Сценарий: Создание объектов для документа %1");
	ReturnData.Insert("s3f_en", "Creates documents");
	ReturnData.Insert("s3f_ru", "Создаёт документы");
	
	ReturnData.Insert("s4a_en", "ICheckOrCreateChartOfCharacteristicTypesObjects(ObjectName, Values)");
	ReturnData.Insert("s4a_ru", "ЯПроверяюИлиСоздаюДляПланаВидовХарактеристикОбъекты(ИмяОбъекта, Значения)");
	ReturnData.Insert("s4b_en", "ICheckOrCreateChartOfCharacteristicTypesObjects");
	ReturnData.Insert("s4b_ru", "ЯПроверяюИлиСоздаюДляПланаВидовХарактеристикОбъекты");
	ReturnData.Insert("s4c_en", "And I check or create chart of characteristic types %1 objects:%2%3");
	ReturnData.Insert("s4c_ru", "И я проверяю или создаю для плана видов характеристик %1 объекты:%2%3");
	ReturnData.Insert("s4d_en", """ObjectName""");
	ReturnData.Insert("s4d_ru", """ИмяОбъекта""");
	ReturnData.Insert("s4e_en", "Scenario: Create chart of characteristic types %1 objects");
	ReturnData.Insert("s4e_ru", "Сценарий: Создание объектов для плана видов характеристик %1");
	ReturnData.Insert("s4f_en", "Creates chart of characteristic items");
	ReturnData.Insert("s4f_ru", "Создаёт элементы плана видов характеристик");
	
	ReturnData.Insert("s5a_en", "ICheckOrCreateInformationRegisterRecords(RegisterName, Values)");
	ReturnData.Insert("s5a_ru", "ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписи(ИмяРегистра, Значения)");
	ReturnData.Insert("s5b_en", "ICheckOrCreateInformationRegisterRecords");
	ReturnData.Insert("s5b_ru", "ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписи");
	ReturnData.Insert("s5c_en", "And I check or create information register %1 records:%2%3");
	ReturnData.Insert("s5c_ru", "И я проверяю или создаю для регистра сведений %1 записи:%2%3");
	ReturnData.Insert("s5d_en", """RegisterName""");
	ReturnData.Insert("s5d_ru", """ИмяРегистра""");
	ReturnData.Insert("s5e_en", "Scenario: Create information register %1 records");
	ReturnData.Insert("s5e_ru", "Сценарий: Создание записей для регистра сведений %1");
	ReturnData.Insert("s5f_en", "Creates information register records, using record managers");
	ReturnData.Insert("s5f_ru", "Создаёт записи регистра сведений, используя менеджеры записей.");
	
	ReturnData.Insert("s6a_en", "ICheckOrCreateAccumulationRegisterRecords(RegisterName, Values)");
	ReturnData.Insert("s6a_ru", "ЯПроверяюИлиСоздаюДляРегистраНакопленийЗаписи(ИмяРегистра, Значения)");
	ReturnData.Insert("s6b_en", "ICheckOrCreateAccumulationRegisterRecords");
	ReturnData.Insert("s6b_ru", "ЯПроверяюИлиСоздаюДляРегистраНакопленийЗаписи");
	ReturnData.Insert("s6c_en", "And I check or create accumulation register %1 records:%2%3");
	ReturnData.Insert("s6c_ru", "И я проверяю или создаю для регистра накоплений %1 записи:%2%3");
	ReturnData.Insert("s6d_en", """RegisterName""");
	ReturnData.Insert("s6d_ru", """ИмяРегистра""");
	ReturnData.Insert("s6e_en", "Scenario: Create accumulation register %1 records");
	ReturnData.Insert("s6e_ru", "Сценарий: Создание записей для регистра накоплений %1");
	ReturnData.Insert("s6f_en", "Creates accumulation register records");
	ReturnData.Insert("s6f_ru", "Создаёт записи регистра накопления");
	
	ReturnData.Insert("s7a_en", "IRefillObjectTabularSection(TabularSectionName, Values)");
	ReturnData.Insert("s7a_ru", "ЯПерезаполняюДляОбъектаТабличнуюЧасть(ИмяТабличнойЧасти, Значения)");
	ReturnData.Insert("s7b_en", "IRefillObjectTabularSection");
	ReturnData.Insert("s7b_ru", "ЯПерезаполняюДляОбъектаТабличнуюЧасть");
	ReturnData.Insert("s7c_en", "And I refill object tabular section %1:%2%3");
	ReturnData.Insert("s7c_ru", "И я перезаполняю для объекта табличную часть %1:%2%3");
	ReturnData.Insert("s7d_en", """TabularSectionName""");
	ReturnData.Insert("s7d_ru", """ИмяТабличнойЧасти""");
	ReturnData.Insert("s7e_en", "Refills object tabular section");
	ReturnData.Insert("s7e_ru", "Перезаполняет табличную часть объекта");
	
	ReturnData.Insert("s8a_en", "IExecuteCodeAndPutToVarible(Code, VaribleName)");
	ReturnData.Insert("s8a_ru", "ЯВыполняюКодИВставляюВПеременную(Код, ИмяПеременной)");
	ReturnData.Insert("s8b_en", "IExecuteCodeAndPutToVarible");
	ReturnData.Insert("s8b_ru", "ЯВыполняюКодИВставляюВПеременную");
	ReturnData.Insert("s8c_en", "And I execute code and put to varible ""Code"" ""VaribleName""");
	ReturnData.Insert("s8c_ru", "И я выполняю код и вставляю в переменную ""Код"" ""ИмяПеременной""");
	ReturnData.Insert("s8d_en", "Executes code and puts to varible");
	ReturnData.Insert("s8d_ru", "Выполняет код и вставляет в переменную");
	
	ReturnData.Insert("s9a_en", "#language: en");
	ReturnData.Insert("s9a_ru", "#language: ru");
	ReturnData.Insert("s9b_en", "@tree");
	ReturnData.Insert("s9b_ru", "@дерево");
	ReturnData.Insert("s9c_en", "Feature: export scenarios");
	ReturnData.Insert("s9c_ru", "Функционал: экспорт сценариев");
	ReturnData.Insert("s9d_en", "Background:");
	ReturnData.Insert("s9d_ru", "Контекст:");
	ReturnData.Insert("s9e_en", "Given I launch TestClient opening script or connect the existing one");
	ReturnData.Insert("s9e_ru", "Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий");
	ReturnData.Insert("s9f_en", "Feature: <feature description>");
	ReturnData.Insert("s9f_ru", "Функционал: <описание фичи>");
	
	ReturnData.Insert("s10a_en", "IRefillConstantByValue(ConstantName, ConstantValue)");
	ReturnData.Insert("s10a_ru", "ЯПерезаполняюКонстантуЗначением(ИмяКонстанты, ЗначениеКонстанты)");
	ReturnData.Insert("s10b_en", "IRefillConstantByValue");
	ReturnData.Insert("s10b_ru", "ЯПерезаполняюКонстантуЗначением");
	ReturnData.Insert("s10c_en", "And I refill constant %1 by value ""%2""");
	ReturnData.Insert("s10c_ru", "И я перезаполняю константу %1 значением ""%2""");
	ReturnData.Insert("s10d_en", """ConstantName""");
	ReturnData.Insert("s10d_ru", """ИмяКонстанты""");
	ReturnData.Insert("s10e_en", "Scenario: Refill constant %1 by value");
	ReturnData.Insert("s10e_ru", "Сценарий: Перезаполнение константы %1 значением");
	ReturnData.Insert("s10f_en", "Refill constant");
	ReturnData.Insert("s10f_ru", "Перезаполняет константу");
	ReturnData.Insert("s10g_en", "Value");
	ReturnData.Insert("s10g_ru", "Значение");
	
	ReturnData.Insert("s11a_en", "Scenario: Data preparation");
	ReturnData.Insert("s11a_ru", "Сценарий: Подготовка данных");
	
	ReturnData.Insert("s12a_en", "ICheckOrCreateInformationRegisterRecordsUsingRecordSets(RegisterName, Values)");
	ReturnData.Insert("s12a_ru", "ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписиИспользуяНаборыЗаписей(ИмяРегистра, Значения)");
	ReturnData.Insert("s12b_en", "ICheckOrCreateInformationRegisterRecordsUsingRecordSets");
	ReturnData.Insert("s12b_ru", "ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписиИспользуяНаборыЗаписей");
	ReturnData.Insert("s12c_en", "And I check or create information register %1 records using record sets:%2%3");
	ReturnData.Insert("s12c_ru", "И я проверяю или создаю для регистра сведений %1 записи используя наборы записей:%2%3");
	ReturnData.Insert("s12d_en", """RegisterName""");
	ReturnData.Insert("s12d_ru", """ИмяРегистра""");
	ReturnData.Insert("s12e_en", "Scenario: Create information register %1 records");
	ReturnData.Insert("s12e_ru", "Сценарий: Создание записей для регистра сведений %1");
	ReturnData.Insert("s12f_en", "Creates information register records, using record sets");
	ReturnData.Insert("s12f_ru", "Создаёт записи регистра сведений, используя наборы записей");
	
	ReturnData.Insert("s13a_en", "ICheckOrCreateCatalogObjectsDataWithDataExchangeLoadTrue(ObjectName, Values)");
	ReturnData.Insert("s13a_ru", "ЯПроверяюИлиСоздаюДляСправочникаОбъектыCОбменДаннымиЗагрузкаИстина(ИмяОбъекта, Значения)");
	ReturnData.Insert("s13b_en", "ICheckOrCreateCatalogObjectsDataWithDataExchangeLoadTrue");
	ReturnData.Insert("s13b_ru", "ЯПроверяюИлиСоздаюДляСправочникаОбъектыCОбменДаннымиЗагрузкаИстина");
	ReturnData.Insert("s13c_en", "And I check or create catalog %1 objects with data exchange load true:%2%3");
	ReturnData.Insert("s13c_ru", "И я проверяю или создаю для справочника %1 объекты с обмен данными загрузка истина:%2%3");
	ReturnData.Insert("s13d_en", """ObjectName""");
	ReturnData.Insert("s13d_ru", """ИмяОбъекта""");
	ReturnData.Insert("s13e_en", "Scenario: Create catalog %1 objects with DataExchange.Load = True");
	ReturnData.Insert("s13e_ru", "Сценарий: Создание объектов для справочника %1 с ОбменДанными.Загрузка = Истина");
	ReturnData.Insert("s13f_en", "Creates catalog items and groups with DataExchange.Load = True");
	ReturnData.Insert("s13f_ru", "Создаёт элементы и группы справочника с ОбменДанными.Загрузка = Истина");
	
	ReturnData.Insert("s14a_en", "ICheckOrCreateDocumentObjectsWithDataExchangeLoadTrue(ObjectName, Values)");
	ReturnData.Insert("s14a_ru", "ЯПроверяюИлиСоздаюДляДокументаОбъектыCОбменДаннымиЗагрузкаИстина(ИмяОбъекта, Значения)");
	ReturnData.Insert("s14b_en", "ICheckOrCreateDocumentObjectsDataWithDataExchangeLoadTrue");
	ReturnData.Insert("s14b_ru", "ЯПроверяюИлиСоздаюДляДокументаОбъектыCОбменДаннымиЗагрузкаИстина");
	ReturnData.Insert("s14c_en", "And I check or create document %1 objects with data exchange load true:%2%3");
	ReturnData.Insert("s14c_ru", "И я проверяю или создаю для документа %1 объекты с обмен данными загрузка истина:%2%3");
	ReturnData.Insert("s14d_en", """ObjectName""");
	ReturnData.Insert("s14d_ru", """ИмяОбъекта""");
	ReturnData.Insert("s14e_en", "Scenario: Create document %1 objects with DataExchange.Load = True");
	ReturnData.Insert("s14e_ru", "Сценарий: Создание объектов для документа %1 с ОбменДанными.Загрузка = Истина");
	ReturnData.Insert("s14f_en", "Creates documents with DataExchange.Load = True");
	ReturnData.Insert("s14f_ru", "Создаёт документы с ОбменДанными.Загрузка = Истина");
	
	ReturnData.Insert("s15a_en", "ICheckOrCreateChartOfCharacteristicTypesObjectsWithDataExchangeLoadTrue(ObjectName, Values)");
	ReturnData.Insert("s15a_ru", "ЯПроверяюИлиСоздаюДляПланаВидовХарактеристикОбъектыCОбменДаннымиЗагрузкаИстина(ИмяОбъекта, Значения)");
	ReturnData.Insert("s15b_en", "ICheckOrCreateChartOfCharacteristicTypesObjectsWithDataExchangeLoadTrue");
	ReturnData.Insert("s15b_ru", "ЯПроверяюИлиСоздаюДляПланаВидовХарактеристикОбъектыCОбменДаннымиЗагрузкаИстина");
	ReturnData.Insert("s15c_en", "And I check or create chart of characteristic types %1 objects with data exchange load true:%2%3");
	ReturnData.Insert("s15c_ru", "И я проверяю или создаю для плана видов характеристик %1 объекты с обмен данными загрузка истина:%2%3");
	ReturnData.Insert("s15d_en", """ObjectName""");
	ReturnData.Insert("s15d_ru", """ИмяОбъекта""");
	ReturnData.Insert("s15e_en", "Scenario: Create chart of characteristic types %1 objects with DataExchange.Load = True");
	ReturnData.Insert("s15e_ru", "Сценарий: Создание объектов для плана видов характеристик %1 с ОбменДанными.Загрузка = Истина");
	ReturnData.Insert("s15f_en", "Creates chart of characteristic items with DataExchange.Load = True");
	ReturnData.Insert("s15f_ru", "Создаёт элементы плана видов характеристик с ОбменДанными.Загрузка = Истина");
	
	ReturnData.Insert("s16a_en", "ICheckOrCreateInformationRegisterRecordsWithDataExchangeLoadTrue(RegisterName, Values)");
	ReturnData.Insert("s16a_ru", "ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписиCОбменДаннымиЗагрузкаИстина(ИмяРегистра, Значения)");
	ReturnData.Insert("s16b_en", "ICheckOrCreateInformationRegisterRecordsWithDataExchangeLoadTrue");
	ReturnData.Insert("s16b_ru", "ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписиCОбменДаннымиЗагрузкаИстина");
	ReturnData.Insert("s16c_en", "And I check or create information register %1 records with DataExchange.Load = True:%2%3");
	ReturnData.Insert("s16c_ru", "И я проверяю или создаю для регистра сведений %1 записи с обмен данными загрузка истина:%2%3");
	ReturnData.Insert("s16d_en", """RegisterName""");
	ReturnData.Insert("s16d_ru", """ИмяРегистра""");
	ReturnData.Insert("s16e_en", "Scenario: Create information register %1 records with DataExchange.Load = True");
	ReturnData.Insert("s16e_ru", "Сценарий: Создание записей для регистра сведений %1 с ОбменДанными.Загрузка = Истина");
	ReturnData.Insert("s16f_en", "Creates information register records with DataExchange.Load = True");
	ReturnData.Insert("s16f_ru", "Создаёт записи регистра сведений с ОбменДанными.Загрузка = Истина");
	Return ReturnData;
EndFunction

#EndRegion
