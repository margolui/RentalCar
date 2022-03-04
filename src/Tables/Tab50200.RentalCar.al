tableextension 50200 "Rental Car" extends Item
{
    Caption = 'Rental Car';
    fields
    {
        field(50202; Name; Text[210])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(50203; Model; Text[210])
        {
            Caption = 'Model';
            DataClassification = CustomerContent;
        }
        field(50204; Color; Text[210])
        {
            Caption = 'Color';
            DataClassification = CustomerContent;
        }
        field(50205; Mileage; Code[210])
        {
            Caption = 'Mileage';
            DataClassification = CustomerContent;
        }
        field(50206; Manufacture; Text[210])
        {
            Caption = 'Manufacture';
            DataClassification = CustomerContent;
        }

        field(50207; Discount; Decimal)
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;
        }
        field(50208; "Rental Car"; Boolean)
        {
            Caption = 'Rental Car';
            DataClassification = CustomerContent;
        }
    }
    procedure CountUsages(): Integer
    var
        PostedRentalLine: Record "Posted Rental Line";
    begin
        PostedRentalLine.SetRange("Item No.", "No.");
        exit(PostedRentalLine.Count());
    end;

}
