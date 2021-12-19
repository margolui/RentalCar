report 50201 "Car Profit "
{
    ApplicationArea = All;
    Caption = 'Car Profit ';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(Item; Item)
        {
            column(Color; Color)
            {
            }
            column(Id; Id)
            {
            }
            column(Model; Model)
            {
            }
            column(No; "No.")
            {
            }
            column(Mileage; Mileage)
            {
            }
            column(Discount; Discount)
            {
            }
            column(Name; Name)
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
