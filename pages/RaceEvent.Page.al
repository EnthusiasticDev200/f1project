page 50101 "Race Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Race Event";
    
    layout
    {
        area(Content)
        {
            repeater("List of Scheduled Race")
            {
                field("Race No."; Rec."Race No.")
                {
                    Tooltip = 'Specifies a unique value that identifies a given race';
                }
                field(Name; Rec."Race Name")
                {
                    Tooltip = 'Shows the a name of the race';
                }

                field(Date; Rec."Race Date")
                {
                    Tooltip = 'Specifies a unique value that identifies a given race';
                }

                field(Location; Rec.Location)
                {
                    Tooltip = 'Displays the choosen location which refers to the city and state for the scheduled race';
                }

                field(Circuit; Rec.Circuit)
                {
                    Tooltip = 'Shows the circuit choosen for the race';
                }

                field(Status; Rec.Status)
                {
                    Tooltip = 'Shows the statrus of the race';
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}