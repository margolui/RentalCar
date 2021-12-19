report 50202 "Available Cars"
{
    ApplicationArea = All;
    Caption = 'Available Cars';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(Item; Item)
        {
            column(Name; Name)
            {
            }
            column(Model; Model)
            {
            }
            column(Mileage; Mileage)
            {
            }
            column(No; "No.")
            {
            }
            column(Color; Color)
            {
            }
            column(Discount; Discount)
            {
            }
            column(UnitPrice; "Unit Price")
            {
            }
            column(Manufacture; Manufacture)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
