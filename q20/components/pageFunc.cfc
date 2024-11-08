<cfcomponent>
    <cffunction name="calculate" access="public">
        <cfargument name="email" type="String">
        <cfargument name="captcha" type="String">
        <cfset local.emailPattern = "^[0-9A-Za-z.'+_-]+@([0-9A-Za-z-]+\.)+[A-Za-z]+$">
        <cfset local.captchaCheck = "string123">
        
        <cfif NOT REFindNoCase(local.emailPattern, arguments.email)>
            <cfset local.result = "red : Please enter a valid Email! eg. abc@abc.com">
        <cfelseif trim(arguments.captcha) NEQ local.captchaCheck>
            <cfset local.result = "red : Captcha does'nt match">
        <cfelse>
            <cfset local.result = "green : Email Address successfully subscribe our newsletter">
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>

