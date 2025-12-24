
tableextension 50101 "Race Order Build" extends "Assembly Header"
{
    fields
    {
        field(50100; "Race No."; Code[10])
        {
            //Editable = false;
            TableRelation = "Race Event";
        }
    }
    
    
}