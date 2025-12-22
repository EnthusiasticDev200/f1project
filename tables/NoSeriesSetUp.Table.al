table 50102 "Num Series Set Up"
{
    Caption = 'Num Series SetUp';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;MyField; Integer)
        {
            
            
        }
    }
    
    keys
    {
        key(Key1; MyField)
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