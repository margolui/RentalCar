pageextension 50204 "Rental Cars List" extends "Item List"
{
    actions
    {
        addlast(Functions)
        {

            action(ExportImportRentalCar)
            {
                Caption = 'Export Import Rental Car';
                ApplicationArea = All;
                RunObject = xmlport "Rental Car";
                Promoted = true;
                PromotedCategory = Process;
                Image = ImportExport;
            }
        }
    }
}
