table 50103 "Team Member"
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;"Team Member No."; Code[10])
        {
            Caption = 'Team Member No.';
            Editable = false;
        }
        field(2; "Full Name"; Text[20])
        {
            Caption = 'Full Name';
        }
        field(3;"Contact Address"; Text[50])
        {
            Caption = 'Contact Address';
        }
        field(4; State; Text[10])
        {
            Caption = 'City';
        }
        field(5; Country;Text[20])
        {
            Caption = ' Country';
        }
        field(6; Email; Text[20])
        {
            Caption = 'Email';
        }
        field(7; "Phone No."; Text[20])
        {
            Caption = 'Phone Number';
        }
        field(8; Role; Enum "Team Member Role")
        {
            Caption = 'Role';
        }
        field(9;"Automobile Company"; Enum "Automobile Company")
        {
            Caption = 'Automobile Company';
        }
        field(10; "No. Series"; Code[10])
        {
            TableRelation = "No. Series";
        }
    }
    
    keys
    {
        key(PK; "Team Member No.")
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
        NoSeriesMgt : Codeunit "No. Series";
    
    trigger OnInsert()
    begin
        if "Team Member No." = '' then begin
            SalesSetUp.Get();
            SalesSetUp.TestField("Team Member No.");
            if NoSeriesMgt.AreRelated(SalesSetUp."Team Member No.", xRec."No. Series") then
                "No. Series" := xRec."No. Series"
            else
                "No. Series" := SalesSetUp."Team Member No.";
                "Team Member No." := NoSeriesMgt.GetNextNo("No. Series", WorkDate());
        end;
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        Message('%1 has been successfully deleted', xRec."Team Member No.");
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}