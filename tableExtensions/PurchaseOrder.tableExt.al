tableextension 50102 PurOrderExt extends "Purchase Header"
{
    fields
    {
        field(50100; "Vendor Score"; Integer)
        {
            Caption = 'Vendor Score';
            TableRelation = Vendor; 
        }
        field(50101; "Order Urgency"; Enum "Order Urgency")
        {
            Caption = 'Order Urgency';
        }
    }
    
   
}