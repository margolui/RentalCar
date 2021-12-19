table 50202 "Rental Sales Line"
{
    Caption = 'Rental Sales Line';
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

            trigger OnValidate()
            var
                Item: Record Item;
                RentalSalesHeader: Record "Rental Sales Header";

            begin
                RentalSalesHeader.Get("Doc No.");
                RecalculatePrice(RentalSalesHeader."Customer No.");

                if Item.Get("Item No.") then
                    Name := Item.Name;
            end;
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(5; Price; Decimal)
        {
            Caption = 'Price';
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(6; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                Item: Record Item;
                RentalSalesHeader: Record "Rental Sales Header";
            begin
                RentalSalesHeader.Get("Doc No.");
                RecalculatePrice(RentalSalesHeader."Customer No.");
            end;
        }
        field(7; "Total Price"; Decimal)
        {
            Caption = 'Total Price';
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(8; "Discount"; Decimal)
        {
            Caption = 'Discount';
            Editable = false;
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

    procedure RecalculatePrice(CustomerNo: Code[20])
    var
        Item: Record Item;
        Customer: Record Customer;
    begin
        if ("Item No." <> '') then begin
            Item.Get("Item No.");
            "Price" := Item."Unit Price";

            if Customer.Get(CustomerNo) then;

            if (Item.Discount > Customer.Discount) then
                Discount := Item.Discount
            else
                Discount := Customer.Discount;

            "Total Price" := Price * Quantity * (100 - Discount) / 100;
        end;
    end;
}
