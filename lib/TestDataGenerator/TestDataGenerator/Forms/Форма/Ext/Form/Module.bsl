
// IRP Team v.1.2

#Region Vanessa

#Region ServiceFunctionsAndProcedures

&AtClient
Var Vanessa;
 
&AtClient
Var Контекст Export;
 
&AtClient
Var КонтекстСохраняемый Export;

&AtClient
Function ПолучитьСписокТестов(КонтекстФреймворкаBDD) Export
	Vanessa = КонтекстФреймворкаBDD;	
	AllTests = New Array;
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, "IRunDatabaseClean()"
										, "IRunDatabaseClean"
										, "And I run database clean"
										, ""
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, "ICheckOrCreateCatalogObjects(ObjectName, Values)"
										, "ICheckOrCreateCatalogObjects"
										, StrTemplate(ScenarioCatalogActionString(), """ObjectName""", "", "")
										, ""
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, "ICheckOrCreateDocumentObjects(ObjectName, Values)"
										, "ICheckOrCreateDocumentObjects"
										, StrTemplate(ScenarioDocumentActionString(), """ObjectName""", "", "")
										, ""
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, "ICheckOrCreateChartOfCharacteristicTypesObjects(ObjectName, Values)"
										, "ICheckOrCreateChartOfCharacteristicTypesObjects"
										, StrTemplate(ScenarioChartOfCharacteristicTypesActionString(), """ObjectName""", "", "")
										, ""
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, "ICheckOrCreateInformationRegisterRecords(RegisterName, Values)"
										, "ICheckOrCreateInformationRegisterRecords"
										, StrTemplate(ScenarioInformationRegisterActionString(), """RegisterName""", "", "")
										, ""
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, "ICheckOrCreateAccumulationRegisterRecords(RegisterName, Values)"
										, "ICheckOrCreateAccumulationRegisterRecords"
										, StrTemplate(ScenarioAccumulationRegisterActionString(), """RegisterName""", "", "")
										, ""
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, "IRefillObjectTabularSection(TabularSectionName, Values)"
										, "IRefillObjectTabularSection"
										, StrTemplate(ScenarioTabularSectionActionString(), """TabularSectionName""", "", "")
										, ""
										, "");
	Vanessa.ДобавитьШагВМассивТестов(AllTests
										, "IExecuteCodeAndPutToVarible(Code, VaribleName)"
										, "IExecuteCodeAndPutToVarible"
										, "I execute code and put to varible ""Code"" ""VaribleName"""
										, ""
										, "");							
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
Procedure IRunDatabaseClean() Export
	IRunDatabaseCleanAtServer();
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

&AtServerNoContext
Procedure ICheckOrCreateCatalogObjectsAtServer(ObjectName, Values)
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
	For Each Row In ObjectValues Do
		Ref = GetObjectLinkFromObjectURL(Row.Ref);
		If ValueIsFilled(Ref.DataVersion) Then
			Obj = Ref.GetObject();
		Else
			Predefined = StrFind(Row.Ref, "?refName=");
			If Predefined Then
				Continue;
			EndIf;
			FoundColumn = ObjectAttributes.Columns.Find("IsFolder");
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
			If Column.Name = "Ref" Then
				Continue;
			EndIf;
			If Column.Name = "IsFolder" Then
				Continue;
			EndIf;
			If Column.Name = "DeletionMark"
				And Row[Column.Name] = "True" Then
				Obj.DeletionMark = True;
				Continue;
			EndIf;
			If Column.Name = "Parent" Then
				Obj[Column.Name] = GetObjectLinkFromObjectURL(Row[Column.Name]);
				Continue;
			EndIf;
			If Column.Name = "Owner" Then
				Obj[Column.Name] = GetObjectLinkFromObjectURL(Row[Column.Name]);
				Continue;
			EndIf;
			FillTipicalObjectAttributesByValues(Obj, Row, Column);
		EndDo;
		Obj.DataExchange.Load = True;
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

