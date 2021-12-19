table 50201 "Rental Sales Header"
{
    Caption = 'Rental Sales Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Doc No."; Code[20])
        {
            Caption = 'Doc No.';
            DataClassification = CustomerContent;
        }
        field(2; "Salesperson No."; Code[20])
        {
            Caption = 'Salesperson No.';
            DataClassification = CustomerContent;
            TableRelation = "Salesperson/Purchaser";
        }
        field(3; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;

            trigger OnValidate()
            var
                Customer: Record Customer;
                RentalSalesLine: Record "Rental Sales Line";
            begin
                if ("Customer No." <> xRec."Customer No.") and
                   ("Customer No." <> '')
                then begin
                    Customer.Get("Customer No.");
                    "Sell-to Customer Name " := Customer.Name;
                    "Sell-to Address" := Customer.Address;
                    "Sell-to Address 2" := Customer."Address 2";
                    "Sell-to City" := Customer.City;
                    "Sell-to County" := Customer.County;
                    "Sell-to Post Code" := Customer."Post Code";
                    "Sell-to Country/Region Code" := Customer."Country/Region Code";
                    "Sell-to Contact No." := Customer."Primary Contact No.";
                    "Sell-to City" := Customer.City;
                    "Sell-to Phone No." := Customer."Phone No.";
                    "Sell-to E-Mail" := Customer."E-Mail";
                    "Sell-to Contact" := Customer.Contact;
                end;

                RentalSalesLine.SetRange("Doc No.", "Doc No.");
                if RentalSalesLine.FindSet() then
                    repeat
                        RentalSalesLine.RecalculatePrice("Customer No.");
                        RentalSalesLine.Modify();
                    until RentalSalesLine.Next() = 0;
            end;
        }
        field(5; "Order Date"; Date)
        {
            Caption = 'Order Date';
            DataClassification = CustomerContent;
        }
        field(107; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(80; "Sell-to Customer Name "; Text[50])
        {
            Caption = 'Sell-to Customer Name';
        }
        field(81; "Sell-to Address"; Text[100])
        {
            Caption = 'Sell-to Address';
        }
        field(82; "Sell-to Address 2"; Text[50])
        {
            Caption = 'Sell-to Address 2';
        }
        field(83; "Sell-to City"; Text[30])
        {
            Caption = 'Sell-to City';
            TableRelation = IF ("Sell-to Country/Region Code" = CONST('')) "Post Code".City
            ELSE
            IF ("Sell-to Country/Region Code" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("Sell-to Country/Region Code"));
        }
        field(84; "Sell-to Contact"; Text[100])
        {
            Caption = 'Sell-to Contact';
        }
        field(89; "Sell-to County"; Text[30])
        {
            CaptionClass = '5,1,' + "Sell-to Country/Region Code";
            Caption = 'Sell-to County';
        }

        field(90; "Sell-to Country/Region Code"; Code[10])
        {
            Caption = 'Sell-to Country/Region Code';
            TableRelation = "Country/Region";
        }

        field(91; "Sell-to Post Code"; Code[20])
        {
            Caption = 'Sell-to Post Code';
            TableRelation = IF ("Sell-to Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Sell-to Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Sell-to Country/Region Code"));
        }
        field(5052; "Sell-to Contact No."; Code[20])
        {
            Caption = 'Sell-to Contact No.';
            TableRelation = Contact;
        }
        field(171; "Sell-to Phone No."; Text[30])
        {
            Caption = 'Sell-to Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(172; "Sell-to E-Mail"; Text[80])
        {
            Caption = 'Email';
            ExtendedDatatype = EMail;
        }
    }
    keys
    {
        key(PK; "Doc No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        SalesSetup: Record "Sales & Receivables Setup";
    begin
        SalesSetup.Get();
        NoSeriesMgt.InitSeries(SalesSetup."Order Nos.", '', Today, "Doc No.", "No. Series");
        //NoSeriesMgt.InitSeries(SalesSetup."Order Nos.", '', "Posting Date", "No.", "No. Series");
    end;
}
