// codeunit 50201 "Rental Car Management"
// {
//     TableNo = "Rental Sales Header";

//     trigger OnRun()
//     var
//         RentalSalesLine: Record "Rental Sales Line";
//         PostedRentalLine: Record "Posted Rental Line";
//     begin

//     end;

//     procedure CheckCarValiable(ItemNo: Code[20]);
//     var
//         RentalSalesLine: Record "Rental Sales Line";
//         PostedRentalLine: Record "Posted Rental Line";
//     begin
//         RentalSalesLine.SetRange("Item No.", ItemNo);
//         RentalSalesLine.FindSet("")
//     end;
// }
