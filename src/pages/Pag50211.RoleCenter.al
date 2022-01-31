page 50211 "Role Center"
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Control104; "Headline RC Order Processor")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(embedding)
        {
            ToolTip = 'Manage sales processes, view KPIs, and access your favorite items and customers.';
            action(RentalOrders)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Rental Orders';
                RunObject = Page "Rental Orders";
            }
            action(RentalSalesLines)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Rental Sales Lines';
                RunObject = Page "Rental Sales Lines";
            }
            action(RentalOrder)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Rental Order';
                RunObject = Page "Rental Order";
            }
            action("CarAvaliable")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Car Avaliable';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Car Avaliable";
            }
            action("CarList")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Car List';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Car List";
            }
        }
        area(sections)
        {
            group(Action76)
            {
                Caption = 'Car';
                action("Car Avaliable")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Car Avaliable';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Car Avaliable";
                }
                action("Car List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Car List';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Car List";
                }
            }
        }
        area(creation)
        {
            action("Posted Rental Orders")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Posted Rental Orders';
                Promoted = false;
                RunObject = Page "Posted Rental Orders";
                RunPageMode = Create;
            }
            action("Posted Rental Lines")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Posted Rental Lines';
                Image = NewSalesInvoice;
                Promoted = false;
                RunObject = Page "Posted Rental Lines";
                RunPageMode = Create;
            }
            action("Posted Rental Order")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Posted Rental Order';
                Image = Document;
                Promoted = false;
                RunObject = Page "Posted Rental Order";
                RunPageMode = Edit;
            }
        }
    }
}

