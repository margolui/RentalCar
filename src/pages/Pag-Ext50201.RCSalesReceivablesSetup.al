pageextension 50201 "RC Sales & Receivables Setup" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Rental Order Nos."; Rec."Rental Order Nos.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
}