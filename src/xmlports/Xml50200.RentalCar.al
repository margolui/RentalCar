xmlport 50200 "Rental Car"
{
    Caption = 'Rental Car';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Item; Item)
            {
                fieldelement(Name; Item.Name)
                {
                }
                fieldelement(Model; Item.Model)
                {
                }
                fieldelement(Color; Item.Color)
                {
                }
                fieldelement(Mileage; Item.Mileage)
                {
                }
                fieldelement(Manufacture; Item.Manufacture)
                {
                }
                fieldelement(Discount; Item.Discount)
                {
                }
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
