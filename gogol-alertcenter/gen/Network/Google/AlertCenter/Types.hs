{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * ListAlertsResponse
    , ListAlertsResponse
    , listAlertsResponse
    , larNextPageToken
    , larAlerts

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

    -- * DeviceCompromised
    , DeviceCompromised
    , deviceCompromised
    , dcEmail
    , dcEvents

    -- * StateSponsoredAttack
    , StateSponsoredAttack
    , stateSponsoredAttack
    , ssaEmail

    -- * BadWhiteList
    , BadWhiteList
    , badWhiteList
    , bwlSourceIP
    , bwlDomainId
    , bwlMessages
    , bwlMaliciousEntity

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
    , mpIsInternal
    , mpDomainId
    , mpMessages
    , mpMaliciousEntity

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
    , aStartTime
    , aData
    , aAlertId
    , aSecurityInvestigationToolLink
    , aCustomerId
    , aUpdateTime
    , aEndTime
    , aSource
    , aDeleted
    , aType
    , aCreateTime

    -- * Attachment
    , Attachment
    , attachment
    , aCSV

    -- * GoogleOperations
    , GoogleOperations
    , googleOperations
    , goAttachmentData
    , goAffectedUserEmails
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

    -- * DomainWideTakeoutInitiated
    , DomainWideTakeoutInitiated
    , domainWideTakeoutInitiated
    , dwtiEmail
    , dwtiTakeoutRequestId

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

    -- * CloudPubsubTopic
    , CloudPubsubTopic
    , cloudPubsubTopic
    , cptTopicName
    , cptPayloadFormat

    -- * ListAlertFeedbackResponse
    , ListAlertFeedbackResponse
    , listAlertFeedbackResponse
    , lafrFeedback

    -- * LoginDetails
    , LoginDetails
    , loginDetails
    , ldIPAddress
    , ldLoginTime

    -- * MaliciousEntity
    , MaliciousEntity
    , maliciousEntity
    , meFromHeader
    ) where

import           Network.Google.AlertCenter.Types.Product
import           Network.Google.AlertCenter.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the G Suite Alert Center API. This contains the host and root path used as a starting point for constructing service requests.
alertCenterService :: ServiceConfig
alertCenterService
  = defaultService (ServiceId "alertcenter:v1beta1")
      "alertcenter.googleapis.com"

-- | See and delete your domain\'s G Suite alerts, and send alert feedback
appsAlertsScope :: Proxy '["https://www.googleapis.com/auth/apps.alerts"]
appsAlertsScope = Proxy
