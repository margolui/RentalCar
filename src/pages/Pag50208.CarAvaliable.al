page 50208 "Car Avaliable"
{
    Caption = 'Car Avaliable';
    PageType = CardPart;
    SourceTable = Item;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field(Mileage; Rec.Mileage)
                {
                    ToolTip = 'Specifies the value of the Mileage field.';
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the item.';
                    ApplicationArea = All;
                }
                field(Manufacture; Rec.Manufacture)
                {
                    ToolTip = 'Specifies the value of the Manufacture field.';
                    ApplicationArea = All;
                }
                field(Color; Rec.Color)
                {
                    ToolTip = 'Specifies the value of the Color field.';
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    ToolTip = 'Specifies the value of the Discount field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
