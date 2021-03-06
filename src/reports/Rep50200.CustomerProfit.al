report 50200 "Customer Profit"
{
    ApplicationArea = All;
    Caption = 'Customer Profit test';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'src\Layout\RentalCar.docx';
    RDLCLayout = 'src\Layout\RentalCar.rdlc';

    dataset
    {
        dataitem(PostedRentalHeader; "Posted Rental Header")
        {
            column(CustomerNo; "Customer No.")
            {
            }
            column(DocNo; "Doc No.")
            {
            }
            column(OrderDate; "Order Date")
            {
            }
            column(Total; Total)
            {
            }
            trigger OnAfterGetRecord()
            var
                PostedRentalLine: Record "Posted Rental Line";
            begin
                Total := 0;

                PostedRentalLine.SetRange("Doc No.", "Doc No.");
                if PostedRentalLine.FindSet() then
                    repeat
                        Total += PostedRentalLine."Total Price";
                    until PostedRentalLine.Next() = 0;
            end;
        }
    }

    var
        Total: Decimal;
}
