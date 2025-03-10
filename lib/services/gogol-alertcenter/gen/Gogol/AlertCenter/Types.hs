{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AlertCenter.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AlertCenter.Types
  ( -- * Configuration
    alertCenterService,

    -- * OAuth Scopes
    Apps'Alerts,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AbuseDetected
    AbuseDetected (..),
    newAbuseDetected,

    -- ** AbuseDetected_VariationType
    AbuseDetected_VariationType (..),

    -- ** AccessApproval
    AccessApproval (..),
    newAccessApproval,

    -- ** AccessApproval_JustificationReasonItem
    AccessApproval_JustificationReasonItem (..),

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

    -- ** ApnsCertificateExpirationInfo
    ApnsCertificateExpirationInfo (..),
    newApnsCertificateExpirationInfo,

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

    -- ** DeviceManagementRule
    DeviceManagementRule (..),
    newDeviceManagementRule,

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

    -- ** Entity
    Entity (..),
    newEntity,

    -- ** EntityList
    EntityList (..),
    newEntityList,

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

    -- ** PrimaryAdminChangedEvent
    PrimaryAdminChangedEvent (..),
    newPrimaryAdminChangedEvent,

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

    -- ** RuleViolationInfo_EventType
    RuleViolationInfo_EventType (..),

    -- ** RuleViolationInfo_SuppressedActionTypesItem
    RuleViolationInfo_SuppressedActionTypesItem (..),

    -- ** RuleViolationInfo_Trigger
    RuleViolationInfo_Trigger (..),

    -- ** RuleViolationInfo_TriggeredActionTypesItem
    RuleViolationInfo_TriggeredActionTypesItem (..),

    -- ** SSOProfileCreatedEvent
    SSOProfileCreatedEvent (..),
    newSSOProfileCreatedEvent,

    -- ** SSOProfileDeletedEvent
    SSOProfileDeletedEvent (..),
    newSSOProfileDeletedEvent,

    -- ** SSOProfileUpdatedEvent
    SSOProfileUpdatedEvent (..),
    newSSOProfileUpdatedEvent,

    -- ** SensitiveAdminAction
    SensitiveAdminAction (..),
    newSensitiveAdminAction,

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

    -- ** SuperAdminPasswordResetEvent
    SuperAdminPasswordResetEvent (..),
    newSuperAdminPasswordResetEvent,

    -- ** SupportTicket
    SupportTicket (..),
    newSupportTicket,

    -- ** SuspiciousActivity
    SuspiciousActivity (..),
    newSuspiciousActivity,

    -- ** SuspiciousActivitySecurityDetail
    SuspiciousActivitySecurityDetail (..),
    newSuspiciousActivitySecurityDetail,

    -- ** TransferError
    TransferError (..),
    newTransferError,

    -- ** TransferError_EntityType
    TransferError_EntityType (..),

    -- ** TransferError_InvalidReason
    TransferError_InvalidReason (..),

    -- ** TransferMisconfiguration
    TransferMisconfiguration (..),
    newTransferMisconfiguration,

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

    -- ** VoiceMisconfiguration
    VoiceMisconfiguration (..),
    newVoiceMisconfiguration,

    -- ** VoiceMisconfiguration_EntityType
    VoiceMisconfiguration_EntityType (..),

    -- ** VoicemailMisconfiguration
    VoicemailMisconfiguration (..),
    newVoicemailMisconfiguration,

    -- ** VoicemailRecipientError
    VoicemailRecipientError (..),
    newVoicemailRecipientError,

    -- ** VoicemailRecipientError_InvalidReason
    VoicemailRecipientError_InvalidReason (..),
  )
where

import Gogol.AlertCenter.Internal.Product
import Gogol.AlertCenter.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1beta1@ of the Google Workspace Alert Center API. This contains the host and root path used as a starting point for constructing service requests.
alertCenterService :: Core.ServiceConfig
alertCenterService =
  Core.defaultService
    (Core.ServiceId "alertcenter:v1beta1")
    "alertcenter.googleapis.com"

-- | See and delete your domain\'s G Suite alerts, and send alert feedback
type Apps'Alerts = "https://www.googleapis.com/auth/apps.alerts"
