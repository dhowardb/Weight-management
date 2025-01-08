using weightManagementService as service from '../../srv/weight-management-service';
annotate service.User with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Age',
                Value : age,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'User Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Weight History',
            ID : 'WeightHistory',
            Target : 'WeightHistory/@UI.SelectionPresentationVariant#WeightHistory',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Age',
            Value : age,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : 'Weight Management App',
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);

annotate service.WeightHistory with @(
    UI.LineItem #WeightHistory : [
        {
            $Type : 'UI.DataField',
            Value : weight,
            Label : 'Weight',
        },
        {
            $Type : 'UI.DataField',
            Value : unit,
            Label : 'Unit',
        },
        {
            $Type : 'UI.DataField',
            Value : DateOfInput,
            Label : 'Date of Input',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
    ],
    UI.SelectionPresentationVariant #WeightHistory : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#WeightHistory',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : DateOfInput,
                    Descending : true,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    },
);

