<cfcomponent>
    <cffunction name="calculate" access = "public" returnType = "void">
        <cfargument name="userName" type = "String">
        <cfargument name="userEmail" type = "String">
        <cfargument name="userText" type = "String">
        <cfargument name="userFile" type = "String">

        <cfset local.greetingImage = imageRead(form.userFile)>

        <cfmail from="user@gmail.com"  subject="Birthday Wishes"  to = "#arguments.userEmail#">
            Dear #arguments.userName#,
                    #arguments.userText# <br>
                    <cfimage action = "writeToBrowser" source = "#local.greetingImage#" width = "200" height = "200">
        </cfmail>
    </cffunction>
</cfcomponent>