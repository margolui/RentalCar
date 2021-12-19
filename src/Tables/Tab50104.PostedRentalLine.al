table 50204 "Posted Rental Line"
{
    Caption = 'Posted Rental Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Doc No."; Code[20])
        {
            Caption = 'Doc No.';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }

        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = ToBeClassified;
            TableRelation = "Item";
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(5; Price; Decimal)
        {
            Caption = 'Price';
            DataClassification = ToBeClassified;
        }
        field(6; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
        field(7; "Total Price"; Decimal)
        {
            Caption = 'Total Price';
            DataClassification = ToBeClassified;
        }
        field(8; "Discount"; Decimal)
        {
            Caption = 'Discount';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Doc No.", "Line No.")
        {
            Clustered = true;
        }
    }

}
