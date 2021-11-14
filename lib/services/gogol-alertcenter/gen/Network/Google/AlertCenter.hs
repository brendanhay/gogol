{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AlertCenter
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages alerts on issues affecting your domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference>
module Network.Google.AlertCenter
    (
    -- * Service Configuration
      alertCenterService

    -- * OAuth Scopes
    , appsAlertsScope

    -- * API Declaration
    , AlertCenterAPI

    -- * Resources

    -- ** alertcenter.alerts.batchDelete
    , module Network.Google.Resource.AlertCenter.Alerts.BatchDelete

    -- ** alertcenter.alerts.batchUndelete
    , module Network.Google.Resource.AlertCenter.Alerts.BatchUndelete

    -- ** alertcenter.alerts.delete
    , module Network.Google.Resource.AlertCenter.Alerts.Delete

    -- ** alertcenter.alerts.feedback.create
    , module Network.Google.Resource.AlertCenter.Alerts.Feedback.Create

    -- ** alertcenter.alerts.feedback.list
    , module Network.Google.Resource.AlertCenter.Alerts.Feedback.List

    -- ** alertcenter.alerts.get
    , module Network.Google.Resource.AlertCenter.Alerts.Get

    -- ** alertcenter.alerts.getMetadata
    , module Network.Google.Resource.AlertCenter.Alerts.GetMetadata

    -- ** alertcenter.alerts.list
    , module Network.Google.Resource.AlertCenter.Alerts.List

    -- ** alertcenter.alerts.undelete
    , module Network.Google.Resource.AlertCenter.Alerts.Undelete

    -- ** alertcenter.getSettings
    , module Network.Google.Resource.AlertCenter.GetSettings

    -- ** alertcenter.updateSettings
    , module Network.Google.Resource.AlertCenter.UpdateSettings

    -- * Types

    -- ** UserDefinedDetectorInfo
    , UserDefinedDetectorInfo
    , userDefinedDetectorInfo
    , uddiResourceName
    , uddiDisplayName

    -- ** ListAlertsResponse
    , ListAlertsResponse
    , listAlertsResponse
    , larNextPageToken
    , larAlerts

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** RuleViolationInfoDataSource
    , RuleViolationInfoDataSource (..)

    -- ** CSVRow
    , CSVRow
    , csvRow
    , crEntries

    -- ** AlertFeedback
    , AlertFeedback
    , alertFeedback
    , afFeedbackId
    , afEmail
    , afAlertId
    , afCustomerId
    , afType
    , afCreateTime

    -- ** DlpRuleViolation
    , DlpRuleViolation
    , dlpRuleViolation
    , drvRuleViolationInfo

    -- ** AppsOutage
    , AppsOutage
    , appsOutage
    , aoStatus
    , aoDashboardURI
    , aoProducts
    , aoResolutionTime
    , aoNextUpdateTime

    -- ** DeviceCompromised
    , DeviceCompromised
    , deviceCompromised
    , dcEmail
    , dcEvents

    -- ** StateSponsoredAttack
    , StateSponsoredAttack
    , stateSponsoredAttack
    , ssaEmail

    -- ** BatchUndeleteAlertsRequest
    , BatchUndeleteAlertsRequest
    , batchUndeleteAlertsRequest
    , buarAlertId
    , buarCustomerId

    -- ** BadWhiteList
    , BadWhiteList
    , badWhiteList
    , bwlSourceIP
    , bwlDomainId
    , bwlMessages
    , bwlMaliciousEntity

    -- ** PredefinedDetectorInfo
    , PredefinedDetectorInfo
    , predefinedDetectorInfo
    , pdiDetectorName

    -- ** SuspiciousActivitySecurityDetail
    , SuspiciousActivitySecurityDetail
    , suspiciousActivitySecurityDetail
    , sasdDeviceProperty
    , sasdResourceId
    , sasdIosVendorId
    , sasdOldValue
    , sasdNewValue
    , sasdDeviceModel
    , sasdDeviceId
    , sasdDeviceType
    , sasdSerialNumber

    -- ** Empty
    , Empty
    , empty

    -- ** UndeleteAlertRequest
    , UndeleteAlertRequest
    , undeleteAlertRequest
    , uarCustomerId

    -- ** Settings
    , Settings
    , settings
    , sNotifications

    -- ** Notification
    , Notification
    , notification
    , nCloudPubsubTopic

    -- ** ReportingRule
    , ReportingRule
    , reportingRule
    , rrAlertDetails
    , rrName
    , rrQuery

    -- ** MailPhishingSystemActionType
    , MailPhishingSystemActionType (..)

    -- ** BatchUndeleteAlertsResponse
    , BatchUndeleteAlertsResponse
    , batchUndeleteAlertsResponse
    , buarSuccessAlertIds
    , buarFailedAlertStatus

    -- ** RuleViolationInfoTriggeredActionTypesItem
    , RuleViolationInfoTriggeredActionTypesItem (..)

    -- ** ActivityRule
    , ActivityRule
    , activityRule
    , arSupersededAlerts
    , arActionNames
    , arSupersedingAlert
    , arTriggerSource
    , arWindowSize
    , arUpdateTime
    , arName
    , arThreshold
    , arQuery
    , arDisplayName
    , arDescription
    , arCreateTime

    -- ** AccountWarning
    , AccountWarning
    , accountWarning
    , awEmail
    , awLoginDetails

    -- ** MailPhishing
    , MailPhishing
    , mailPhishing
    , mpSystemActionType
    , mpIsInternal
    , mpDomainId
    , mpMessages
    , mpMaliciousEntity

    -- ** AlertMetadata
    , AlertMetadata
    , alertMetadata
    , amStatus
    , amEtag
    , amSeverity
    , amAlertId
    , amAssignee
    , amCustomerId
    , amUpdateTime

    -- ** GmailMessageInfo
    , GmailMessageInfo
    , gmailMessageInfo
    , gmiMD5HashSubject
    , gmiSubjectText
    , gmiDate
    , gmiMD5HashMessageBody
    , gmiAttachmentsSha256Hash
    , gmiRecipient
    , gmiMessageBodySnippet
    , gmiMessageId

    -- ** AppsOutageStatus
    , AppsOutageStatus (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** AlertData
    , AlertData
    , alertData
    , adAddtional

    -- ** CloudPubsubTopicPayloadFormat
    , CloudPubsubTopicPayloadFormat (..)

    -- ** PhishingSpike
    , PhishingSpike
    , phishingSpike
    , psIsInternal
    , psDomainId
    , psMessages
    , psMaliciousEntity

    -- ** CSV
    , CSV
    , csv
    , cDataRows
    , cHeaders

    -- ** Alert
    , Alert
    , alert
    , aEtag
    , aStartTime
    , aData
    , aAlertId
    , aSecurityInvestigationToolLink
    , aCustomerId
    , aUpdateTime
    , aEndTime
    , aMetadata
    , aSource
    , aDeleted
    , aType
    , aCreateTime

    -- ** Attachment
    , Attachment
    , attachment
    , aCSV

    -- ** BatchDeleteAlertsRequest
    , BatchDeleteAlertsRequest
    , batchDeleteAlertsRequest
    , bdarAlertId
    , bdarCustomerId

    -- ** User
    , User
    , user
    , uEmailAddress
    , uDisplayName

    -- ** UserChanges
    , UserChanges
    , userChanges
    , ucName

    -- ** ResourceInfo
    , ResourceInfo
    , resourceInfo
    , riDocumentId
    , riResourceTitle

    -- ** RequestInfo
    , RequestInfo
    , requestInfo
    , riNumberOfRequests
    , riAppDeveloperEmail
    , riAppKey

    -- ** GoogleOperations
    , GoogleOperations
    , googleOperations
    , goAttachmentData
    , goAffectedUserEmails
    , goHeader
    , goTitle
    , goDescription

    -- ** AlertFeedbackType
    , AlertFeedbackType (..)

    -- ** SuspiciousActivity
    , SuspiciousActivity
    , suspiciousActivity
    , saEmail
    , saEvents

    -- ** Xgafv
    , Xgafv (..)

    -- ** BatchDeleteAlertsResponseFailedAlertStatus
    , BatchDeleteAlertsResponseFailedAlertStatus
    , batchDeleteAlertsResponseFailedAlertStatus
    , bdarfasAddtional

    -- ** AppMakerSQLSetupNotification
    , AppMakerSQLSetupNotification
    , appMakerSQLSetupNotification
    , amsqlsnRequestInfo

    -- ** DomainWideTakeoutInitiated
    , DomainWideTakeoutInitiated
    , domainWideTakeoutInitiated
    , dwtiEmail
    , dwtiTakeoutRequestId

    -- ** MatchInfo
    , MatchInfo
    , matchInfo
    , miPredefinedDetector
    , miUserDefinedDetector

    -- ** DomainId
    , DomainId
    , domainId
    , diCustomerPrimaryDomain

    -- ** DeviceCompromisedSecurityDetail
    , DeviceCompromisedSecurityDetail
    , deviceCompromisedSecurityDetail
    , dcsdResourceId
    , dcsdDeviceCompromisedState
    , dcsdIosVendorId
    , dcsdDeviceModel
    , dcsdDeviceId
    , dcsdDeviceType
    , dcsdSerialNumber

    -- ** RuleInfo
    , RuleInfo
    , ruleInfo
    , riResourceName
    , riDisplayName

    -- ** ActionInfo
    , ActionInfo
    , actionInfo

    -- ** BatchDeleteAlertsResponse
    , BatchDeleteAlertsResponse
    , batchDeleteAlertsResponse
    , bdarSuccessAlertIds
    , bdarFailedAlertStatus

    -- ** CloudPubsubTopic
    , CloudPubsubTopic
    , cloudPubsubTopic
    , cptTopicName
    , cptPayloadFormat

    -- ** ListAlertFeedbackResponse
    , ListAlertFeedbackResponse
    , listAlertFeedbackResponse
    , lafrFeedback

    -- ** AppSettingsChanged
    , AppSettingsChanged
    , appSettingsChanged
    , ascAlertDetails
    , ascName

    -- ** RuleViolationInfoSuppressedActionTypesItem
    , RuleViolationInfoSuppressedActionTypesItem (..)

    -- ** RuleViolationInfo
    , RuleViolationInfo
    , ruleViolationInfo
    , rviTriggeredActionTypes
    , rviSuppressedActionTypes
    , rviTriggeringUserEmail
    , rviResourceInfo
    , rviMatchInfo
    , rviDataSource
    , rviTrigger
    , rviRecipients
    , rviRuleInfo
    , rviTriggeredActionInfo

    -- ** RuleViolationInfoTrigger
    , RuleViolationInfoTrigger (..)

    -- ** LoginDetails
    , LoginDetails
    , loginDetails
    , ldIPAddress
    , ldLoginTime

    -- ** MaliciousEntity
    , MaliciousEntity
    , maliciousEntity
    , meFromHeader
    , meDisplayName
    , meEntity

    -- ** BatchUndeleteAlertsResponseFailedAlertStatus
    , BatchUndeleteAlertsResponseFailedAlertStatus
    , batchUndeleteAlertsResponseFailedAlertStatus
    , buarfasAddtional
    ) where

import Network.Google.Prelude
import Network.Google.AlertCenter.Types
import Network.Google.Resource.AlertCenter.Alerts.BatchDelete
import Network.Google.Resource.AlertCenter.Alerts.BatchUndelete
import Network.Google.Resource.AlertCenter.Alerts.Delete
import Network.Google.Resource.AlertCenter.Alerts.Feedback.Create
import Network.Google.Resource.AlertCenter.Alerts.Feedback.List
import Network.Google.Resource.AlertCenter.Alerts.Get
import Network.Google.Resource.AlertCenter.Alerts.GetMetadata
import Network.Google.Resource.AlertCenter.Alerts.List
import Network.Google.Resource.AlertCenter.Alerts.Undelete
import Network.Google.Resource.AlertCenter.GetSettings
import Network.Google.Resource.AlertCenter.UpdateSettings

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Workspace Alert Center API service.
type AlertCenterAPI =
     UpdateSettingsResource :<|> GetSettingsResource :<|>
       AlertsFeedbackListResource
       :<|> AlertsFeedbackCreateResource
       :<|> AlertsListResource
       :<|> AlertsUndeleteResource
       :<|> AlertsGetMetadataResource
       :<|> AlertsGetResource
       :<|> AlertsBatchDeleteResource
       :<|> AlertsBatchUndeleteResource
       :<|> AlertsDeleteResource
