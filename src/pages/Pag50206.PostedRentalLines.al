page 50206 "Posted Rental Lines"
{

    Caption = 'Posted Rental Lines';
    PageType = ListPart;
    SourceTable = "Posted Rental Line";
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Item No."; Rec."Item No.")
                {
                    ToolTip = 'Specifies the value of the Item No. field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the Price field.';
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                    ApplicationArea = All;
                }
                field("Total Price"; Rec."Total Price")
                {
                    ToolTip = 'Specifies the value of the Total Price field.';
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    ToolTip = 'Specifies the value of the Discount field.';
                    ApplicationArea = All;
                }
                field("From Date"; Rec."From Date")
                {
                    Caption = 'From Date';
                }
                field("To Date"; Rec."To Date")
                {
                    Caption = 'To Date';
                }
            }
        }
    }

}
