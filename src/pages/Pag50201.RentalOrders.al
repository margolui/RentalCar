page 50201 "Rental Orders"
{

    ApplicationArea = All;
    Caption = 'Rental Orders';
    PageType = List;
    SourceTable = "Rental Sales Header";
    UsageCategory = Lists;
    CardPageId = "Rental Order";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Doc No."; Rec."Doc No.")
                {
                    ToolTip = 'Specifies the value of the Doc No. field.';
                    ApplicationArea = All;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
