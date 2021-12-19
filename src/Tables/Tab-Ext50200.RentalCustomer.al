tableextension 50201 "Rental Customer" extends Customer
{
    fields
    {
        field(50200; Discount; Decimal)
        {
            Caption = 'Discount';
            DataClassification = ToBeClassified;
        }
    }
}
