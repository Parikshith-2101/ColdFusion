<cfquery name="getAllData" datasource="myDBMS">
    SELECT * FROM Names
</cfquery>  
<h2>All Data:</h2>
<table border="1">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
    </tr>
    <cfoutput query="getAllData">
        <tr>
            <td>#FirstName#</td>
            <td>#LastName#</td>
        </tr>
    </cfoutput>
</table>

<cfoutput>
<h3>#form.number#th row FirstName column</h3>
#QueryGetRow(getAllData, form.number).FirstName#<br>
#getAllData.FirstName[form.number]#
</cfoutput>


