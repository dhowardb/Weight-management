sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'weight/management/weightmanagementapp/test/integration/FirstJourney',
		'weight/management/weightmanagementapp/test/integration/pages/UserList',
		'weight/management/weightmanagementapp/test/integration/pages/UserObjectPage',
		'weight/management/weightmanagementapp/test/integration/pages/WeightHistoryObjectPage'
    ],
    function(JourneyRunner, opaJourney, UserList, UserObjectPage, WeightHistoryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('weight/management/weightmanagementapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUserList: UserList,
					onTheUserObjectPage: UserObjectPage,
					onTheWeightHistoryObjectPage: WeightHistoryObjectPage
                }
            },
            opaJourney.run
        );
    }
);