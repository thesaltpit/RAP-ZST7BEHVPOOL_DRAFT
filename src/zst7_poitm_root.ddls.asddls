@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO item root definition'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZST7_POITM_ROOT as select from zst7_po_itm
association to parent ZST7_POHDR_ROOT as _header on $projection.parent_uuid = _header.purchase_uuid
{
    key item_uuid,
    parent_uuid,
    short_txt,
    @Semantics.amount.currencyCode: 'currency'
    price,
    currency,
    @Semantics.quantity.unitOfMeasure: 'unit'
    quanty,
    unit,
    @Semantics.systemDateTime.lastChangedAt: true
    changed_dt_time,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_chg_dt_time,
    
    _header
}
