namespace student.db;
@odata.draft.enabled
entity Student {
    key ID         : Integer;
     @Common.valueList: [
        {
            entity: 'Student',  // Value Help entity
            value: 'ID',              // key
            text: 'ID'              // text to display
        }
    ]
    Name           : String(100);
    Age            : Integer;
    DateOfBirth    : Date;
    Address        : String(250);
}