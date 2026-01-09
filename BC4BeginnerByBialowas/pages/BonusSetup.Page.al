page 50104 "MNB Bonus SetUp"
{
    PageType = Card;
    Caption = 'Bonus Setup';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bonus Setup";
    DeleteAllowed  = false;
    InsertAllowed = false;
    
    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Bonus No.";Rec."Bonus No." )
                {
                    ApplicationArea = All;
                    ToolTip = 'Represents a number series for bonus setup entry';
                }
            }
        }
    }
}