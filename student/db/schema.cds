namespace student.db;
@odata.draft.enabled
entity Student {
    key ID         : Integer;
    Name           : String(100);
    Age            : Integer;
    DateOfBirth    : Date;
    Address        : String(250);
}