&AtServerNoContext
Procedure ICheckOrCreateDocumentObjectsAtServer(ObjectName, Values)
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
	For Each Row In ObjectValues Do
		Ref = GetObjectLinkFromObjectURL(Row.Ref);
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
			If Column.Name = "Ref" Then
				Continue;
			EndIf;
			If Column.Name = "Posted" Then
				Continue;
			EndIf;
			If Column.Name = "DeletionMark"
				And Row[Column.Name] = "True" Then
				Obj.DeletionMark = True;
				Continue;
			EndIf;
			FillTipicalObjectAttributesByValues(Obj, Row, Column);
		EndDo;
		FoundColumn = ObjectAttributes.Columns.Find("Posted");
		If FoundColumn <> Undefined
			And Row[Column.Name] = "True" Then
			DocumentWriteModeValue = DocumentWriteMode.Posting;
		Else
			DocumentWriteModeValue = DocumentWriteMode.Write;
		EndIf;
		Obj.DataExchange.Load = True;
		If DocumentWriteModeValue = DocumentWriteMode.Posting Then
			Obj.Write(DocumentWriteMode.Write);
			Obj.DataExchange.Load = False;
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

&AtServerNoContext
Procedure ICheckOrCreateChartOfCharacteristicTypesObjectsAtServer(ObjectName, Values)	
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
	For Each Row In ObjectValues Do
		Ref = GetObjectLinkFromObjectURL(Row.Ref);
		If ValueIsFilled(Ref.DataVersion) Then
			Obj = Ref.GetObject();
		Else
			Predefined = StrFind(Row.Ref, "?refName=");
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
			If Column.Name = "Ref" Then
				Continue;
			EndIf;
			If Column.Name = "DeletionMark"
				And Row[Column.Name] = "True" Then
				Obj.DeletionMark = True;
				Continue;
			EndIf;
			FillTipicalObjectAttributesByValues(Obj, Row, Column);
		EndDo;
		Obj.DataExchange.Load = True;
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

&AtServerNoContext
Procedure IRefillObjectTabularSectionAtServer(TabularSectionName, Values)	
	ObjectValues = GetValueTableFromVanessaTableArray(Values);
	ObjectValues.Indexes.Add("Ref");
	ObjectsRefs = ObjectValues.Copy(, "Ref");
	ObjectsRefs.GroupBy("Ref");
	ObjectAttributes = New ValueTable;
	Ref = GetObjectLinkFromObjectURL(ObjectValues[0].Ref);
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
		ObjectValuesFilter.Insert("Ref", ObjectsRefsRow.Ref);
		FoundObjectValuesRows = ObjectValues.FindRows(ObjectValuesFilter);
		Ref = GetObjectLinkFromObjectURL(ObjectsRefsRow.Ref);
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
				If Column.Name = "Ref" Then
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

&AtServerNoContext
Procedure ICheckOrCreateInformationRegisterRecordsAtServer(RegisterName, Values)	
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
	If ObjectAttributes.Columns.Find("Recorder") <> Undefined Then
		RecorderTable = ObjectValues.Copy(, "Recorder");
		RecorderTable.GroupBy("Recorder");
		For Each RecorderRow In RecorderTable Do
			RegisterSet = InformationRegisters[RegisterName].CreateRecordSet();
			RecorderFilter = New Structure;
			RecorderFilter.Insert("Recorder", RecorderRow.Recorder);
			FoundRows = ObjectValues.FindRows(RecorderFilter);
			RecorderRef = GetObjectLinkFromObjectURL(RecorderRow.Recorder);
			RegisterSet.Filter.Recorder.Set(RecorderRef);
			For Each Row In FoundRows Do
				Obj = RegisterSet.Add();
				For Each Column In ObjectAttributes.Columns Do
					If Row[Column.Name] = "" Then
						Continue;
					EndIf;
					If Column.Name = "LineNumber" Then
						Continue;
					EndIf;
					If Column.Name = "Recorder" Then
						Row[Column.Name] = RecorderRef;
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
			Obj = InformationRegisters[RegisterName].CreateRecordManager();
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
Procedure ICheckOrCreateAccumulationRegisterRecords(Val RegisterName, Val Values) Export
	If Not Values.Count() Then
		Return;
	EndIf;
	ICheckOrCreateAccumulationRegisterRecordsAtServer(RegisterName, Values);
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
	If ObjectAttributes.Columns.Find("Recorder") <> Undefined Then
		RecorderTable = ObjectValues.Copy(, "Recorder");
		RecorderTable.GroupBy("Recorder");
		For Each RecorderRow In RecorderTable Do
			RegisterSet = AccumulationRegisters[RegisterName].CreateRecordSet();
			RecorderFilter = New Structure;
			RecorderFilter.Insert("Recorder", RecorderRow.Recorder);
			FoundRows = ObjectValues.FindRows(RecorderFilter);
			RecorderRef = GetObjectLinkFromObjectURL(RecorderRow.Recorder);
			RegisterSet.Filter.Recorder.Set(RecorderRef);
			For Each Row In FoundRows Do
				Obj = RegisterSet.Add();
				For Each Column In ObjectAttributes.Columns Do
					If Row[Column.Name] = "" Then
						Continue;
					EndIf;
					If Column.Name = "LineNumber" Then
						Continue;
					EndIf;
					If Column.Name = "Recorder" Then
						Row[Column.Name] = RecorderRef;
						Continue;
					EndIf;
					If Column.Name = "RecordType" Then
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

