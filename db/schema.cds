using {
    managed,
    cuid
} from '@sap/cds/common';

namespace weight.management;

@assert.unique: {name}
entity Users : cuid, managed {
    name          : String @mandatory;
    age           : Integer;
    WeightHistory : Composition of many WeightHistory
                        on WeightHistory.userID = $self;
}

@assert.unique: {DateOfInput}
entity WeightHistory : cuid, managed {
    weight      : Decimal(5, 2)          @mandatory;
    unit        : String(3) default 'kg' @mandatory;
    DateOfInput : Date                   @mandatory;
    userID      : Association to one Users;
    remarks     : String;
}
