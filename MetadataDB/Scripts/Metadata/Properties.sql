﻿EXEC [procfwk].[AddProperty] 
	@PropertyName = 'TenantId',
	@PropertyValue = '1234-1234-1234-1234-1234',
	@Description = 'Used to provide authentication throughout the framework execution.';

EXEC [procfwk].[AddProperty] 
	@PropertyName = 'SubscriptionId',
	@PropertyValue = '1234-1234-1234-1234-1234',
	@Description = 'Used to provide authentication throughout the framework execution.';

EXEC [procfwk].[AddProperty]
	@PropertyName = N'OverideRestart',
	@PropertyValue = N'0',
	@Description = N'Should processing not be restarted from the point of failure or should a new execution will be created regardless. 1 = Start New, 0 = Restart. ';

EXEC [procfwk].[AddProperty]
	@PropertyName = N'PipelineStatusCheckDuration',
	@PropertyValue = N'30',
	@Description = N'Duration applied to the Wait activity within the Infant pipeline Until iterations.';

EXEC [procfwk].[AddProperty]
	@PropertyName = N'UnknownWorkerResultBlocks',
	@PropertyValue = N'1',
	@Description = N'If a worker pipeline returns an unknown status. Eg. Cancelled. Should this block and fail downstream pipeline? 1 = Yes, 0 = No.';

EXEC [procfwk].[AddProperty]
	@PropertyName = N'UseFrameworkEmailAlerting',
	@PropertyValue = N'1',
	@Description = N'Do you want the framework to handle pipeline email alerts via the database metadata? 1 = Yes, 0 = No.';

EXEC [procfwk].[AddProperty]
	@PropertyName = N'EmailAlertBodyTemplate',
	@PropertyValue = 
	N'<hr/><strong>Pipeline Name: </strong>##PipelineName###<br/>
<strong>Status: </strong>##Status###<br/><br/>
<strong>Execution ID: </strong>##ExecId###<br/>
<strong>Run ID: </strong>##RunId###<br/><br/>
<strong>Start Date Time: </strong>##StartDateTime###<br/>
<strong>End Date Time: </strong>##EndDateTime###<br/>
<strong>Duration (Minutes): </strong>##Duration###<br/><br/>
<strong>Called by Data Factory: </strong>##CalledByADF###<br/>
<strong>Executed by Data Factory: </strong>##ExecutedByADF###<br/><hr/>',
	@Description = N'Basic HTML template of execution information used as the eventual body in email alerts sent.';