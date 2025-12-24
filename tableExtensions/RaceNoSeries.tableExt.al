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

tableextension 50101 "Race Order Build" extends "Assembly Header"
{
    fields
    {
        field(50100; "Race Event"; Code[10])
        {
            TableRelation = "Race Event";
        }
    }
    
    
}