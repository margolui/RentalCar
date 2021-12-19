pageextension 50202 "Rental Car" extends "Item Card"
{
    layout
    {
        addafter(Item)
        {
            group(Car)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                }
                field(Color; Rec.Color)
                {
                    ApplicationArea = All;
                }
                field(Mileage; Rec.Mileage)
                {
                    ApplicationArea = All;
                }
                field(Manufacture; Rec.Manufacture)
                {
                    ApplicationArea = All;
                }
                field(Discount; Rec.Discount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
