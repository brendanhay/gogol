{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.AlertCenter
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages alerts on issues affecting your domain.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference>
module Network.Google.AlertCenter
  ( -- * Configuration
    alertCenterService,

    -- * OAuth Scopes
    appsAlertsScope,

    -- * Resources

    -- ** alertcenter.alerts.batchDelete
    AlertCenterAlertsBatchDeleteResource,
    newAlertCenterAlertsBatchDelete,
    AlertCenterAlertsBatchDelete,

    -- ** alertcenter.alerts.batchUndelete
    AlertCenterAlertsBatchUndeleteResource,
    newAlertCenterAlertsBatchUndelete,
    AlertCenterAlertsBatchUndelete,

    -- ** alertcenter.alerts.delete
    AlertCenterAlertsDeleteResource,
    newAlertCenterAlertsDelete,
    AlertCenterAlertsDelete,

    -- ** alertcenter.alerts.feedback.create
    AlertCenterAlertsFeedbackCreateResource,
    newAlertCenterAlertsFeedbackCreate,
    AlertCenterAlertsFeedbackCreate,

    -- ** alertcenter.alerts.feedback.list
    AlertCenterAlertsFeedbackListResource,
    newAlertCenterAlertsFeedbackList,
    AlertCenterAlertsFeedbackList,

    -- ** alertcenter.alerts.get
    AlertCenterAlertsGetResource,
    newAlertCenterAlertsGet,
    AlertCenterAlertsGet,

    -- ** alertcenter.alerts.getMetadata
    AlertCenterAlertsGetMetadataResource,
    newAlertCenterAlertsGetMetadata,
    AlertCenterAlertsGetMetadata,

    -- ** alertcenter.alerts.list
    AlertCenterAlertsListResource,
    newAlertCenterAlertsList,
    AlertCenterAlertsList,

    -- ** alertcenter.alerts.undelete
    AlertCenterAlertsUndeleteResource,
    newAlertCenterAlertsUndelete,
    AlertCenterAlertsUndelete,

    -- ** alertcenter.getSettings
    AlertCenterGetSettingsResource,
    newAlertCenterGetSettings,
    AlertCenterGetSettings,

    -- ** alertcenter.updateSettings
    AlertCenterUpdateSettingsResource,
    newAlertCenterUpdateSettings,
    AlertCenterUpdateSettings,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AccountSuspensionDetails
    AccountSuspensionDetails (..),
    newAccountSuspensionDetails,

    -- ** AccountSuspensionDetails_AbuseReason
    AccountSuspensionDetails_AbuseReason (..),

    -- ** AccountSuspensionWarning
    AccountSuspensionWarning (..),
    newAccountSuspensionWarning,

    -- ** AccountSuspensionWarning_State
    AccountSuspensionWarning_State (..),

    -- ** AccountWarning
    AccountWarning (..),
    newAccountWarning,

    -- ** ActionInfo
    ActionInfo (..),
    newActionInfo,

    -- ** ActivityRule
    ActivityRule (..),
    newActivityRule,

    -- ** Alert
    Alert (..),
    newAlert,

    -- ** Alert_Data
    Alert_Data (..),
    newAlert_Data,

    -- ** AlertFeedback
    AlertFeedback (..),
    newAlertFeedback,

    -- ** AlertFeedback_Type
    AlertFeedback_Type (..),

    -- ** AlertMetadata
    AlertMetadata (..),
    newAlertMetadata,

    -- ** AppMakerSqlSetupNotification
    AppMakerSqlSetupNotification (..),
    newAppMakerSqlSetupNotification,

    -- ** AppSettingsChanged
    AppSettingsChanged (..),
    newAppSettingsChanged,

    -- ** AppsOutage
    AppsOutage (..),
    newAppsOutage,

    -- ** AppsOutage_Status
    AppsOutage_Status (..),

    -- ** Attachment
    Attachment (..),
    newAttachment,

    -- ** BadWhitelist
    BadWhitelist (..),
    newBadWhitelist,

    -- ** BatchDeleteAlertsRequest
    BatchDeleteAlertsRequest (..),
    newBatchDeleteAlertsRequest,

    -- ** BatchDeleteAlertsResponse
    BatchDeleteAlertsResponse (..),
    newBatchDeleteAlertsResponse,

    -- ** BatchDeleteAlertsResponse_FailedAlertStatus
    BatchDeleteAlertsResponse_FailedAlertStatus (..),
    newBatchDeleteAlertsResponse_FailedAlertStatus,

    -- ** BatchUndeleteAlertsRequest
    BatchUndeleteAlertsRequest (..),
    newBatchUndeleteAlertsRequest,

    -- ** BatchUndeleteAlertsResponse
    BatchUndeleteAlertsResponse (..),
    newBatchUndeleteAlertsResponse,

    -- ** BatchUndeleteAlertsResponse_FailedAlertStatus
    BatchUndeleteAlertsResponse_FailedAlertStatus (..),
    newBatchUndeleteAlertsResponse_FailedAlertStatus,

    -- ** CloudPubsubTopic
    CloudPubsubTopic (..),
    newCloudPubsubTopic,

    -- ** CloudPubsubTopic_PayloadFormat
    CloudPubsubTopic_PayloadFormat (..),

    -- ** Csv
    Csv (..),
    newCsv,

    -- ** CsvRow
    CsvRow (..),
    newCsvRow,

    -- ** DeviceCompromised
    DeviceCompromised (..),
    newDeviceCompromised,

    -- ** DeviceCompromisedSecurityDetail
    DeviceCompromisedSecurityDetail (..),
    newDeviceCompromisedSecurityDetail,

    -- ** DlpRuleViolation
    DlpRuleViolation (..),
    newDlpRuleViolation,

    -- ** DomainId
    DomainId (..),
    newDomainId,

    -- ** DomainWideTakeoutInitiated
    DomainWideTakeoutInitiated (..),
    newDomainWideTakeoutInitiated,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** GmailMessageInfo
    GmailMessageInfo (..),
    newGmailMessageInfo,

    -- ** GoogleOperations
    GoogleOperations (..),
    newGoogleOperations,

    -- ** ListAlertFeedbackResponse
    ListAlertFeedbackResponse (..),
    newListAlertFeedbackResponse,

    -- ** ListAlertsResponse
    ListAlertsResponse (..),
    newListAlertsResponse,

    -- ** LoginDetails
    LoginDetails (..),
    newLoginDetails,

    -- ** MailPhishing
    MailPhishing (..),
    newMailPhishing,

    -- ** MailPhishing_SystemActionType
    MailPhishing_SystemActionType (..),

    -- ** MaliciousEntity
    MaliciousEntity (..),
    newMaliciousEntity,

    -- ** MandatoryServiceAnnouncement
    MandatoryServiceAnnouncement (..),
    newMandatoryServiceAnnouncement,

    -- ** MatchInfo
    MatchInfo (..),
    newMatchInfo,

    -- ** MergeInfo
    MergeInfo (..),
    newMergeInfo,

    -- ** Notification
    Notification (..),
    newNotification,

    -- ** PhishingSpike
    PhishingSpike (..),
    newPhishingSpike,

    -- ** PredefinedDetectorInfo
    PredefinedDetectorInfo (..),
    newPredefinedDetectorInfo,

    -- ** ReportingRule
    ReportingRule (..),
    newReportingRule,

    -- ** RequestInfo
    RequestInfo (..),
    newRequestInfo,

    -- ** ResourceInfo
    ResourceInfo (..),
    newResourceInfo,

    -- ** RuleInfo
    RuleInfo (..),
    newRuleInfo,

    -- ** RuleViolationInfo
    RuleViolationInfo (..),
    newRuleViolationInfo,

    -- ** RuleViolationInfo_DataSource
    RuleViolationInfo_DataSource (..),

    -- ** RuleViolationInfo_SuppressedActionTypesItem
    RuleViolationInfo_SuppressedActionTypesItem (..),

    -- ** RuleViolationInfo_Trigger
    RuleViolationInfo_Trigger (..),

    -- ** RuleViolationInfo_TriggeredActionTypesItem
    RuleViolationInfo_TriggeredActionTypesItem (..),

    -- ** Settings
    Settings (..),
    newSettings,

    -- ** StateSponsoredAttack
    StateSponsoredAttack (..),
    newStateSponsoredAttack,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** SuspiciousActivity
    SuspiciousActivity (..),
    newSuspiciousActivity,

    -- ** SuspiciousActivitySecurityDetail
    SuspiciousActivitySecurityDetail (..),
    newSuspiciousActivitySecurityDetail,

    -- ** UndeleteAlertRequest
    UndeleteAlertRequest (..),
    newUndeleteAlertRequest,

    -- ** User
    User (..),
    newUser,

    -- ** UserChanges
    UserChanges (..),
    newUserChanges,

    -- ** UserDefinedDetectorInfo
    UserDefinedDetectorInfo (..),
    newUserDefinedDetectorInfo,
  )
where

import Network.Google.AlertCenter.Alerts.BatchDelete
import Network.Google.AlertCenter.Alerts.BatchUndelete
import Network.Google.AlertCenter.Alerts.Delete
import Network.Google.AlertCenter.Alerts.Feedback.Create
import Network.Google.AlertCenter.Alerts.Feedback.List
import Network.Google.AlertCenter.Alerts.Get
import Network.Google.AlertCenter.Alerts.GetMetadata
import Network.Google.AlertCenter.Alerts.List
import Network.Google.AlertCenter.Alerts.Undelete
import Network.Google.AlertCenter.GetSettings
import Network.Google.AlertCenter.Types
import Network.Google.AlertCenter.UpdateSettings
