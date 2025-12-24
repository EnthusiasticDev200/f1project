table 50101 "Race Event"
{
    Caption = 'Race Event';
    DataClassification = CustomerContent;
    LookupPageId = "Race Page";
    
    fields
    {
        field(1;"Race No."; Code[10])
        {
            Caption = 'Race Id';
            Editable = false;
        }
        field(2; "Race Name"; Text[20])
        {
            Caption = 'Name';
        }
        field(3; "Race Date"; Date)
        {
            Caption = 'Date';
            // logic date cannot be in the past
            trigger OnValidate()  
                begin
                    if "Race Date" < Today() then
                        Error('Date cannot be in the past')
                end;
        }
        field(4; Location; Text[20])
        {
            Caption = 'Location';
        }

        field(5; Circuit; Text[20])
        {
            Caption = 'Circuit';
        }

        field(6; Status; Enum "Race Status")
        {
            Caption = 'Race Status';
        }

        field(7; "No. Series"; Code[10])
        {
            TableRelation = "No. Series";
        }
    }
    
    keys
    {
        key(PK; "Race No.")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        SalesSetUp: Record "Sales & Receivables Setup";
        NoSeriesMgt : Codeunit "No. Series"; // replaces NoSeriesManage
    
    trigger OnInsert()
    begin
        if "Race No." = '' then begin
                SalesSetUp.Get();
                SalesSetUp.TestField("Race No.");
                if NoSeriesMgt.AreRelated(SalesSetUp."Race No.", xRec."No. Series") then
                    "No. Series" := xRec."No. Series"
                else
                    "No. Series" := SalesSetUp."Race No.";
                    "Race No." := NoSeriesMgt.GetNextNo("No. Series", WorkDate());
            end;
            //Error('Race No and Name must be field'); 
    end;
    
    trigger OnModify()
    begin
        if (xRec."Race No." <> '') and (Rec."Race No." = '') and 
           (xRec."Race Name" <> '') and (Rec."Race Name" = '') then
            Error('Field cannot be empty');
    end;
    
    trigger OnDelete()
    begin
        Message('Race event with id %1 has been deleted', xRec."Race No.");
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}