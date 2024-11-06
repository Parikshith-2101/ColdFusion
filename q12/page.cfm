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
#QueryGetRow(getAllData, form.number).FirstName#<br>
#getAllData.FirstName[form.number]#
</cfoutput>