#EndRegion

#Region Events

&AtServer
Procedure OnCreateAtServer(Cancel, StandardProcessing)
	DrawDataListHack();
	FillMetadataType();
	FillMetadata();
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
Procedure GenerateFeature(Command)
	ThisObject.Feature = GeneratedFeatureFile();
	Items.GroupPages.CurrentPage = Items.GroupPageFeature;
EndProcedure

&AtClient
Procedure SelectDependentItems(Command)
	SelectDependentItemsAtServer();
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
Function GetDatabaseObjectsValueTableWithoutTabularSection(Val MetadataObjectFullName)
	Query = New Query;
	Query.Text = StrTemplate("SELECT ALLOWED *
									|FROM
									|	%1 AS Object"
								, MetadataObjectFullName);
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
Function GetDatabaseObjectsValueTablesOfTabularSection(Val MetadataObjectFullName)
	TabularSections = New Structure;
	Query = New Query;
	Query.Text = StrTemplate("SELECT ALLOWED *
									|FROM
									|	%1 AS Object"
								, MetadataObjectFullName);
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
	Else
		ReturnValue = "";
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
			NewRow[ColumnData.Value] = Row[ColumnData.Key];
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
		DependenciesNames.Add(Dependence.FullName());
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

&AtServerNoContext
Function EnumNameByRef(RefData) Export
	RefNameType = RefData.Metadata().Name;
	ValueIndex = Enums[RefNameType].IndexOf(RefData);
	Return Metadata.Enums[RefNameType].EnumValues[ValueIndex].Name;
EndFunction

&AtServerNoContext
Procedure FillTipicalObjectAttributesByValues(Obj, Row, Column)
	If Column.ValueType.ContainsType(Type("Boolean"))
		And (Row[Column.Name] = "True"
			Or Row[Column.Name] = "False") Then
		Obj[Column.Name] = ?(Row[Column.Name] = "True", True, False);
		Return;
	EndIf;
	If Left(Row[Column.Name], 10) = "e1cib/data" Then
		Obj[Column.Name] = GetObjectLinkFromObjectURL(Row[Column.Name]);
		Return;
	EndIf;
	If Left(Row[Column.Name], 4) = "Enum" And StrOccurrenceCount(Row[Column.Name], ".") = 2 Then
		Obj[Column.Name] = PredefinedValue(Row[Column.Name]);
		Return;
	EndIf;
	If StrLen(Row[Column.Name]) = 36
		And StrOccurrenceCount(Row[Column.Name], "-") = 4 Then
			Obj[Column.Name] = New UUID(Row[Column.Name]);
		Return;
	EndIf;
	If StrLen(Row[Column.Name]) = 19
		And StrOccurrenceCount(Row[Column.Name], ".") = 2
		And StrOccurrenceCount(Row[Column.Name], ":") = 2 Then
		DateString = Mid(Row[Column.Name], 7, 4)
					+ Mid(Row[Column.Name], 4, 2)
					+ Mid(Row[Column.Name], 1, 2)
					+ StrReplace(Mid(Row[Column.Name], 12, 8), ":", "");
		Obj[Column.Name] = Date(DateString);
		Return;
	EndIf;
	Obj[Column.Name] = Row[Column.Name];
EndProcedure

#Region GenerateFeature

#Region FeatureFile

