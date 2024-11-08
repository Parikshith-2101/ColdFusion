<cfcomponent>
    <cffunction name = "calculate" access = "public" returnType = "struct">
        <cfargument name = "userIn1" type = "date">
        <cfargument name = "userIn2" type = "date">
        
        <cfset local.userDate = dateFormat(arguments.userIn1)>
        <cfset local.momDate = dateFormat(arguments.userIn2)>
        <cfset local.curDate = dateFormat(now())>
       
        <cfset local.userAge = dateDiff("yyyy", local.userDate, local.curDate)>
        <cfset local.momAge = dateDiff("yyyy", local.momDate, local.curDate)>

        <cfset local.motherAgeOnDelivery = year(local.userDate)-year(local.momDate)>

        <cfset local.userBornDay = createDate(year(local.curDate), month(local.userDate), day(local.userDate))>
        <cfset local.momBornDay = createDate(year(local.curDate), month(local.momDate), day(local.momDate))>
        
        <cfset local.dateCompareofUser = dateCompare(local.userDate ,local.curDate)>
        <cfset local.dateCompareofMom = dateCompare(local.momDate ,local.curDate)>

        <cfif local.dateCompareofUser LT 0>
            <cfset local.userBornDay  = createDate(year(local.curDate)+1, month(local.userDate), day(local.userDate))>
        </cfif>
        <cfif local.dateCompareofMom LT 0>
            <cfset local.momBornDay  = createDate(year(local.curDate)+1, month(local.momDate), day(local.momDate))>
        </cfif>
        
        <cfset local.daysforUserBday = dateDiff("d", local.curDate ,local.userBornDay)>
        <cfset local.daysforMomBday = dateDiff("d", local.curDate ,local.momBornDay)>

        <cfif local.dateCompareofUser EQ 0>
            <cfset local.daysforUserBday = "Today">
        </cfif>
        <cfif local.dateCompareofMom EQ 0>
            <cfset local.daysforMomBday = "Today">
        </cfif>
        <cfset local.output = structNew()>
        <cfset local.output['Your Age'] = local.userAge>
        <cfset local.output['Mom Age'] = local.momAge>
        <cfset local.output['Mother Age On Delivery'] = local.motherAgeOnDelivery>
        <cfset local.output['Days remain for ur bday'] = local.daysforUserBday>
        <cfset local.output['Days remain for Mom bday'] = local.daysforMomBday>

        <cfreturn local.output>
    </cffunction>
</cfcomponent>


