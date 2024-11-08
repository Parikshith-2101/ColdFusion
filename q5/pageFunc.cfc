<cfcomponent>

    <cffunction name = "calculate" access = "public" returnType = "struct">
        <cfargument name = "userIn1" type = "date">
        <cfargument name = "userIn2" type = "date">
        
        <cfset local.user_date = dateFormat(arguments.userIn1)>
        <cfset local.mom_date = dateFormat(arguments.userIn2)>
        <cfset local.cur_date = dateFormat(now())>
       
        <cfset local.user_age = dateDiff("yyyy", local.user_date, local.cur_date)>
        <cfset local.mom_age = dateDiff("yyyy", local.mom_date, local.cur_date)>

        <cfset local.motherAgeOnDelivery = year(local.user_date)-year(local.mom_date)>

        <cfset local.userBornDay = createDate(year(local.cur_date), month(local.user_date), day(local.user_date))>
        <cfset local.momBornDay = createDate(year(local.cur_date), month(local.mom_date), day(local.mom_date))>
        
        <cfset local.datecompareofuser = dateCompare(local.user_date ,local.cur_date)>
        <cfset local.datecompareofmom = dateCompare(local.mom_date ,local.cur_date)>

        <cfif local.datecompareofuser LT 0>
            <cfset local.userBornDay  = createDate(year(local.cur_date)+1, month(local.user_date), day(local.user_date))>
        </cfif>
        <cfif local.datecompareofmom LT 0>
            <cfset local.momBornDay  = createDate(year(local.cur_date)+1, month(local.mom_date), day(local.mom_date))>
        </cfif>
        
        <cfset local.daysforUserBday = dateDiff("d", local.cur_date ,local.userBornDay)>
        <cfset local.daysforMomBday = dateDiff("d", local.cur_date ,local.momBornDay)>

        <cfif local.datecompareofuser EQ 0>
            <cfset local.daysforUserBday = "Today">
        </cfif>
        <cfif local.datecompareofmom EQ 0>
            <cfset local.daysforMomBday = "Today">
        </cfif>
        <cfset local.output = structNew()>
        <cfset local.output['Your Age'] = local.user_age>
        <cfset local.output['Mom Age'] = local.mom_age>
        <cfset local.output['Mother Age On Delivery'] = local.motherAgeOnDelivery>
        <cfset local.output['Days remain for ur bday'] = local.daysforUserBday>
        <cfset local.output['Days remain for Mom bday'] = local.daysforMomBday>

        <cfreturn local.output>

    </cffunction>

</cfcomponent>


