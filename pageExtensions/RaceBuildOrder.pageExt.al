
pageextension 50101 "Race Build Order" extends "Assembly Order"
{
    layout
    {
        addafter("Item No.")
        {
            field("Race No."; Rec."Race No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the code for the number series that will be used to assign numbers to a given race';
            }
        }
    }
    
    
}
