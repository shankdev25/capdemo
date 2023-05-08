sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/shashank/fioori/project1/test/integration/FirstJourney',
		'com/shashank/fioori/project1/test/integration/pages/teamsList',
		'com/shashank/fioori/project1/test/integration/pages/teamsObjectPage'
    ],
    function(JourneyRunner, opaJourney, teamsList, teamsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/shashank/fioori/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheteamsList: teamsList,
					onTheteamsObjectPage: teamsObjectPage
                }
            },
            opaJourney.run
        );
    }
);