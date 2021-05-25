{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AlertCenter.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AlertCenter.Types
    (
    -- * Service Configuration
      alertCenterService

    -- * OAuth Scopes
    , appsAlertsScope

    -- * UserDefinedDetectorInfo
    , UserDefinedDetectorInfo
    , userDefinedDetectorInfo
    , uddiResourceName
    , uddiDisplayName

    -- * ListAlertsResponse
    , ListAlertsResponse
    , listAlertsResponse
    , larNextPageToken
    , larAlerts

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * RuleViolationInfoDataSource
    , RuleViolationInfoDataSource (..)

    -- * CSVRow
    , CSVRow
    , csvRow
    , crEntries

    -- * AlertFeedback
    , AlertFeedback
    , alertFeedback
    , afFeedbackId
    , afEmail
    , afAlertId
    , afCustomerId
    , afType
    , afCreateTime

    -- * DlpRuleViolation
    , DlpRuleViolation
    , dlpRuleViolation
    , drvRuleViolationInfo

    -- * AppsOutage
    , AppsOutage
    , appsOutage
    , aoStatus
    , aoDashboardURI
    , aoProducts
    , aoResolutionTime
    , aoNextUpdateTime

    -- * DeviceCompromised
    , DeviceCompromised
    , deviceCompromised
    , dcEmail
    , dcEvents

    -- * StateSponsoredAttack
    , StateSponsoredAttack
    , stateSponsoredAttack
    , ssaEmail

    -- * BatchUndeleteAlertsRequest
    , BatchUndeleteAlertsRequest
    , batchUndeleteAlertsRequest
    , buarAlertId
    , buarCustomerId

    -- * BadWhiteList
    , BadWhiteList
    , badWhiteList
    , bwlSourceIP
    , bwlDomainId
    , bwlMessages
    , bwlMaliciousEntity

    -- * PredefinedDetectorInfo
    , PredefinedDetectorInfo
    , predefinedDetectorInfo
    , pdiDetectorName

    -- * SuspiciousActivitySecurityDetail
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

    -- * Empty
    , Empty
    , empty

    -- * UndeleteAlertRequest
    , UndeleteAlertRequest
    , undeleteAlertRequest
    , uarCustomerId

    -- * Settings
    , Settings
    , settings
    , sNotifications

    -- * Notification
    , Notification
    , notification
    , nCloudPubsubTopic

    -- * ReportingRule
    , ReportingRule
    , reportingRule
    , rrAlertDetails
    , rrName
    , rrQuery

    -- * MailPhishingSystemActionType
    , MailPhishingSystemActionType (..)

    -- * BatchUndeleteAlertsResponse
    , BatchUndeleteAlertsResponse
    , batchUndeleteAlertsResponse
    , buarSuccessAlertIds
    , buarFailedAlertStatus

    -- * RuleViolationInfoTriggeredActionTypesItem
    , RuleViolationInfoTriggeredActionTypesItem (..)

    -- * ActivityRule
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

    -- * AccountWarning
    , AccountWarning
    , accountWarning
    , awEmail
    , awLoginDetails

    -- * MailPhishing
    , MailPhishing
    , mailPhishing
    , mpSystemActionType
    , mpIsInternal
    , mpDomainId
    , mpMessages
    , mpMaliciousEntity

    -- * AlertMetadata
    , AlertMetadata
    , alertMetadata
    , amStatus
    , amEtag
    , amSeverity
    , amAlertId
    , amAssignee
    , amCustomerId
    , amUpdateTime

    -- * GmailMessageInfo
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

    -- * AppsOutageStatus
    , AppsOutageStatus (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * AlertData
    , AlertData
    , alertData
    , adAddtional

    -- * CloudPubsubTopicPayloadFormat
    , CloudPubsubTopicPayloadFormat (..)

    -- * PhishingSpike
    , PhishingSpike
    , phishingSpike
    , psIsInternal
    , psDomainId
    , psMessages
    , psMaliciousEntity

    -- * CSV
    , CSV
    , csv
    , cDataRows
    , cHeaders

    -- * Alert
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

    -- * Attachment
    , Attachment
    , attachment
    , aCSV

    -- * BatchDeleteAlertsRequest
    , BatchDeleteAlertsRequest
    , batchDeleteAlertsRequest
    , bdarAlertId
    , bdarCustomerId

    -- * User
    , User
    , user
    , uEmailAddress
    , uDisplayName

    -- * UserChanges
    , UserChanges
    , userChanges
    , ucName

    -- * ResourceInfo
    , ResourceInfo
    , resourceInfo
    , riDocumentId
    , riResourceTitle

    -- * RequestInfo
    , RequestInfo
    , requestInfo
    , riNumberOfRequests
    , riAppDeveloperEmail
    , riAppKey

    -- * GoogleOperations
    , GoogleOperations
    , googleOperations
    , goAttachmentData
    , goAffectedUserEmails
    , goHeader
    , goTitle
    , goDescription

    -- * AlertFeedbackType
    , AlertFeedbackType (..)

    -- * SuspiciousActivity
    , SuspiciousActivity
    , suspiciousActivity
    , saEmail
    , saEvents

    -- * Xgafv
    , Xgafv (..)

    -- * BatchDeleteAlertsResponseFailedAlertStatus
    , BatchDeleteAlertsResponseFailedAlertStatus
    , batchDeleteAlertsResponseFailedAlertStatus
    , bdarfasAddtional

    -- * AppMakerSQLSetupNotification
    , AppMakerSQLSetupNotification
    , appMakerSQLSetupNotification
    , amsqlsnRequestInfo

    -- * DomainWideTakeoutInitiated
    , DomainWideTakeoutInitiated
    , domainWideTakeoutInitiated
    , dwtiEmail
    , dwtiTakeoutRequestId

    -- * MatchInfo
    , MatchInfo
    , matchInfo
    , miPredefinedDetector
    , miUserDefinedDetector

    -- * DomainId
    , DomainId
    , domainId
    , diCustomerPrimaryDomain

    -- * DeviceCompromisedSecurityDetail
    , DeviceCompromisedSecurityDetail
    , deviceCompromisedSecurityDetail
    , dcsdResourceId
    , dcsdDeviceCompromisedState
    , dcsdIosVendorId
    , dcsdDeviceModel
    , dcsdDeviceId
    , dcsdDeviceType
    , dcsdSerialNumber

    -- * RuleInfo
    , RuleInfo
    , ruleInfo
    , riResourceName
    , riDisplayName

    -- * ActionInfo
    , ActionInfo
    , actionInfo

    -- * BatchDeleteAlertsResponse
    , BatchDeleteAlertsResponse
    , batchDeleteAlertsResponse
    , bdarSuccessAlertIds
    , bdarFailedAlertStatus

    -- * CloudPubsubTopic
    , CloudPubsubTopic
    , cloudPubsubTopic
    , cptTopicName
    , cptPayloadFormat

    -- * ListAlertFeedbackResponse
    , ListAlertFeedbackResponse
    , listAlertFeedbackResponse
    , lafrFeedback

    -- * AppSettingsChanged
    , AppSettingsChanged
    , appSettingsChanged
    , ascAlertDetails
    , ascName

    -- * RuleViolationInfoSuppressedActionTypesItem
    , RuleViolationInfoSuppressedActionTypesItem (..)

    -- * RuleViolationInfo
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

    -- * RuleViolationInfoTrigger
    , RuleViolationInfoTrigger (..)

    -- * LoginDetails
    , LoginDetails
    , loginDetails
    , ldIPAddress
    , ldLoginTime

    -- * MaliciousEntity
    , MaliciousEntity
    , maliciousEntity
    , meFromHeader
    , meDisplayName
    , meEntity

    -- * BatchUndeleteAlertsResponseFailedAlertStatus
    , BatchUndeleteAlertsResponseFailedAlertStatus
    , batchUndeleteAlertsResponseFailedAlertStatus
    , buarfasAddtional
    ) where

import Network.Google.AlertCenter.Types.Product
import Network.Google.AlertCenter.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Google Workspace Alert Center API. This contains the host and root path used as a starting point for constructing service requests.
alertCenterService :: ServiceConfig
alertCenterService
  = defaultService (ServiceId "alertcenter:v1beta1")
      "alertcenter.googleapis.com"

-- | See and delete your domain\'s G Suite alerts, and send alert feedback
appsAlertsScope :: Proxy '["https://www.googleapis.com/auth/apps.alerts"]
appsAlertsScope = Proxy
