page 50100  "Customer Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "My Customers";
    
    layout
    {
        area(Content)
        {
            repeater("Customer List")
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Displays customer identifer';
                }

                field(Name; Rec.Name)
                {
                    ToolTip = 'Displays customer''s name';
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