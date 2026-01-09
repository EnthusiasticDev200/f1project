table 50107 "MNB Bonus Line"
{
    DataClassification = CustomerContent;
    Caption ='Bonus Line';
    fields
    {
        field(1;"Document No"; Code[20])
        {
            Caption = 'Document No';
            TableRelation = "MNB Bonus Header"; 
        }
        field(2; Type; Enum "MNB Bonus Type")
        {
            Caption ='Type';
        }
        field(3;"Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = if(Type=filter(Item))Item;
        }
        field(4; "Bonus Perc"; Integer)
        {
            Caption = 'Bonus Perc';
            MinValue = 0;
            MaxValue = 100;
        }
    }
    
    keys
    {
        key(PK; "Document No", Type, "Item No.")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}