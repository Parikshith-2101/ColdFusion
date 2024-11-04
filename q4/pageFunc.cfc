<cfcomponent>

    <cffunction name="calculate" returnType = "Any">

        <cfset todayDate = dateFormat(now())>
        <cfset month_num = month(todayDate)>
        <cfset month = monthAsString(month_num)>

        <cfset TotalDaysInMonth = daysInMonth(todayDate)>
        <cfset lastDateInMonth = createDate(year(todayDate), month(todayDate), TotalDaysInMonth)>
        <cfset DayInWeek = dayOfWeek(lastDateInMonth)>
        <cfset fridayCheck = (6-DayInWeek)>
        <cfset lastFridayInDate = dateAdd("d", fridayCheck, lastDateInMonth)>
        <cfset lastFriday = dateFormat(lastFridayInDate)>

        <cfset output = structNew()>
        <cfset output['Date(Today)'] = todayDate >
        <cfset output['Month(Num)'] = month_num >
        <cfset output['Month'] = month >
        <cfset output['Last Friday'] = lastFriday >
        <cfset output['Last Day of Month'] = dateFormat(lastDateInMonth) >


        <cfreturn output>

    </cffunction>

    <cffunction name="getLast5Days">
        <cfset last5days = []>
        <cfloop index="i" from = "1" to = "5">
            <cfset day = dateAdd("d", -i , todayDate)>
            <cfset arrayAppend(last5days, day)>
        </cfloop>
        <cfreturn last5days>
    </cffunction>

    <cffunction name="dayColor">
        <cfargument name="day">
        <cfswitch expression="#dayOfWeek(day)#">
        <cfcase value="1"><cfreturn "red"></cfcase>
        <cfcase value="2"><cfreturn "green"></cfcase>
        <cfcase value="3"><cfreturn "orange"></cfcase>
        <cfcase value="4"><cfreturn "yellow"></cfcase>
        <cfcase value="5"><cfreturn "black"></cfcase>
        <cfcase value="6"><cfreturn "blue"></cfcase>
        <cfcase value="7"><cfreturn "darkred"></cfcase>
        </cfswitch>
    </cffunction>
</cfcomponent>


