@EndUserText.label: 'Travel BO projection view'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity ZC_RAP_TRAVEL_TBL_1 as projection on ZI_RAP_Travel_TBL_1 as Travel{
    @Search.defaultSearchElement: true
    key TravelUUID,
    @Search.defaultSearchElement: true
    TravelID,
    @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Agency', element: 'AgencyID'} }]
    @ObjectModel.text.element: ['AgencyName']
    @Search.defaultSearchElement: true
    AgencyID,
    _Agency.Name as AgencyName,
    @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Customer', element: 'CustomerID'} }]
    @ObjectModel.text.element: ['CustomerName'] 
    @Search.defaultSearchElement: true
    CustomerID,
    _Customer.LastName as CustomerName,
    BeginDate,
    EndDate,
    @semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
    @semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    @Consumption.valueHelpDefinition: [{ entity : {name: 'I_Currency', element: 'Currency'} }]
    CurrencyCode,
    Description,
    TravelStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    //ZI_RAP_TRAVEL_TBL_1
    _Agency,
    _Booking : redirected to composition child ZC_RAP_BOOKING_TBL_1,
    _Currency,
    _Customer
}
