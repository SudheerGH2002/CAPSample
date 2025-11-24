using {StudentService as service} from './service';

annotate service.Students with @(UI: {
  LineItem                            : [
    {
      $Type: 'UI.DataField',
      Value: ID,
      Label: 'Student ID'
    },
    {
      $Type: 'UI.DataFieldWithValueHelp',
      Value: Name,
      Label: 'Full Name'
    },
    {
      $Type: 'UI.DataField',
      Value: Age,
      Label: 'Age'
    },
    {
      $Type: 'UI.DataField',
      Value: DateOfBirth,
      Label: 'Date of Birth'
    },
    {
      $Type: 'UI.DataField',
      Value: Address,
      Label: 'Address'
    }
  ],
  HeaderInfo                          : {
    $Type         : 'UI.HeaderInfoType',
    TypeName      : 'Student',
    TypeNamePlural: 'Students'
  },
  Facets                              : [{
    $Type : 'UI.ReferenceFacet',
    Label : '{i18n>Student}',
    Target: ![@UI.FieldGroup#HeaderGeneralInformation]
  }],
  FieldGroup #HeaderGeneralInformation: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Value: Name,
        Label: 'Full Name'
      },
      {
        $Type: 'UI.DataField',
        Value: Age,
        Label: 'Age'
      },
      {
        $Type: 'UI.DataField',
        Value: DateOfBirth,
        Label: 'Date of Birth'
      },
      {
        $Type: 'UI.DataField',
        Value: Address,
        Label: 'Address'
      }
    ]
  }
},

);


annotate service.Students with {
  Name @(
    Common: {
      ValueList: {
        Label: 'Name Value Help',
        CollectionPath: 'Students',
        Parameters: [
          { $Type: 'Common.ValueListParameterInOut',
            LocalDataProperty: Name,
            ValueListProperty: 'Name'
          },
          { $Type: 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'ID'
          }
      ]
      }
    },
  );
}
