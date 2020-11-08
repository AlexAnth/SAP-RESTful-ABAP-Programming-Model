CLASS zd_rap_eml_tbl_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zd_rap_eml_tbl_1 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " step 1 Read
    read entities of ZI_RAP_Travel_TBL_1
        ENTITY Travel
            ALL FIELDS
            WITH value #( ( TravelUUID = '54E708A09DA9D65217000C0262372D9B' ) )
    result data(travels).
    out->write( travels ).
  ENDMETHOD.

ENDCLASS.
