<cfcomponent>

    <cffunction name = "calculate" access = "public" returnType = "struct">

        <cfset todayDate = dateFormat(now())>
        <cfset local.month_num = month(todayDate)>
        <cfset local.month = monthAsString(local.month_num)>

        <cfset local.TotalDaysInMonth = daysInMonth(todayDate)>
        <cfset local.lastDateInMonth = createDate(year(todayDate), month(todayDate), local.TotalDaysInMonth)>
        <cfset local.dayInWeek = dayOfWeek(local.lastDateInMonth)>
        <cfset local.fridayCheck = (6 - local.dayInWeek)>
        <cfset local.lastFridayInDate = dateAdd("d", local.fridayCheck, local.lastDateInMonth)>
        <cfset local.lastFriday = dateFormat(local.lastFridayInDate)>

        <cfset local.output = structNew()>
        <cfset local.output['Date(Today)'] = todayDate >
        <cfset local.output['Month(Num)'] = local.month_num >
        <cfset local.output['Month'] = local.month >
        <cfset local.output['Last Friday'] = local.lastFriday >
        <cfset local.output['Last Day of Month'] = dateFormat(local.lastDateInMonth) >

        <cfreturn local.output>

    </cffunction>

    <cffunction name = "getLast5Days" access = "public" returnType = "array">
        <cfset local.last5days = []>
        <cfloop index="i" from = "1" to = "5">
            <cfset local.day = dateAdd("d", -i , todayDate)>
            <cfset arrayAppend(local.last5days, local.day)>
        </cfloop>
        <cfreturn local.last5days>
    </cffunction>

    <cffunction name = "dayColor" access = "public" returnType = "String">
        <cfargument name = "day" type = "numeric">

        <cfswitch expression = "#dayOfWeek(arguments.day)#">
            <cfcase value = 1 ><cfset local.result = "red"></cfcase>
            <cfcase value = 2 ><cfset local.result = "green"></cfcase>
            <cfcase value = 3 ><cfset local.result = "orange"></cfcase>
            <cfcase value = 4 ><cfset local.result = "yellow"></cfcase>
            <cfcase value = 5 ><cfset local.result = "black"></cfcase>
            <cfcase value = 6 ><cfset local.result = "blue"></cfcase>
            <cfcase value = 7 ><cfset local.result = "darkred"></cfcase>
        </cfswitch>

        <cfreturn local.result>

    </cffunction>
</cfcomponent>

