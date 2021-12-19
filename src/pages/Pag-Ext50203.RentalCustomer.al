pageextension 50203 "Rental Customer" extends "Customer Card"
{
    layout
    {
        addlast(Payments)
        {
            field(Discount; Rec.Discount)
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
}
