table 50105 "MNB Bonus Setup"
{
    DataClassification = CustomerContent;
    Caption = 'Bonus Set-up';
    
    fields
    {
        field(1;"Primary Key"; Code[10])
        {
           Caption = 'Primary Key';   
        }
        field(2; "Bonus No."; Code[10])
        {
            Caption = 'Bonus No.';
            TableRelation = "No. Series"; // why no series, and not bonus header
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    
    
}