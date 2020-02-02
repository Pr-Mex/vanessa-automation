
&AtClient
Procedure TryIt(Command)
	TryItAtServer();
EndProcedure

&AtServer
Procedure TryItAtServer()
	If Modified Then
		Write();
	EndIf;
	
	Reg = InformationRegisters.NextSteps.CreateRecordSet();
	
	FirstDelay = 5;
	
	StartDate = CurrentDate() + FirstDelay;
	
	For Each Row In Object.Steps Do
		ID = New UUID;
		StartDate = StartDate + Row.Delay;
		NewRow = Reg.Add();
		NewRow.Period = StartDate;
		NewRow.DrawData = Row.Step;
		NewRow.ID = ID;
		NewRow.x = Row.x;
		NewRow.y = Row.y;
		
		
		NewRow = Reg.Add();
		NewRow.Period = StartDate + Row.DeleteAfter;
		NewRow.Delete = True;
		NewRow.ID = ID;

	EndDo;
	Reg.Write();
EndProcedure
