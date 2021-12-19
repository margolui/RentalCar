page 50205 "Posted Rental Order"
{

    Caption = 'Posted Rental Order';
    PageType = Card;
    SourceTable = "Posted Rental Header";
    Editable = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                    ApplicationArea = All;
                }
                field("Doc No."; Rec."Doc No.")
                {
                    ToolTip = 'Specifies the value of the Doc No. field.';
                    ApplicationArea = All;
                }
                field("Order Date"; Rec."Order Date")
                {
                    ToolTip = 'Specifies the value of the Order Date field.';
                    ApplicationArea = All;
                }
                field("Salesperson No."; Rec."Salesperson No.")
                {
                    ToolTip = 'Specifies the value of the Salesperson No. field.';
                    ApplicationArea = All;
                }
                field("Sell-to Address"; Rec."Sell-to Address")
                {
                    ToolTip = 'Specifies the value of the Sell-to Address field.';
                    ApplicationArea = All;
                }
                field("Sell-to Address 2"; Rec."Sell-to Address 2")
                {
                    ToolTip = 'Specifies the value of the Sell-to Address 2 field.';
                    ApplicationArea = All;
                }
                field("Sell-to City"; Rec."Sell-to City")
                {
                    ToolTip = 'Specifies the value of the Sell-to City field.';
                    ApplicationArea = All;
                }
                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                    ToolTip = 'Specifies the value of the Sell-to Contact field.';
                    ApplicationArea = All;
                }
                field("Sell-to Contact No."; Rec."Sell-to Contact No.")
                {
                    ToolTip = 'Specifies the value of the Sell-to Contact No. field.';
                    ApplicationArea = All;
                }
                field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the Sell-to Country/Region Code field.';
                    ApplicationArea = All;
                }
                field("Sell-to County"; Rec."Sell-to County")
                {
                    ToolTip = 'Specifies the value of the Sell-to County field.';
                    ApplicationArea = All;
                }
                field("Sell-to Customer Name "; Rec."Sell-to Customer Name ")
                {
                    ToolTip = 'Specifies the value of the Sell-to Customer Name field.';
                    ApplicationArea = All;
                }
                field("Sell-to E-Mail"; Rec."Sell-to E-Mail")
                {
                    ToolTip = 'Specifies the value of the Email field.';
                    ApplicationArea = All;
                }
                field("Sell-to Phone No."; Rec."Sell-to Phone No.")
                {
                    ToolTip = 'Specifies the value of the Sell-to Phone No. field.';
                    ApplicationArea = All;
                }
                field("Sell-to Post Code"; Rec."Sell-to Post Code")
                {
                    ToolTip = 'Specifies the value of the Sell-to Post Code field.';
                    ApplicationArea = All;
                }
            }
            part(SalesLines; "Posted Rental Lines")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "Doc No." = FIELD("Doc No.");
                UpdatePropagation = Both;
            }
        }
    }

}
