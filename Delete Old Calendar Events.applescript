tell application "Calendar"
	set myCalendar to calendar "Your Calendar Name"
	set endDate to current date
	set eventsToDelete to every event of myCalendar where its end date is less than endDate
	repeat with anEvent in eventsToDelete
		set eventInfo to summary of anEvent & " - " & start date of anEvent & " - " & end date of anEvent
		display dialog eventInfo buttons {"Delete", "Keep"} default button "Keep"
		if the button returned of the result is "Delete" then
			delete anEvent
		end if
	end repeat
end tell