&AtServer
Function GeneratedFeatureFile()
	ReturnValue = New Array;	
	Scenarious = New Array;		
	MetadataListValue = FormAttributeToValue("MetadataList");
	
	For Each MetadataListParentRow In MetadataListValue.Rows Do
		For Each MetadataListRow In MetadataListParentRow.Rows Do
			If Not MetadataListRow.Use Then
				Continue;
			EndIf;
			
			MarkdownTables = GetMarkdownTables(MetadataTypeValueSingle(MetadataListParentRow.Name), MetadataListRow.Name);
			ContinueFlag = True;
			If ValueIsFilled(MarkdownTables.ObjectDataMarkdownTable) Then
				ContinueFlag = False;
			EndIf;
			If ContinueFlag
				And MarkdownTables.TabularSectionsDataMarkdownTables.Count() Then
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
				Scenarious.Add(ScenarioCatalog(MetadataListRow.Name, MarkdownTables));
			ElsIf MetadataListParentRow.Name = "Documents" Then
				Scenarious.Add(ScenarioDocument(MetadataListRow.Name, MarkdownTables));
			ElsIf MetadataListParentRow.Name = "ChartsOfCharacteristicTypes" Then
				Scenarious.Add(ScenarioChartOfCharacteristicTypes(MetadataListRow.Name, MarkdownTables));
			ElsIf MetadataListParentRow.Name = "InformationRegisters" Then
				Scenarious.Add(ScenarioInformationRegister(MetadataListRow.Name, MarkdownTables));
			ElsIf MetadataListParentRow.Name = "AccumulationRegisters" Then
				Scenarious.Add(ScenarioAccumulationRegister(MetadataListRow.Name, MarkdownTables));
			Else
				Scenarious.Add("");
			EndIf;
		EndDo;
	EndDo;
	
	ReturnValue.Add(FeatureTitle());
	For Each Scenario In Scenarious Do
		ReturnValue.Add(Scenario);
	EndDo;
	
	Return StrConcat(ReturnValue, Chars.LF);
EndFunction

&AtServerNoContext
Function FeatureTitle()
	TitleString = New Array;
	TitleString.Add("#language: en");
	TitleString.Add("@tree");
	TitleString.Add("");
	TitleString.Add("Feature: export scenarios");
	TitleString.Add("");
	TitleString.Add("Background:");
	TitleString.Add(Chars.Tab + "Given I launch TestClient opening script or connect the existing one");
	TitleString.Add("");
	Return StrConcat(TitleString, Chars.LF);
EndFunction

#EndRegion

#Region Scenario_Catalog

