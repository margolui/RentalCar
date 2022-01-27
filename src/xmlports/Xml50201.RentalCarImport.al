xmlport 50201 "Rental Car Import"
{
    Caption = 'Rental Car';
    FormatEvaluate = Xml;
    Encoding = UTF8;
    Direction = Import;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Item; Item)
            {
                fieldelement(Number; Item."No.")
                {
                }
                fieldelement(Name; Item.Name)
                {
                    trigger OnAfterAssignField()
                    begin
                        Item.Description := Item.Name;
                    end;
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
                fieldelement(Price; Item."Unit Price")
                {
                }
                fieldelement(Discount; Item.Discount)
                {
                }
                trigger OnBeforeInsertRecord()
                var
                    myInt: Integer;
                begin
                    item."Base Unit of Measure" := 'PCS';
                end;
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
