tableextension 50103 VendorExt extends Vendor
{
    fields
    {
        // Add changes to table fields here
        field(50100;"Vendor Score"; Decimal) //should be in %
        {
            Caption = 'Vendor score';
            Editable = false;
        }
    }
    
    
}