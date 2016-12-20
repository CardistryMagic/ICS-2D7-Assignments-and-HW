	   import GUI in "%oot/lib/GUI" 
	   View.Set ("graphics:500;300") 
	   
	   var buttonNames : array 1 .. 5 of string := init ("Red", "Green",
		  "Blue", "Yellow", "Purple")
	   var buttons : array 1 .. 5 of int
	   
	   procedure ButtonPush
		  for i : 1 .. 5
			 if GUI.GetEventWidgetID = buttons (i) then
				Text.Locate (1, 1)
				put GUI.GetEventWidgetID
				put buttonNames (i), " selected"
			 end if
		  end for
	   end ButtonPush
	   for i : 1 .. 5
		  buttons (i) := GUI.CreateButton (10, 40 * i, 110, 
			 buttonNames (i), ButtonPush)
	   end for
	   loop
		  exit when GUI.ProcessEvent
	   end loop
