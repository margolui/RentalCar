table 50205 "Rental Car/Customer Discount"
{
    Caption = 'Rental Car/Customer Discount';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Type"; Option)
        {
            Caption = 'Type';
            OptionMembers = Customer,Car;
            DataClassification = ToBeClassified;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation =

            IF (Type = CONST(Customer)) Customer
            ELSE
            IF (Type = CONST(Car)) Item;

            DataClassification = ToBeClassified;
        }
        field(3; "Value"; Decimal)
        {
            Caption = 'Value';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Type")
        {
            Clustered = true;
        }
    }

}
