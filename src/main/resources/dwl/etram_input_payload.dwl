output application/json
---
{
	"sequencenumber": "",
    "artifact": app.name,
    "createddate": ((now() >> "America/New_York") as String replace "T" with " "),
    "enterpriseobject": "Mulesoft",
    "instanceid": (correlationId),
    "integrationid":"OXCG-863" ,
    "operation": "publishing data to queue",
    "originatingendpoint": "edi 210 staging table",
    "platform":p("etram.mule.env"),
    "reprocessattemptnumber": "",
    "reprocessdate": "",
    "reprocessuri": "",
    "sensitivedataflag": "FALSE",
    "source": p('db.tablename'),
    "specialinstruction": "--", 
    "systemcode": "FAILURE",
    "systemmessage": (error.description default ""),
    "target": vars.queue_name default "210 queue",
    "targetendpoint": p('etram.target'),
    "keydata": (payload.INVOICE_NUMBER default "Connection error"),
    "reprocessuricontenttype": "application/json",
    "usererrormessage": "--",
    "errortype": "FAILURE",
    "reprocessstatus": "N",
    "payload": (payload.INVOICE_NUMBER.^raw as String default "")

}