&AtServerNoContext
Function ScenarioCatalog(MetadataName, MarkdownTables)
	Scenario = New Array;	
	Scenario.Add(StrTemplate("Scenario: Create catalog %1 objects", MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioCatalogActionString(), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	For Each DataValue In MarkdownTables.TabularSectionsDataMarkdownTables Do
		Scenario.Add("");
		Scenario.Add(Chars.Tab + StrTemplate(ScenarioTabularSectionActionString(), """" + DataValue.Key + """", Chars.LF, DataValue.Value));
	EndDo;
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioCatalogActionString()
	Return "And I check or create catalog %1 objects:%2%3";
EndFunction

#EndRegion

#Region Scenario_Document

&AtServerNoContext
Function ScenarioDocument(MetadataName, MarkdownTables)
	Scenario = New Array;	
	Scenario.Add(StrTemplate("Scenario: Create document %1 objects", MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioDocumentActionString(), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	For Each DataValue In MarkdownTables.TabularSectionsDataMarkdownTables Do
		Scenario.Add("");
		Scenario.Add(Chars.Tab + StrTemplate(ScenarioTabularSectionActionString(), """" + DataValue.Key + """", Chars.LF, DataValue.Value));
	EndDo;
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioDocumentActionString()
	Return "And I check or create document %1 objects:%2%3";
EndFunction

#EndRegion

#Region Scenario_ChartOfCharacteristicTypes

&AtServerNoContext
Function ScenarioChartOfCharacteristicTypes(MetadataName, MarkdownTables)
	Scenario = New Array;	
	Scenario.Add(StrTemplate("Scenario: Create chart of characteristic types %1 objects", MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioChartOfCharacteristicTypesActionString(), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	For Each DataValue In MarkdownTables.TabularSectionsDataMarkdownTables Do
		Scenario.Add("");
		Scenario.Add(Chars.Tab + StrTemplate(ScenarioTabularSectionActionString(), """" + DataValue.Key + """", Chars.LF, DataValue.Value));
	EndDo;
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioChartOfCharacteristicTypesActionString()
	Return "And I check or create chart of characteristic types %1 objects:%2%3";
EndFunction

#EndRegion

#Region Scenario_TabularSection

&AtServerNoContext
Function ScenarioTabularSectionActionString()
	Return "And I refill object tabular section %1:%2%3";
EndFunction

#EndRegion

#Region Scenario_InformationRegister

&AtServerNoContext
Function ScenarioInformationRegister(MetadataName, MarkdownTables)
	Scenario = New Array;	
	Scenario.Add(StrTemplate("Scenario: Create information register %1 records", MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioInformationRegisterActionString(), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioInformationRegisterActionString()
	Return "And I check or create information register %1 records:%2%3";
EndFunction

#EndRegion

#Region Scenario_AccumulationRegister

&AtServerNoContext
Function ScenarioAccumulationRegister(MetadataName, MarkdownTables)
	Scenario = New Array;	
	Scenario.Add(StrTemplate("Scenario: Create accumulation register %1 records", MetadataName));
	Scenario.Add("");
	Scenario.Add(Chars.Tab + StrTemplate(ScenarioAccumulationRegisterActionString(), """" + MetadataName + """", Chars.LF, MarkdownTables.ObjectDataMarkdownTable));
	Scenario.Add("");
	Return StrConcat(Scenario, Chars.LF);
EndFunction

&AtServerNoContext
Function ScenarioAccumulationRegisterActionString()
	Return "And I check or create accumulation register %1 records:%2%3";
EndFunction

#EndRegion

#Region MarkdownTable

&AtServerNoContext
Function GetMarkdownTables(Val MetadataObjectPropertyName, Val MetadataObjectName)
	ReturnValue = New Structure();
	ObjectData = GetDatabaseObjectsValueTableWithoutTabularSection(MetadataObjectPropertyName + "." + MetadataObjectName);
	ObjectDataMarkdownTable = GetMarkdownTable(MetadataObjectPropertyName, MetadataObjectName, ObjectData);
	ReturnValue.Insert("ObjectDataMarkdownTable", ObjectDataMarkdownTable);
	TabularSectionsDataMarkdownTables = New Structure;
	TabularSections = GetDatabaseObjectsValueTablesOfTabularSection(MetadataObjectPropertyName + "." + MetadataObjectName);
	For Each ItemData In TabularSections Do
		TabularSectionMarkdownTable = GetMarkdownTable(MetadataObjectPropertyName, MetadataObjectName, ItemData.Value);
		TabularSectionsDataMarkdownTables.Insert(ItemData.Key, TabularSectionMarkdownTable);
	EndDo;
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
		TransformStandardRussianAttributeName(ColumnName);
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
				Or Metadata.ChartsOfCharacteristicTypes.Contains(MetadataObject))
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

&AtServerNoContext
Procedure TransformStandardRussianAttributeName(AttributeName)
	NamesMap = New Map;
	NamesMap.Insert("Ссылка",						"Ref");
	NamesMap.Insert("Код",							"Code");
	NamesMap.Insert("Наименование",					"Description");
	NamesMap.Insert("Владелец",						"Owner");
	NamesMap.Insert("Родитель",						"Parent");
	NamesMap.Insert("ЭтоГруппа",					"IsFolder");
	NamesMap.Insert("ПометкаУдаления",				"DeletionMark");
	NamesMap.Insert("Предопределенный",				"Predefined");
	NamesMap.Insert("ИмяПредопределенныхДанных",	"PredefinedDataName");
	NamesMap.Insert("Номер",						"Number");
	NamesMap.Insert("Дата",							"Date");
	NamesMap.Insert("Проведен",						"Posted");
	NamesMap.Insert("Регистратор",					"Recorder");
	NamesMap.Insert("ВидДвижения",					"RecordType");
	NamesMap.Insert("НомерСтроки",					"LineNumber");
	FoundName = NamesMap.Get(AttributeName);
	If Not FoundName = Undefined Then
		AttributeName = FoundName;
	EndIf;
EndProcedure

#EndRegion

#EndRegion

#EndRegion

#Region Localization

&AtServer
Function RL()
	ReturnData = New Structure();
	ReturnData.Insert("s1", "Constants");
	ReturnData.Insert("s2", "Catalogs");
	ReturnData.Insert("s3", "Documents");
	ReturnData.Insert("s4", "Charts of characteristic types");
	ReturnData.Insert("s5", "Information registers");
	ReturnData.Insert("s6", "Accumulation registers");
	Return ReturnData;	
EndFunction

#EndRegion
