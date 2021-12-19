tableextension 50202 "RC Sales & Receivables Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50200; "Rental Order Nos."; Code[20])
        {
            Caption = 'Rental Order Nos.';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
    }
}
