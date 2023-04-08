@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO header root definition'
@Metadata.allowExtensions: true
define root view entity ZST7_POHDR_ROOT
  as select from zst7_po_hdr
  composition [1..*] of ZST7_POITM_ROOT as _items
{
  key purchase_uuid,
      po_num,
      po_desc,
      po_priority,
      compcode,
      @Semantics.amount.currencyCode: 'currency'
      totalprice,
      currency,
      @Semantics.user.createdBy: true                //Annotation added so that it is filled by the framework and we don't have to add it
      created_by,
      @Semantics.systemDateTime.createdAt: true   //Annotation added so that it is filled by the framework and we don't have to add it
      createddt_time,
      @Semantics.systemDateTime.lastChangedAt: true   //Annotation added so that it is filled by the framework and we don't have to add it
      changeddt_time,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true   //Annotation added so that it is filled by the framework and we don't have to add it
      lastchngdttm,
      
      _items

}
