codeunit 50201 "Rental Car Management"
{
    TableNo = "Rental Sales Header";

    trigger OnRun()
    var
        RentalSalesLine: Record "Rental Sales Line";
        PostedRentalLine: Record "Posted Rental Line";
    begin

    end;

    // procedure CheckCarValiable(CurrentCar : Record "Rental Sales Line");
    // var
    //     RentalSalesLine: Record "Rental Sales Line";
    //     PostedRentalLine: Record "Posted Rental Line";
    // begin
    //     RentalSalesLine.SetRange("Item No.", CurrentCar ItemNo);
    //     RentalSalesLine.FindSet()
    // end;
}
