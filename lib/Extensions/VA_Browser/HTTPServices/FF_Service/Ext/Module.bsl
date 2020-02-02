Function DoHighlite()
	Возврат Константы.ДелатьПодсветку.Получить(); 
EndFunction	 

Function activeElement(Request)
	Response = New HTTPServiceResponse(200);
	Text = Request.GetBodyAsString();
	
	
	JSON = New JSONReader;
	JSON.SetString(Text);
	Data = ReadJSON(JSON, False);
	JSON.Close();
	
	//StrData = "ID: %1; xPos: %2; yPos: %3";
	//StrData = StrTemplate(StrData, Data.id, Data.currentCoordinates.x, Data.currentCoordinates.y);
	//
	//Response.SetBodyFromString("<span style = 'background-color: #99FFCCAA;'><span style = 'font-size: 100%;'>" + StrData + "</span></span>");
	//
	DateInMilliseconds = CurrentUniversalDateInMilliseconds();
	Reg = InformationRegisters.ActiveElementLog.CreateRecordSet();
	Reg.Filter.UNIXPeriod.Set(DateInMilliseconds);
	
	NewRow = Reg.Add();
	NewRow.UNIXPeriod = DateInMilliseconds;
	NewRow.ID = Data.ID;
	
	NewRow.c_bottom = Data.currentCoordinates.bottom;
	NewRow.c_height = Data.currentCoordinates.height;
	NewRow.c_left 	= Data.currentCoordinates.left;
	NewRow.c_right 	= Data.currentCoordinates.right;
	NewRow.c_top 	= Data.currentCoordinates.top;
	NewRow.c_width 	= Data.currentCoordinates.width;
	NewRow.c_x 		= Data.currentCoordinates.x;
	NewRow.c_y 		= Data.currentCoordinates.y;
	
	Reg.Write();
	
	Str = New Structure("highlight", DoHighlite());
	JSON = New JSONWriter;
	JSON.SetString();
	WriteJSON(JSON, Str);
	Data = JSON.Close();
	
	Response.SetBodyFromString(Data);
	
	
	ЗаписьЖурналаРегистрации("activeElement", УровеньЖурналаРегистрации.Информация,,, "activeElement");
	
	Return Response;
EndFunction

Function drawPageGet(Request)
	Response = New HTTPServiceResponse(200);
	
	Query = New Query;
	Query.Text = 
		"SELECT
		|	NextStepsSliceLast.DrawData AS DrawData,
		|	NextStepsSliceLast.Period AS Period,
		|	NextStepsSliceLast.ID AS ID,
		|	NextStepsSliceLast.Delete AS Delete,
		|	NextStepsSliceLast.x AS x,
		|	NextStepsSliceLast.y AS y
		|FROM
		|	InformationRegister.NextSteps.SliceLast(&Period, NOT Done) AS NextStepsSliceLast";
	
	Query.SetParameter("Period", CurrentDate());
	
	QueryResult = Query.Execute();
	
	SelectionDetailRecords = QueryResult.Select();
	
	Map = New Map;
	MapDraw = New Map;
	ArrayToDelete = New Array;
	While SelectionDetailRecords.Next() Do
		If SelectionDetailRecords.Delete Then
			ArrayToDelete.Add("id" + String(SelectionDetailRecords.ID));
		Else
			Str = New Map;
			Str.Insert("body", SelectionDetailRecords.DrawData);
			Str.Insert("x", SelectionDetailRecords.x);
			Str.Insert("y", SelectionDetailRecords.y);
			MapDraw.Insert("id" + String(SelectionDetailRecords.ID), Str);
		EndIf;
		
		Reg = InformationRegisters.NextSteps.CreateRecordSet();
		Reg.Filter.Period.Set(SelectionDetailRecords.Period);
		Reg.Filter.ID.Set(SelectionDetailRecords.ID);
		Reg.Read();
		If Reg.Count() Then
			Reg[0].Done = True;
			Reg.Write();
		EndIf;
	EndDo;
	
	Map.Insert("Draw", MapDraw);
	Map.Insert("Delete", ArrayToDelete);
	
	JSON = New JSONWriter;
	JSON.SetString();
	WriteJSON(JSON, Map);
	Data = JSON.Close();
	
	Response.SetBodyFromString(Data);
	
	//ЗаписьЖурналаРегистрации("drawPageGet", УровеньЖурналаРегистрации.Информация,,, "drawPageGet");
	
	Return Response;
EndFunction
