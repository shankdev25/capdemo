sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.shashank.fioori.project1',
            componentId: 'teamsList',
            entitySet: 'teams'
        },
        CustomPageDefinitions
    );
});