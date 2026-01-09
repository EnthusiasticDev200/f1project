table 50106 "MNB Bonus Header"
{
    DataClassification = CustomerContent;
    Caption = 'Bonus';
    fields
    {
        field(1;"No."; Code[20])
        {
           Caption = 'No.';
        }
        field(2; "Customer No."; Code[20])
        {
            Caption ='Customer No.';
            TableRelation = Customer;
        }
        field(3; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(4; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(5; Status; Enum "MNB Bonus Status")
        {
            Caption = 'Status';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}