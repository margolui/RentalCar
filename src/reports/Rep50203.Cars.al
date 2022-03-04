report 50203 Cars
{
    ApplicationArea = All;
    Caption = 'Cars';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'src\Layout\Cars.docx';
    RDLCLayout = 'src\Layout\Cars.rdlc';
    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = WHERE("Rental Car" = FILTER(true));

            column(CompanyName; CompanyName)
            {
            }
            column(CompanyNameCaption; CompanyNameCaptionLbl)
            {
            }
            column(No; "No.")
            {
            }
            column(NoCaption; NoCaptionLbl)
            {
            }
            column(Description; Description)
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(Unit_Price; "Unit Price")
            {
            }
            column(UnitPriceCaption; UnitPriceCaptionLbl)
            {
            }
            column(Mileage; Mileage)
            {
            }
            column(MileageCaption; MileageCaptionLbl)
            {
            }
            column(CountUsages; CountUsages)
            {
            }
            column(CountUsagesCaption; CountUsagesCaptionLbl)
            {
            }
        }
    }
    var
        CompanyNameCaptionLbl: Label 'CompanyName';
        NoCaptionLbl: Label 'No.';
        DescriptionCaptionLbl: Label 'Description';
        UnitPriceCaptionLbl: Label 'Unit Price';
        MileageCaptionLbl: Label 'MileageCaption';
        CountUsagesCaptionLbl: Label 'CountUsagesCaption';
}
