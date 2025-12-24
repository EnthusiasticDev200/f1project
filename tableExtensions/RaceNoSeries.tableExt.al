tableextension 50100 RaceExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Race No."; Code[10]) // since 10 is used, code must be <=10 eg race000001 on creation
        {
            TableRelation = "No. Series";
        }
    }
    

}