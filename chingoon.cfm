<cfsetting enableCFoutputOnly = "Yes">

<cfset top_head = " __________
" >
<cfset eyes     = "(--[ .]-[ .]">
<cfset fatty    = "
(       O  )">
<cfset slim     = "
(_______O__)">
<cfset fat      = "
(          )">
<cfset chin     = "
(__________)">

<cfif isdefined('chins')>
  <cfset fat_factor = chins>
<cfelse>
  <cfset fat_factor = 0>
</cfif>

  <cfoutput><pre>#top_head#</cfoutput>
  <cfoutput>#eyes#</cfoutput>

<cfif fat_factor is "0">
  <cfoutput>#slim#</cfoutput>
    <cfabort>
<cfelse>
  <cfoutput>#fatty#</cfoutput>
</cfif>

<cfloop index="gummy_crunch" from="1" to="#fat_factor#">
  <cfif gummy_crunch is fat_factor>
    <cfoutput>#chin#</cfoutput>
  <cfelse>
    <cfoutput>#fat#</cfoutput>
  </cfif>
</cfloop>

  <cfoutput></pre></cfoutput>
