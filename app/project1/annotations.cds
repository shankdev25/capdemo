using CatalogService as service from '../../srv/cat-service';

annotate service.teams with @(
    UI.LineItem  : [
        {
            $Type                : 'UI.DataField',
            Label                : 'ID',
            Value                : ID,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'name',
            Value                : name,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'leader',
            Value                : leader,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
    ],
    UI.HeaderInfo: {
        $Type      : 'UI.HeaderInfoType',
        TypeName   : 'Teams',
        Title      : {
            Value: name,
            Label: 'Name'
        },
        Description: {
            Value: leader,
            Label: 'Leader'
        }
    }
);

annotate service.teams with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'leader',
                Value: leader,
            },
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
        ],
    },
    UI.Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'Vertical Teams',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Team Members',
            Target: 'member/@UI.LineItem'
        }
    ]
);

annotate service.members with @(UI: {
    LineItem             : [
        {
            $Type                : 'UI.DataField',
            Label                : 'ID',
            Value                : ID,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Name',
            Value                : name,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Age',
            Value                : age,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Age',
            Value                : age,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Gender',
            Value                : gender,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Experience',
            Value                : experience,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Skills',
            Value                : skils,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Contacts',
            Value                : contact,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        }

    ],
    HeaderInfo           : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Team Members',
        TypeNamePlural: 'Team Members',
        Title         : {Value: name},
        Description   : {Value: skils}
    },
    Facets               : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'ItemsGroups',
            Label : 'Team Member',
            Target: '@UI.FieldGroup#ItemGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'Address',
            Label : 'Address',
            Target: 'address/@UI.LineItem'
        }
    ],
    FieldGroup #ItemGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Age',
                Value: age,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Age',
                Value: age,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Gender',
                Value: gender,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Experience',
                Value: experience,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Skills',
                Value: skils,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Contacts',
                Value: contact,
            }

        ]

    },

});


annotate service.address with @(UI: {
    HeaderInfo              : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Address',
        TypeNamePlural: 'Address',
        Title         : {Value: ID},
        Description   : {Value: createdBy}
    },
    Facets                  : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'Address',
        Label : 'Address',
        Target: '@UI.FieldGroup#AddressGroup',
    }],
    FieldGroup #AddressGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Address 1',
                Value: address1,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Address 2',
                Value: address2,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Postal Code',
                Value: postalcode,
            },
            {
                $Type: 'UI.DataField',
                Label: 'City',
                Value: City,
            },
            {
                $Type: 'UI.DataField',
                Label: 'State',
                Value: State,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Country',
                Value: Country,
            }
        ],

    },
    LineItem                : [
        {
            $Type                : 'UI.DataField',
            Label                : 'ID',
            Value                : ID,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Address 1',
            Value                : address1,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Address 2',
            Value                : address2,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Postal Code',
            Value                : postalcode,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'City',
            Value                : City,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'State',
            Value                : State,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        },
        {
            $Type                : 'UI.DataField',
            Label                : 'Country',
            Value                : Country,
            ![@HTML5.CssDefaults]: {width: '5rem'}
        }

    ],

});
