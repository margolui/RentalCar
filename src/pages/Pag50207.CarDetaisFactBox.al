page 50207 "Car Detais FactBox"
{
    Caption = 'Car Detais FactBox';
    PageType = CardPart;
    SourceTable = Item;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field(Color; Rec.Color)
                {
                    ToolTip = 'Specifies the value of the Color field.';
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the item.';
                    ApplicationArea = All;
                }
                field(Mileage; Rec.Mileage)
                {
                    ToolTip = 'Specifies the value of the Mileage field.';
                    ApplicationArea = All;
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Model field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the price of one unit of the item or resource. You can enter a price manually or have it entered according to the Price/Profit Calculation field on the related card.';
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    ToolTip = 'Specifies the value of the Discount field.';
                    ApplicationArea = All;
                }
                field(Manufacture; Rec.Manufacture)
                {
                    ToolTip = 'Specifies the value of the Manufacture field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
