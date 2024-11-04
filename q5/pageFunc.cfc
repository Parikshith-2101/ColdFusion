<cfcomponent>

    <cffunction name="calculate" returnType = "Any">
        <cfargument name="userIn1">
        <cfargument name="userIn2">
        <cfset userIn1 = arguments.userIn1>
        <cfset userIn2 = arguments.userIn2>

        <cfset user_date = dateFormat(userIn1)>
        <cfset mom_date = dateFormat(userIn2)>
        <cfset cur_date = dateFormat(now())>
       
        <cfset user_age = dateDiff("yyyy", user_date, cur_date)>
        <cfset mom_age = dateDiff("yyyy", mom_date, cur_date)>

        <cfset motherAgeOnDelivery = year(user_date)-year(mom_date)>

        <cfset userBornDay = createDate(year(cur_date), month(user_date), day(user_date))>
        <cfset momBornDay = createDate(year(cur_date), month(mom_date), day(mom_date))>
        
        <cfset datecompareofuser = dateCompare(user_date ,cur_date)>
        <cfset datecompareofmom = dateCompare(mom_date ,cur_date)>

        <cfif datecompareofuser LT 0>
            <cfset userBornDay  = createDate(year(cur_date)+1, month(user_date), day(user_date))>
        </cfif>
        <cfif datecompareofmom LT 0>
            <cfset momBornDay  = createDate(year(cur_date)+1, month(mom_date), day(mom_date))>
        </cfif>
        
        <cfset daysforUserBday = dateDiff("d", cur_date ,userBornDay)>
        <cfset daysforMomBday = dateDiff("d", cur_date ,momBornDay)>

        <cfif datecompareofuser EQ 0>
            <cfset daysforUserBday = "Today">
        </cfif>
        <cfif datecompareofmom EQ 0>
            <cfset daysforMomBday = "Today">
        </cfif>
        <cfset output = structNew()>
        <cfset output['Your Age'] = user_age>
        <cfset output['Mom Age'] = mom_age>
        <cfset output['Mother Age On Delivery'] = motherAgeOnDelivery>
        <cfset output['Days remain for ur bday'] = daysforUserBday>
        <cfset output['Days remain for Mom bday'] = daysforMomBday>

        <cfreturn output>




    </cffunction>

</cfcomponent>


