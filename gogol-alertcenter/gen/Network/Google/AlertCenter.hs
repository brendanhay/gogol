{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AlertCenter
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages alerts on issues affecting your domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ G Suite Alert Center API Reference>
module Network.Google.AlertCenter
    (
    -- * Service Configuration
      alertCenterService

    -- * OAuth Scopes
    , appsAlertsScope

    -- * API Declaration
    , AlertCenterAPI

    -- * Resources

    -- ** alertcenter.alerts.delete
    , module Network.Google.Resource.AlertCenter.Alerts.Delete

    -- ** alertcenter.alerts.feedback.create
    , module Network.Google.Resource.AlertCenter.Alerts.Feedback.Create

    -- ** alertcenter.alerts.feedback.list
    , module Network.Google.Resource.AlertCenter.Alerts.Feedback.List

    -- ** alertcenter.alerts.get
    , module Network.Google.Resource.AlertCenter.Alerts.Get

    -- ** alertcenter.alerts.list
    , module Network.Google.Resource.AlertCenter.Alerts.List

    -- ** alertcenter.alerts.undelete
    , module Network.Google.Resource.AlertCenter.Alerts.Undelete

    -- ** alertcenter.getSettings
    , module Network.Google.Resource.AlertCenter.GetSettings

    -- ** alertcenter.updateSettings
    , module Network.Google.Resource.AlertCenter.UpdateSettings

    -- * Types

    -- ** ListAlertsResponse
    , ListAlertsResponse
    , listAlertsResponse
    , larNextPageToken
    , larAlerts

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

    -- ** DeviceCompromised
    , DeviceCompromised
    , deviceCompromised
    , dcEmail
    , dcEvents

    -- ** StateSponsoredAttack
    , StateSponsoredAttack
    , stateSponsoredAttack
    , ssaEmail

    -- ** BadWhiteList
    , BadWhiteList
    , badWhiteList
    , bwlSourceIP
    , bwlDomainId
    , bwlMessages
    , bwlMaliciousEntity

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

    -- ** AccountWarning
    , AccountWarning
    , accountWarning
    , awEmail
    , awLoginDetails

    -- ** MailPhishing
    , MailPhishing
    , mailPhishing
    , mpIsInternal
    , mpDomainId
    , mpMessages
    , mpMaliciousEntity

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
    , aStartTime
    , aData
    , aAlertId
    , aSecurityInvestigationToolLink
    , aCustomerId
    , aEndTime
    , aSource
    , aDeleted
    , aType
    , aCreateTime

    -- ** Attachment
    , Attachment
    , attachment
    , aCSV

    -- ** GoogleOperations
    , GoogleOperations
    , googleOperations
    , goAttachmentData
    , goAffectedUserEmails
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

    -- ** DomainWideTakeoutInitiated
    , DomainWideTakeoutInitiated
    , domainWideTakeoutInitiated
    , dwtiEmail
    , dwtiTakeoutRequestId

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

    -- ** CloudPubsubTopic
    , CloudPubsubTopic
    , cloudPubsubTopic
    , cptTopicName
    , cptPayloadFormat

    -- ** ListAlertFeedbackResponse
    , ListAlertFeedbackResponse
    , listAlertFeedbackResponse
    , lafrFeedback

    -- ** LoginDetails
    , LoginDetails
    , loginDetails
    , ldIPAddress
    , ldLoginTime

    -- ** MaliciousEntity
    , MaliciousEntity
    , maliciousEntity
    , meFromHeader
    ) where

import           Network.Google.AlertCenter.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AlertCenter.Alerts.Delete
import           Network.Google.Resource.AlertCenter.Alerts.Feedback.Create
import           Network.Google.Resource.AlertCenter.Alerts.Feedback.List
import           Network.Google.Resource.AlertCenter.Alerts.Get
import           Network.Google.Resource.AlertCenter.Alerts.List
import           Network.Google.Resource.AlertCenter.Alerts.Undelete
import           Network.Google.Resource.AlertCenter.GetSettings
import           Network.Google.Resource.AlertCenter.UpdateSettings

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the G Suite Alert Center API service.
type AlertCenterAPI =
     UpdateSettingsResource :<|> GetSettingsResource :<|>
       AlertsFeedbackListResource
       :<|> AlertsFeedbackCreateResource
       :<|> AlertsListResource
       :<|> AlertsUndeleteResource
       :<|> AlertsGetResource
       :<|> AlertsDeleteResource
