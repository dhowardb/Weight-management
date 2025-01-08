sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'weight.management.weightmanagementapp',
            componentId: 'WeightHistoryObjectPage',
            contextPath: '/User/WeightHistory'
        },
        CustomPageDefinitions
    );
});