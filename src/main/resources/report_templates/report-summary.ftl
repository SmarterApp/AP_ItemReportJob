=======================
Report Summary
=======================

         Start: ${summary.startTime?datetime}
           End: ${summary.endTime?datetime}
Execution Time: ${summary.executionTime?long} seconds

   Total Items: ${summary.totalCount}
    Successful: ${summary.successfulCount}
        Failed: ${summary.errorCount}

-----------------------
Report Errors
-----------------------

Item Errors:
<#list summary.errors as error>
    <#if error.itemId??>
    [${error.itemId?left_pad(10)}] ${error.message}
    </#if>
</#list>

General Errors:
<#list summary.errors as error>
    <#if error.itemId??>
    <#else>
    - ${error.message}
    </#if>
</#list>
