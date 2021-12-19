codeunit 50200 "Rental Order Post"
{
    TableNo = "Rental Sales Header";

    trigger OnRun()
    var
        RentalSalesLine: Record "Rental Sales Line";
        PostedRentalHeader: Record "Posted Rental Header";
        PostedRentalLine: Record "Posted Rental Line";
    begin
        //codeunit Sales-Post, function PostSalesLine?

        PostedRentalHeader.TransferFields(Rec);
        PostedRentalHeader.Insert();

        RentalSalesLine.SetRange("Doc No.", Rec."Doc No.");
        if RentalSalesLine.FindSet() then
            repeat
                PostedRentalLine.TransferFields(RentalSalesLine);
                PostedRentalLine.Insert();
            until RentalSalesLine.Next() = 0;

        Rec.Delete();
        RentalSalesLine.DeleteAll();
    end;
}
