pageextension 50204 "Rental Cars List" extends "Item List"
{
    actions
    {
        addlast(Functions)
        {

            action(ExportRentalCar)
            {
                Caption = 'Export Rental Car';
                ApplicationArea = All;
                RunObject = xmlport "Rental Car";
                Promoted = true;
                PromotedCategory = Process;
                Image = Export;
            }
            action(ImportRentalCar)
            {
                Caption = 'Import Rental Car';
                ApplicationArea = All;
                RunObject = xmlport "Rental Car Import";
                Promoted = true;
                PromotedCategory = Process;
                Image = Import;
            }
        }
    }
}
