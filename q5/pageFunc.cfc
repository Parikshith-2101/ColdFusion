<cfcomponent>

    <cffunction name="calculate" returnType = "String">
        <cfargument name="userIn1">
        <cfargument name="userIn2">
        <cfset userIn1 = arguments.userIn1>
        <cfset userIn2 = arguments.userIn2>

        <cfset user_date = dateFormat(userIn1)>
        <cfset mom_date = dateFormat(userIn2)>
        <cfset cur_date = dateFormat(now())>
       
        <cfset user_age = dateDiff("yyyy", user_date, cur_date)>

        <cfset motherAgeOnDelivery = year(user_date)-year(mom_date)>

        <cfset userBornDay = createDate(year(cur_date), month(user_date), day(user_date))>
        <cfset momBornDay = createDate(year(cur_date), month(mom_date), day(mom_date))>
        
        <cfset datecompareofuser = dateCompare(user_date ,cur_date)>
        <cfset datecompareofmom = dateCompare(mom_date ,cur_date)>
        <cfoutput>#datecompareofuser#
        </cfoutput>
        <cfif datecompareofuser LT 0>
            
        </cfif>
        
        <cfset daysforUserBday = dateDiff("d", cur_date ,userBornDay)>
        <cfset daysforMomBday = dateDiff("d", cur_date ,momBornDay)>

        <cfset output = structNew()>
        <cfset output['Your Age'] = user_age>
        <cfset output['Mother Age On Delivery'] = motherAgeOnDelivery>
        <cfset output['Days remain for ur bday'] = daysforUserBday>
        <cfset output['Days remain for Mom bday'] = daysforMomBday>

        <cfdump var ="#output#">




    </cffunction>

</cfcomponent>


