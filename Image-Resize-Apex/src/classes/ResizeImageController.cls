public with sharing class ResizeImageController 
{
	 public Attachment theAttachment{get;set;}
	 public Attachment thumbnail{get;set;}
	 public String resizedBase64Value{get;set;}
	 public ResizeImageController()
	 {
	        thumbnail = new Attachment();
	        theAttachment = new Attachment();
         }
     
	public String theBase64Value
	{
	      get
	      {
	    	if(theAttachment.Body != null)
	    	{
	    		theBase64Value = EncodingUtil.base64Encode(theAttachment.Body);
	    		theAttachment.Body = null;//null out as we don't need this any more.helps to reduce view state
	    	}
	      	return theBase64Value;
	      }
	      set;
	}
     
	 public void doAction()
	 {
	 	//doesn't do any thing but the uploaded image is put in the view state
	 }
    	 //code to save the resized image
	 /* 
	 public void saveThumbNail()
	 {
	    //create any object to save the attachment to
	    Merchandise__c theMerchandise = new Merchandise__c(); //custom object to attach the attachment to
	 
	    theMerchandise.Name = 'test merchandise'+DateTime.now();
	    theMerchandise.Description__c = 'test merchandise';
	    theMerchandise.Price__c = 55;
	    theMerchandise.Total_Inventory__c = 5;
	    insert theMerchandise;
	 	
	 	thumbnail.ParentId = theMerchandise.Id;
	 	thumbnail.Name = theAttachment.Name;
	 	String tempvalue =  resizedBase64Value.substringAfterLast('base64,');//apex doesn't seem to like this MIME type info .so,removing that part.
	 	thumbnail.Body = EncodingUtil.base64Decode(tempvalue);
	 	insert thumbnail;
	 }
	 */
}