pageextension 50102 "Vendor Ext Page" extends "Vendor Card"
{
    layout
    {
        addafter(Payments)
        {
            field("Vendor Score";Rec."Vendor Score")
            {
                ApplicationArea = All;
                ToolTip = 'Displays percentage score (%) based on vendor''s delivery performance';
            }
        }
    }
    
   
}