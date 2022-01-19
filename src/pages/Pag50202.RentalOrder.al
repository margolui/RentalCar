page 50202 "Rental Order"
{

    Caption = 'Rental Order';
    PageType = Document;
    SourceTable = "Rental Sales Header";


    layout
    {
        area(Content)
        {
            group(General)
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
                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                    ToolTip = 'Specifies the value of the Sell-to Contact field.';
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
            part(SalesLines; "Rental Sales Lines")
            {
                ApplicationArea = Basic, Suite;
                Editable = true;
                SubPageLink = "Doc No." = FIELD("Doc No.");
                UpdatePropagation = Both;
            }
        }
        area(FactBoxes)
        {
            part(ItemPicture; "Item Picture")
            {
                ApplicationArea = All;
                Caption = 'Picture';
                Provider = SalesLines;
                SubPageLink = "No." = FIELD("Item No.");
            }
            part(CarFactBox; "Car Detais FactBox")
            {
                ApplicationArea = All;
                Provider = SalesLines;
                SubPageLink = "No." = FIELD("Item No.");
            }

        }

    }
    actions
    {
        area(Processing)
        {
            action(Post)
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                var
                    RentalOrderPost: Codeunit "Rental Order Post";
                begin
                    RentalOrderPost.Run(Rec);
                end;
            }
        }
    }


}
