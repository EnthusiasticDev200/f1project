pageextension 50100 "RaceNoSeriesExt" extends "Sales & Receivables Setup"
{
    layout
    {
        // Add changes to page layout here
        addlast("Number Series")
        {
            field("Race No.";Rec."Race No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the code for the number series that will be used to assign numbers to a given race';

            }
        }
    } 
    
   
}
