tableextension 50100 RaceExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Race No."; Code[10])
        {
            TableRelation = "No. Series";
        }
    }
    

}