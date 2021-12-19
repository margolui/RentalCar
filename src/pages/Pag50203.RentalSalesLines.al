page 50203 "Rental Sales Lines"
{

    Caption = 'Rental Sales Lines';
    PageType = ListPart;
    SourceTable = "Rental Sales Line";
    AutoSplitKey = true;

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
                field("Discount"; Rec.Discount)
                {
                    ToolTip = 'Specifies the value of the Discount field.';
                    ApplicationArea = All;
                }
            }
        }
    }

}
