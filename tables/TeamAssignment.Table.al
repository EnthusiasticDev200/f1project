table 50104 "Team Assignment"
{
    DataClassification = CustomerContent;
    Caption = 'Team Assignment';
    
    fields
    {
        field(1;"Team Assignment No."; Code[10])
        {
            Caption = 'No.';
            Editable = false;
        }
        field(2; "Team Member No."; Code[10])
        {
            TableRelation = "Team Member";
            Caption = 'Team Member No.';
        }
        field(3; "Race No."; Code[10])
        {
            TableRelation = "Race Event";
            Caption = ' Race Event';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
            
            trigger OnValidate()
            var 
                eventRec : Record "Race Event";
                eventDate : Date;
            begin
                eventDate := eventRec."Race Date";
                if Rec.Date <> eventDate then
                    Error('Date doesn''t match any race event date')
            end;
        }
        field(5; "No. Series"; Code[10])
        {
            TableRelation = "No. Series";
        }
    }
    
    keys
    {
        key(PK; "Team Assignment No.")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        SaleSetup : Record "Sales & Receivables Setup";
        NoSeriesMgt : Codeunit "No. Series";
    
    trigger OnInsert()
    begin
        if "Team Assignment No." = '' then begin
            SaleSetup.Get();
            SaleSetup.TestField("Team Assignment No.");
            if NoSeriesMgt.AreRelated(SaleSetup."Team Assignment No.", xRec."No. Series") then
                "No. Series" := xRec."No. Series"
            else
                "No. Series" := SaleSetup."Team Assignment No.";
                "Team Assignment No." := NoSeriesMgt.GetNextNo("No. Series", WorkDate());
        end;
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