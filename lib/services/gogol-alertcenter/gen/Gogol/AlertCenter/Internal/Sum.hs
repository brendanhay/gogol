{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AlertCenter.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.AlertCenter.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AbuseDetected_VariationType
    AbuseDetected_VariationType
      ( AbuseDetected_VariationType_ABUSEDETECTEDVARIATIONTYPEUNSPECIFIED,
        AbuseDetected_VariationType_DRIVEABUSIVECONTENT,
        AbuseDetected_VariationType_LIMITEDDISABLE,
        ..
      ),

    -- * AccessApproval_JustificationReasonItem
    AccessApproval_JustificationReasonItem
      ( AccessApproval_JustificationReasonItem_JUSTIFICATIONUNSPECIFIED,
        AccessApproval_JustificationReasonItem_CUSTOMERINITIATEDSUPPORT,
        AccessApproval_JustificationReasonItem_GOOGLEINITIATEDREVIEW,
        AccessApproval_JustificationReasonItem_GOOGLEINITIATEDSERVICE,
        AccessApproval_JustificationReasonItem_THIRDPARTYDATAREQUEST,
        AccessApproval_JustificationReasonItem_GOOGLERESPONSETOPRODUCTIONALERT,
        ..
      ),

    -- * AccountSuspensionDetails_AbuseReason
    AccountSuspensionDetails_AbuseReason
      ( AccountSuspensionDetails_AbuseReason_ACCOUNTSUSPENSIONABUSEREASONUNSPECIFIED,
        AccountSuspensionDetails_AbuseReason_TOSVIOLATION,
        AccountSuspensionDetails_AbuseReason_Spam,
        AccountSuspensionDetails_AbuseReason_Phishing,
        AccountSuspensionDetails_AbuseReason_TRAFFICPUMPING,
        AccountSuspensionDetails_AbuseReason_Fraud,
        AccountSuspensionDetails_AbuseReason_NUMBERHARVESTING,
        AccountSuspensionDetails_AbuseReason_PAYMENTSFRAUD,
        AccountSuspensionDetails_AbuseReason_UNWANTEDCONTENT,
        ..
      ),

    -- * AccountSuspensionWarning_State
    AccountSuspensionWarning_State
      ( AccountSuspensionWarning_State_ACCOUNTSUSPENSIONWARNINGSTATEUNSPECIFIED,
        AccountSuspensionWarning_State_Warning,
        AccountSuspensionWarning_State_Suspended,
        AccountSuspensionWarning_State_APPEALAPPROVED,
        AccountSuspensionWarning_State_APPEALSUBMITTED,
        ..
      ),

    -- * AlertFeedback_Type
    AlertFeedback_Type
      ( AlertFeedback_Type_ALERTFEEDBACKTYPEUNSPECIFIED,
        AlertFeedback_Type_NOTUSEFUL,
        AlertFeedback_Type_SOMEWHATUSEFUL,
        AlertFeedback_Type_VERYUSEFUL,
        ..
      ),

    -- * AppsOutage_Status
    AppsOutage_Status
      ( AppsOutage_Status_STATUSUNSPECIFIED,
        AppsOutage_Status_New,
        AppsOutage_Status_Ongoing,
        AppsOutage_Status_Resolved,
        AppsOutage_Status_FALSEPOSITIVE,
        AppsOutage_Status_PARTIALLYRESOLVED,
        AppsOutage_Status_Merged,
        AppsOutage_Status_Downgraded,
        ..
      ),

    -- * CloudPubsubTopic_PayloadFormat
    CloudPubsubTopic_PayloadFormat
      ( CloudPubsubTopic_PayloadFormat_PAYLOADFORMATUNSPECIFIED,
        CloudPubsubTopic_PayloadFormat_Json,
        ..
      ),

    -- * MailPhishing_SystemActionType
    MailPhishing_SystemActionType
      ( MailPhishing_SystemActionType_SYSTEMACTIONTYPEUNSPECIFIED,
        MailPhishing_SystemActionType_NOOPERATION,
        MailPhishing_SystemActionType_REMOVEDFROMINBOX,
        ..
      ),

    -- * RuleViolationInfo_DataSource
    RuleViolationInfo_DataSource
      ( RuleViolationInfo_DataSource_DATASOURCEUNSPECIFIED,
        RuleViolationInfo_DataSource_Drive,
        RuleViolationInfo_DataSource_Chrome,
        RuleViolationInfo_DataSource_Chat,
        ..
      ),

    -- * RuleViolationInfo_EventType
    RuleViolationInfo_EventType
      ( RuleViolationInfo_EventType_EVENTTYPEUNSPECIFIED,
        RuleViolationInfo_EventType_ACCESSBLOCKED,
        RuleViolationInfo_EventType_SHARINGBLOCKED,
        ..
      ),

    -- * RuleViolationInfo_SuppressedActionTypesItem
    RuleViolationInfo_SuppressedActionTypesItem
      ( RuleViolationInfo_SuppressedActionTypesItem_ACTIONTYPEUNSPECIFIED,
        RuleViolationInfo_SuppressedActionTypesItem_DRIVEBLOCKEXTERNALSHARING,
        RuleViolationInfo_SuppressedActionTypesItem_DRIVEWARNONEXTERNALSHARING,
        RuleViolationInfo_SuppressedActionTypesItem_DRIVERESTRICTDOWNLOADPRINTCOPY,
        RuleViolationInfo_SuppressedActionTypesItem_DRIVEAPPLYDRIVELABELS,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKFILEDOWNLOAD,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNFILEDOWNLOAD,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKFILEUPLOAD,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNFILEUPLOAD,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKWEBCONTENTUPLOAD,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNWEBCONTENTUPLOAD,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKPAGEPRINT,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNPAGEPRINT,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKURLVISITED,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNURLVISITED,
        RuleViolationInfo_SuppressedActionTypesItem_CHROMESTORECONTENT,
        RuleViolationInfo_SuppressedActionTypesItem_DELETEWEBPROTECTEVIDENCE,
        RuleViolationInfo_SuppressedActionTypesItem_CHATBLOCKCONTENT,
        RuleViolationInfo_SuppressedActionTypesItem_CHATWARNUSER,
        RuleViolationInfo_SuppressedActionTypesItem_Alert,
        RuleViolationInfo_SuppressedActionTypesItem_RULEACTIVATE,
        RuleViolationInfo_SuppressedActionTypesItem_RULEDEACTIVATE,
        ..
      ),

    -- * RuleViolationInfo_Trigger
    RuleViolationInfo_Trigger
      ( RuleViolationInfo_Trigger_TRIGGERUNSPECIFIED,
        RuleViolationInfo_Trigger_DRIVESHARE,
        RuleViolationInfo_Trigger_CHROMEFILEDOWNLOAD,
        RuleViolationInfo_Trigger_CHROMEFILEUPLOAD,
        RuleViolationInfo_Trigger_CHROMEWEBCONTENTUPLOAD,
        RuleViolationInfo_Trigger_CHATMESSAGESENT,
        RuleViolationInfo_Trigger_CHATATTACHMENTUPLOADED,
        RuleViolationInfo_Trigger_CHROMEPAGEPRINT,
        RuleViolationInfo_Trigger_CHROMEURLVISITED,
        ..
      ),

    -- * RuleViolationInfo_TriggeredActionTypesItem
    RuleViolationInfo_TriggeredActionTypesItem
      ( RuleViolationInfo_TriggeredActionTypesItem_ACTIONTYPEUNSPECIFIED,
        RuleViolationInfo_TriggeredActionTypesItem_DRIVEBLOCKEXTERNALSHARING,
        RuleViolationInfo_TriggeredActionTypesItem_DRIVEWARNONEXTERNALSHARING,
        RuleViolationInfo_TriggeredActionTypesItem_DRIVERESTRICTDOWNLOADPRINTCOPY,
        RuleViolationInfo_TriggeredActionTypesItem_DRIVEAPPLYDRIVELABELS,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKFILEDOWNLOAD,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNFILEDOWNLOAD,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKFILEUPLOAD,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNFILEUPLOAD,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKWEBCONTENTUPLOAD,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNWEBCONTENTUPLOAD,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKPAGEPRINT,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNPAGEPRINT,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKURLVISITED,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNURLVISITED,
        RuleViolationInfo_TriggeredActionTypesItem_CHROMESTORECONTENT,
        RuleViolationInfo_TriggeredActionTypesItem_DELETEWEBPROTECTEVIDENCE,
        RuleViolationInfo_TriggeredActionTypesItem_CHATBLOCKCONTENT,
        RuleViolationInfo_TriggeredActionTypesItem_CHATWARNUSER,
        RuleViolationInfo_TriggeredActionTypesItem_Alert,
        RuleViolationInfo_TriggeredActionTypesItem_RULEACTIVATE,
        RuleViolationInfo_TriggeredActionTypesItem_RULEDEACTIVATE,
        ..
      ),

    -- * TransferError_EntityType
    TransferError_EntityType
      ( TransferError_EntityType_TRANSFERENTITYTYPEUNSPECIFIED,
        TransferError_EntityType_TRANSFERAUTOATTENDANT,
        TransferError_EntityType_TRANSFERRINGGROUP,
        TransferError_EntityType_TRANSFERUSER,
        ..
      ),

    -- * TransferError_InvalidReason
    TransferError_InvalidReason
      ( TransferError_InvalidReason_TRANSFERINVALIDREASONUNSPECIFIED,
        TransferError_InvalidReason_TRANSFERTARGETDELETED,
        TransferError_InvalidReason_Unlicensed,
        TransferError_InvalidReason_Suspended,
        TransferError_InvalidReason_NOPHONENUMBER,
        ..
      ),

    -- * VoiceMisconfiguration_EntityType
    VoiceMisconfiguration_EntityType
      ( VoiceMisconfiguration_EntityType_ENTITYTYPEUNSPECIFIED,
        VoiceMisconfiguration_EntityType_AUTOATTENDANT,
        VoiceMisconfiguration_EntityType_RINGGROUP,
        ..
      ),

    -- * VoicemailRecipientError_InvalidReason
    VoicemailRecipientError_InvalidReason
      ( VoicemailRecipientError_InvalidReason_EMAILINVALIDREASONUNSPECIFIED,
        VoicemailRecipientError_InvalidReason_OUTOFQUOTA,
        VoicemailRecipientError_InvalidReason_RECIPIENTDELETED,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Variation of AbuseDetected alerts. The variation/type determines the texts displayed the alert details. This differs from sub/alert/id because each sub alert can have multiple variation/types, representing different stages of the alert.
newtype AbuseDetected_VariationType = AbuseDetected_VariationType {fromAbuseDetected_VariationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | AbuseDetected alert variation type unspecified. No alert should be unspecified.
pattern AbuseDetected_VariationType_ABUSEDETECTEDVARIATIONTYPEUNSPECIFIED :: AbuseDetected_VariationType
pattern AbuseDetected_VariationType_ABUSEDETECTEDVARIATIONTYPEUNSPECIFIED = AbuseDetected_VariationType "ABUSE_DETECTED_VARIATION_TYPE_UNSPECIFIED"

-- | Variation displayed for Drive abusive content alerts.
pattern AbuseDetected_VariationType_DRIVEABUSIVECONTENT :: AbuseDetected_VariationType
pattern AbuseDetected_VariationType_DRIVEABUSIVECONTENT = AbuseDetected_VariationType "DRIVE_ABUSIVE_CONTENT"

-- | Variation displayed for Limited Disable alerts, when a Google service is disabled for a user, totally or partially, due to the user\'s abusive behavior.
pattern AbuseDetected_VariationType_LIMITEDDISABLE :: AbuseDetected_VariationType
pattern AbuseDetected_VariationType_LIMITEDDISABLE = AbuseDetected_VariationType "LIMITED_DISABLE"

{-# COMPLETE
  AbuseDetected_VariationType_ABUSEDETECTEDVARIATIONTYPEUNSPECIFIED,
  AbuseDetected_VariationType_DRIVEABUSIVECONTENT,
  AbuseDetected_VariationType_LIMITEDDISABLE,
  AbuseDetected_VariationType
  #-}

newtype AccessApproval_JustificationReasonItem = AccessApproval_JustificationReasonItem {fromAccessApproval_JustificationReasonItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Justification unspecified
pattern AccessApproval_JustificationReasonItem_JUSTIFICATIONUNSPECIFIED :: AccessApproval_JustificationReasonItem
pattern AccessApproval_JustificationReasonItem_JUSTIFICATIONUNSPECIFIED = AccessApproval_JustificationReasonItem "JUSTIFICATION_UNSPECIFIED"

-- | Customer Initiated Support
pattern AccessApproval_JustificationReasonItem_CUSTOMERINITIATEDSUPPORT :: AccessApproval_JustificationReasonItem
pattern AccessApproval_JustificationReasonItem_CUSTOMERINITIATEDSUPPORT = AccessApproval_JustificationReasonItem "CUSTOMER_INITIATED_SUPPORT"

-- | Google Initiated Review
pattern AccessApproval_JustificationReasonItem_GOOGLEINITIATEDREVIEW :: AccessApproval_JustificationReasonItem
pattern AccessApproval_JustificationReasonItem_GOOGLEINITIATEDREVIEW = AccessApproval_JustificationReasonItem "GOOGLE_INITIATED_REVIEW"

-- | Google Initiated Service
pattern AccessApproval_JustificationReasonItem_GOOGLEINITIATEDSERVICE :: AccessApproval_JustificationReasonItem
pattern AccessApproval_JustificationReasonItem_GOOGLEINITIATEDSERVICE = AccessApproval_JustificationReasonItem "GOOGLE_INITIATED_SERVICE"

-- | Third Party Data Request
pattern AccessApproval_JustificationReasonItem_THIRDPARTYDATAREQUEST :: AccessApproval_JustificationReasonItem
pattern AccessApproval_JustificationReasonItem_THIRDPARTYDATAREQUEST = AccessApproval_JustificationReasonItem "THIRD_PARTY_DATA_REQUEST"

-- | Google Response to Production Alert
pattern AccessApproval_JustificationReasonItem_GOOGLERESPONSETOPRODUCTIONALERT :: AccessApproval_JustificationReasonItem
pattern AccessApproval_JustificationReasonItem_GOOGLERESPONSETOPRODUCTIONALERT = AccessApproval_JustificationReasonItem "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT"

{-# COMPLETE
  AccessApproval_JustificationReasonItem_JUSTIFICATIONUNSPECIFIED,
  AccessApproval_JustificationReasonItem_CUSTOMERINITIATEDSUPPORT,
  AccessApproval_JustificationReasonItem_GOOGLEINITIATEDREVIEW,
  AccessApproval_JustificationReasonItem_GOOGLEINITIATEDSERVICE,
  AccessApproval_JustificationReasonItem_THIRDPARTYDATAREQUEST,
  AccessApproval_JustificationReasonItem_GOOGLERESPONSETOPRODUCTIONALERT,
  AccessApproval_JustificationReasonItem
  #-}

-- | The reason why this account is receiving an account suspension warning.
newtype AccountSuspensionDetails_AbuseReason = AccountSuspensionDetails_AbuseReason {fromAccountSuspensionDetails_AbuseReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Abuse reason is unspecified.
pattern AccountSuspensionDetails_AbuseReason_ACCOUNTSUSPENSIONABUSEREASONUNSPECIFIED :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_ACCOUNTSUSPENSIONABUSEREASONUNSPECIFIED = AccountSuspensionDetails_AbuseReason "ACCOUNT_SUSPENSION_ABUSE_REASON_UNSPECIFIED"

-- | This account is being suspended for a Terms of Service violation.
pattern AccountSuspensionDetails_AbuseReason_TOSVIOLATION :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_TOSVIOLATION = AccountSuspensionDetails_AbuseReason "TOS_VIOLATION"

-- | This account is being suspended for spam.
pattern AccountSuspensionDetails_AbuseReason_Spam :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_Spam = AccountSuspensionDetails_AbuseReason "SPAM"

-- | This account is being suspended for phishing.
pattern AccountSuspensionDetails_AbuseReason_Phishing :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_Phishing = AccountSuspensionDetails_AbuseReason "PHISHING"

-- | This account is being suspended for artificially boosting traffic to a website.
pattern AccountSuspensionDetails_AbuseReason_TRAFFICPUMPING :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_TRAFFICPUMPING = AccountSuspensionDetails_AbuseReason "TRAFFIC_PUMPING"

-- | This account is being suspended for fraud.
pattern AccountSuspensionDetails_AbuseReason_Fraud :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_Fraud = AccountSuspensionDetails_AbuseReason "FRAUD"

-- | This account is being suspended for number harvesting.
pattern AccountSuspensionDetails_AbuseReason_NUMBERHARVESTING :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_NUMBERHARVESTING = AccountSuspensionDetails_AbuseReason "NUMBER_HARVESTING"

-- | This account is being suspended for payments fraud.
pattern AccountSuspensionDetails_AbuseReason_PAYMENTSFRAUD :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_PAYMENTSFRAUD = AccountSuspensionDetails_AbuseReason "PAYMENTS_FRAUD"

-- | This account is being suspended for unwanted content.
pattern AccountSuspensionDetails_AbuseReason_UNWANTEDCONTENT :: AccountSuspensionDetails_AbuseReason
pattern AccountSuspensionDetails_AbuseReason_UNWANTEDCONTENT = AccountSuspensionDetails_AbuseReason "UNWANTED_CONTENT"

{-# COMPLETE
  AccountSuspensionDetails_AbuseReason_ACCOUNTSUSPENSIONABUSEREASONUNSPECIFIED,
  AccountSuspensionDetails_AbuseReason_TOSVIOLATION,
  AccountSuspensionDetails_AbuseReason_Spam,
  AccountSuspensionDetails_AbuseReason_Phishing,
  AccountSuspensionDetails_AbuseReason_TRAFFICPUMPING,
  AccountSuspensionDetails_AbuseReason_Fraud,
  AccountSuspensionDetails_AbuseReason_NUMBERHARVESTING,
  AccountSuspensionDetails_AbuseReason_PAYMENTSFRAUD,
  AccountSuspensionDetails_AbuseReason_UNWANTEDCONTENT,
  AccountSuspensionDetails_AbuseReason
  #-}

-- | Account suspension warning state.
newtype AccountSuspensionWarning_State = AccountSuspensionWarning_State {fromAccountSuspensionWarning_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | State is unspecified.
pattern AccountSuspensionWarning_State_ACCOUNTSUSPENSIONWARNINGSTATEUNSPECIFIED :: AccountSuspensionWarning_State
pattern AccountSuspensionWarning_State_ACCOUNTSUSPENSIONWARNINGSTATEUNSPECIFIED = AccountSuspensionWarning_State "ACCOUNT_SUSPENSION_WARNING_STATE_UNSPECIFIED"

-- | Customer is receiving a warning about imminent suspension.
pattern AccountSuspensionWarning_State_Warning :: AccountSuspensionWarning_State
pattern AccountSuspensionWarning_State_Warning = AccountSuspensionWarning_State "WARNING"

-- | Customer is being notified that their account has been suspended.
pattern AccountSuspensionWarning_State_Suspended :: AccountSuspensionWarning_State
pattern AccountSuspensionWarning_State_Suspended = AccountSuspensionWarning_State "SUSPENDED"

-- | Customer is being notified that their suspension appeal was approved.
pattern AccountSuspensionWarning_State_APPEALAPPROVED :: AccountSuspensionWarning_State
pattern AccountSuspensionWarning_State_APPEALAPPROVED = AccountSuspensionWarning_State "APPEAL_APPROVED"

-- | Customer has submitted their appeal, which is pending review.
pattern AccountSuspensionWarning_State_APPEALSUBMITTED :: AccountSuspensionWarning_State
pattern AccountSuspensionWarning_State_APPEALSUBMITTED = AccountSuspensionWarning_State "APPEAL_SUBMITTED"

{-# COMPLETE
  AccountSuspensionWarning_State_ACCOUNTSUSPENSIONWARNINGSTATEUNSPECIFIED,
  AccountSuspensionWarning_State_Warning,
  AccountSuspensionWarning_State_Suspended,
  AccountSuspensionWarning_State_APPEALAPPROVED,
  AccountSuspensionWarning_State_APPEALSUBMITTED,
  AccountSuspensionWarning_State
  #-}

-- | Required. The type of the feedback.
newtype AlertFeedback_Type = AlertFeedback_Type {fromAlertFeedback_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The feedback type is not specified.
pattern AlertFeedback_Type_ALERTFEEDBACKTYPEUNSPECIFIED :: AlertFeedback_Type
pattern AlertFeedback_Type_ALERTFEEDBACKTYPEUNSPECIFIED = AlertFeedback_Type "ALERT_FEEDBACK_TYPE_UNSPECIFIED"

-- | The alert report is not useful.
pattern AlertFeedback_Type_NOTUSEFUL :: AlertFeedback_Type
pattern AlertFeedback_Type_NOTUSEFUL = AlertFeedback_Type "NOT_USEFUL"

-- | The alert report is somewhat useful.
pattern AlertFeedback_Type_SOMEWHATUSEFUL :: AlertFeedback_Type
pattern AlertFeedback_Type_SOMEWHATUSEFUL = AlertFeedback_Type "SOMEWHAT_USEFUL"

-- | The alert report is very useful.
pattern AlertFeedback_Type_VERYUSEFUL :: AlertFeedback_Type
pattern AlertFeedback_Type_VERYUSEFUL = AlertFeedback_Type "VERY_USEFUL"

{-# COMPLETE
  AlertFeedback_Type_ALERTFEEDBACKTYPEUNSPECIFIED,
  AlertFeedback_Type_NOTUSEFUL,
  AlertFeedback_Type_SOMEWHATUSEFUL,
  AlertFeedback_Type_VERYUSEFUL,
  AlertFeedback_Type
  #-}

-- | Current outage status.
newtype AppsOutage_Status = AppsOutage_Status {fromAppsOutage_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Status is unspecified.
pattern AppsOutage_Status_STATUSUNSPECIFIED :: AppsOutage_Status
pattern AppsOutage_Status_STATUSUNSPECIFIED = AppsOutage_Status "STATUS_UNSPECIFIED"

-- | The incident has just been reported.
pattern AppsOutage_Status_New :: AppsOutage_Status
pattern AppsOutage_Status_New = AppsOutage_Status "NEW"

-- | The incident is ongoing.
pattern AppsOutage_Status_Ongoing :: AppsOutage_Status
pattern AppsOutage_Status_Ongoing = AppsOutage_Status "ONGOING"

-- | The incident has been resolved.
pattern AppsOutage_Status_Resolved :: AppsOutage_Status
pattern AppsOutage_Status_Resolved = AppsOutage_Status "RESOLVED"

-- | Further assessment indicated no customer impact.
pattern AppsOutage_Status_FALSEPOSITIVE :: AppsOutage_Status
pattern AppsOutage_Status_FALSEPOSITIVE = AppsOutage_Status "FALSE_POSITIVE"

-- | The incident has been partially resolved.
pattern AppsOutage_Status_PARTIALLYRESOLVED :: AppsOutage_Status
pattern AppsOutage_Status_PARTIALLYRESOLVED = AppsOutage_Status "PARTIALLY_RESOLVED"

-- | The incident was merged into a parent.
pattern AppsOutage_Status_Merged :: AppsOutage_Status
pattern AppsOutage_Status_Merged = AppsOutage_Status "MERGED"

-- | The incident has lower impact than initially anticipated.
pattern AppsOutage_Status_Downgraded :: AppsOutage_Status
pattern AppsOutage_Status_Downgraded = AppsOutage_Status "DOWNGRADED"

{-# COMPLETE
  AppsOutage_Status_STATUSUNSPECIFIED,
  AppsOutage_Status_New,
  AppsOutage_Status_Ongoing,
  AppsOutage_Status_Resolved,
  AppsOutage_Status_FALSEPOSITIVE,
  AppsOutage_Status_PARTIALLYRESOLVED,
  AppsOutage_Status_Merged,
  AppsOutage_Status_Downgraded,
  AppsOutage_Status
  #-}

-- | Optional. The format of the payload that would be sent. If not specified the format will be JSON.
newtype CloudPubsubTopic_PayloadFormat = CloudPubsubTopic_PayloadFormat {fromCloudPubsubTopic_PayloadFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Payload format is not specified (will use JSON as default).
pattern CloudPubsubTopic_PayloadFormat_PAYLOADFORMATUNSPECIFIED :: CloudPubsubTopic_PayloadFormat
pattern CloudPubsubTopic_PayloadFormat_PAYLOADFORMATUNSPECIFIED = CloudPubsubTopic_PayloadFormat "PAYLOAD_FORMAT_UNSPECIFIED"

-- | Use JSON.
pattern CloudPubsubTopic_PayloadFormat_Json :: CloudPubsubTopic_PayloadFormat
pattern CloudPubsubTopic_PayloadFormat_Json = CloudPubsubTopic_PayloadFormat "JSON"

{-# COMPLETE
  CloudPubsubTopic_PayloadFormat_PAYLOADFORMATUNSPECIFIED,
  CloudPubsubTopic_PayloadFormat_Json,
  CloudPubsubTopic_PayloadFormat
  #-}

-- | System actions on the messages.
newtype MailPhishing_SystemActionType = MailPhishing_SystemActionType {fromMailPhishing_SystemActionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | System action is unspecified.
pattern MailPhishing_SystemActionType_SYSTEMACTIONTYPEUNSPECIFIED :: MailPhishing_SystemActionType
pattern MailPhishing_SystemActionType_SYSTEMACTIONTYPEUNSPECIFIED = MailPhishing_SystemActionType "SYSTEM_ACTION_TYPE_UNSPECIFIED"

-- | No operation.
pattern MailPhishing_SystemActionType_NOOPERATION :: MailPhishing_SystemActionType
pattern MailPhishing_SystemActionType_NOOPERATION = MailPhishing_SystemActionType "NO_OPERATION"

-- | Messages were removed from the inbox.
pattern MailPhishing_SystemActionType_REMOVEDFROMINBOX :: MailPhishing_SystemActionType
pattern MailPhishing_SystemActionType_REMOVEDFROMINBOX = MailPhishing_SystemActionType "REMOVED_FROM_INBOX"

{-# COMPLETE
  MailPhishing_SystemActionType_SYSTEMACTIONTYPEUNSPECIFIED,
  MailPhishing_SystemActionType_NOOPERATION,
  MailPhishing_SystemActionType_REMOVEDFROMINBOX,
  MailPhishing_SystemActionType
  #-}

-- | Source of the data.
newtype RuleViolationInfo_DataSource = RuleViolationInfo_DataSource {fromRuleViolationInfo_DataSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Data source is unspecified.
pattern RuleViolationInfo_DataSource_DATASOURCEUNSPECIFIED :: RuleViolationInfo_DataSource
pattern RuleViolationInfo_DataSource_DATASOURCEUNSPECIFIED = RuleViolationInfo_DataSource "DATA_SOURCE_UNSPECIFIED"

-- | Drive data source.
pattern RuleViolationInfo_DataSource_Drive :: RuleViolationInfo_DataSource
pattern RuleViolationInfo_DataSource_Drive = RuleViolationInfo_DataSource "DRIVE"

-- | Chrome data source.
pattern RuleViolationInfo_DataSource_Chrome :: RuleViolationInfo_DataSource
pattern RuleViolationInfo_DataSource_Chrome = RuleViolationInfo_DataSource "CHROME"

-- | Chat data source.
pattern RuleViolationInfo_DataSource_Chat :: RuleViolationInfo_DataSource
pattern RuleViolationInfo_DataSource_Chat = RuleViolationInfo_DataSource "CHAT"

{-# COMPLETE
  RuleViolationInfo_DataSource_DATASOURCEUNSPECIFIED,
  RuleViolationInfo_DataSource_Drive,
  RuleViolationInfo_DataSource_Chrome,
  RuleViolationInfo_DataSource_Chat,
  RuleViolationInfo_DataSource
  #-}

-- | Event associated with this alert after applying the rule.
newtype RuleViolationInfo_EventType = RuleViolationInfo_EventType {fromRuleViolationInfo_EventType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Event type wasn\'t set.
pattern RuleViolationInfo_EventType_EVENTTYPEUNSPECIFIED :: RuleViolationInfo_EventType
pattern RuleViolationInfo_EventType_EVENTTYPEUNSPECIFIED = RuleViolationInfo_EventType "EVENT_TYPE_UNSPECIFIED"

-- | An access attempt was blocked.
pattern RuleViolationInfo_EventType_ACCESSBLOCKED :: RuleViolationInfo_EventType
pattern RuleViolationInfo_EventType_ACCESSBLOCKED = RuleViolationInfo_EventType "ACCESS_BLOCKED"

-- | A sharing attempt was blocked.
pattern RuleViolationInfo_EventType_SHARINGBLOCKED :: RuleViolationInfo_EventType
pattern RuleViolationInfo_EventType_SHARINGBLOCKED = RuleViolationInfo_EventType "SHARING_BLOCKED"

{-# COMPLETE
  RuleViolationInfo_EventType_EVENTTYPEUNSPECIFIED,
  RuleViolationInfo_EventType_ACCESSBLOCKED,
  RuleViolationInfo_EventType_SHARINGBLOCKED,
  RuleViolationInfo_EventType
  #-}

newtype RuleViolationInfo_SuppressedActionTypesItem = RuleViolationInfo_SuppressedActionTypesItem {fromRuleViolationInfo_SuppressedActionTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Action type is unspecified.
pattern RuleViolationInfo_SuppressedActionTypesItem_ACTIONTYPEUNSPECIFIED :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_ACTIONTYPEUNSPECIFIED = RuleViolationInfo_SuppressedActionTypesItem "ACTION_TYPE_UNSPECIFIED"

-- | Block sharing a file externally.
pattern RuleViolationInfo_SuppressedActionTypesItem_DRIVEBLOCKEXTERNALSHARING :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_DRIVEBLOCKEXTERNALSHARING = RuleViolationInfo_SuppressedActionTypesItem "DRIVE_BLOCK_EXTERNAL_SHARING"

-- | Show a warning message when sharing a file externally.
pattern RuleViolationInfo_SuppressedActionTypesItem_DRIVEWARNONEXTERNALSHARING :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_DRIVEWARNONEXTERNALSHARING = RuleViolationInfo_SuppressedActionTypesItem "DRIVE_WARN_ON_EXTERNAL_SHARING"

-- | Disable download, print, and copy for commenters and viewers in drive.
pattern RuleViolationInfo_SuppressedActionTypesItem_DRIVERESTRICTDOWNLOADPRINTCOPY :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_DRIVERESTRICTDOWNLOADPRINTCOPY = RuleViolationInfo_SuppressedActionTypesItem "DRIVE_RESTRICT_DOWNLOAD_PRINT_COPY"

-- | Apply customer specified Drive labels to the file.
pattern RuleViolationInfo_SuppressedActionTypesItem_DRIVEAPPLYDRIVELABELS :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_DRIVEAPPLYDRIVELABELS = RuleViolationInfo_SuppressedActionTypesItem "DRIVE_APPLY_DRIVE_LABELS"

-- | Chrome actions. Block file download.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKFILEDOWNLOAD :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKFILEDOWNLOAD = RuleViolationInfo_SuppressedActionTypesItem "CHROME_BLOCK_FILE_DOWNLOAD"

-- | Warn user about downloaded file.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNFILEDOWNLOAD :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNFILEDOWNLOAD = RuleViolationInfo_SuppressedActionTypesItem "CHROME_WARN_FILE_DOWNLOAD"

-- | Block file upload.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKFILEUPLOAD :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKFILEUPLOAD = RuleViolationInfo_SuppressedActionTypesItem "CHROME_BLOCK_FILE_UPLOAD"

-- | Warn user about uploaded file.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNFILEUPLOAD :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNFILEUPLOAD = RuleViolationInfo_SuppressedActionTypesItem "CHROME_WARN_FILE_UPLOAD"

-- | Block web content upload.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKWEBCONTENTUPLOAD :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKWEBCONTENTUPLOAD = RuleViolationInfo_SuppressedActionTypesItem "CHROME_BLOCK_WEB_CONTENT_UPLOAD"

-- | Warn user about uploaded web content.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNWEBCONTENTUPLOAD :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNWEBCONTENTUPLOAD = RuleViolationInfo_SuppressedActionTypesItem "CHROME_WARN_WEB_CONTENT_UPLOAD"

-- | Block page print.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKPAGEPRINT :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKPAGEPRINT = RuleViolationInfo_SuppressedActionTypesItem "CHROME_BLOCK_PAGE_PRINT"

-- | Warn user about printed page.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNPAGEPRINT :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNPAGEPRINT = RuleViolationInfo_SuppressedActionTypesItem "CHROME_WARN_PAGE_PRINT"

-- | Block Chrome URL visit.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKURLVISITED :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKURLVISITED = RuleViolationInfo_SuppressedActionTypesItem "CHROME_BLOCK_URL_VISITED"

-- | Warn user about Chrome URL visited.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNURLVISITED :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNURLVISITED = RuleViolationInfo_SuppressedActionTypesItem "CHROME_WARN_URL_VISITED"

-- | Store the content that violated the rule.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMESTORECONTENT :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHROMESTORECONTENT = RuleViolationInfo_SuppressedActionTypesItem "CHROME_STORE_CONTENT"

-- | Delete web protect evidence file
pattern RuleViolationInfo_SuppressedActionTypesItem_DELETEWEBPROTECTEVIDENCE :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_DELETEWEBPROTECTEVIDENCE = RuleViolationInfo_SuppressedActionTypesItem "DELETE_WEBPROTECT_EVIDENCE"

-- | Chat actions. Block Chat content to be sent out.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHATBLOCKCONTENT :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHATBLOCKCONTENT = RuleViolationInfo_SuppressedActionTypesItem "CHAT_BLOCK_CONTENT"

-- | Warn end user about Chat content.
pattern RuleViolationInfo_SuppressedActionTypesItem_CHATWARNUSER :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_CHATWARNUSER = RuleViolationInfo_SuppressedActionTypesItem "CHAT_WARN_USER"

-- | Send alert.
pattern RuleViolationInfo_SuppressedActionTypesItem_Alert :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_Alert = RuleViolationInfo_SuppressedActionTypesItem "ALERT"

-- | Activate Rule Action
pattern RuleViolationInfo_SuppressedActionTypesItem_RULEACTIVATE :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_RULEACTIVATE = RuleViolationInfo_SuppressedActionTypesItem "RULE_ACTIVATE"

-- | Deactivate Rule Action
pattern RuleViolationInfo_SuppressedActionTypesItem_RULEDEACTIVATE :: RuleViolationInfo_SuppressedActionTypesItem
pattern RuleViolationInfo_SuppressedActionTypesItem_RULEDEACTIVATE = RuleViolationInfo_SuppressedActionTypesItem "RULE_DEACTIVATE"

{-# COMPLETE
  RuleViolationInfo_SuppressedActionTypesItem_ACTIONTYPEUNSPECIFIED,
  RuleViolationInfo_SuppressedActionTypesItem_DRIVEBLOCKEXTERNALSHARING,
  RuleViolationInfo_SuppressedActionTypesItem_DRIVEWARNONEXTERNALSHARING,
  RuleViolationInfo_SuppressedActionTypesItem_DRIVERESTRICTDOWNLOADPRINTCOPY,
  RuleViolationInfo_SuppressedActionTypesItem_DRIVEAPPLYDRIVELABELS,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKFILEDOWNLOAD,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNFILEDOWNLOAD,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKFILEUPLOAD,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNFILEUPLOAD,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKWEBCONTENTUPLOAD,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNWEBCONTENTUPLOAD,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKPAGEPRINT,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNPAGEPRINT,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEBLOCKURLVISITED,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMEWARNURLVISITED,
  RuleViolationInfo_SuppressedActionTypesItem_CHROMESTORECONTENT,
  RuleViolationInfo_SuppressedActionTypesItem_DELETEWEBPROTECTEVIDENCE,
  RuleViolationInfo_SuppressedActionTypesItem_CHATBLOCKCONTENT,
  RuleViolationInfo_SuppressedActionTypesItem_CHATWARNUSER,
  RuleViolationInfo_SuppressedActionTypesItem_Alert,
  RuleViolationInfo_SuppressedActionTypesItem_RULEACTIVATE,
  RuleViolationInfo_SuppressedActionTypesItem_RULEDEACTIVATE,
  RuleViolationInfo_SuppressedActionTypesItem
  #-}

-- | Trigger of the rule.
newtype RuleViolationInfo_Trigger = RuleViolationInfo_Trigger {fromRuleViolationInfo_Trigger :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Trigger is unspecified.
pattern RuleViolationInfo_Trigger_TRIGGERUNSPECIFIED :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_TRIGGERUNSPECIFIED = RuleViolationInfo_Trigger "TRIGGER_UNSPECIFIED"

-- | A Drive file is shared.
pattern RuleViolationInfo_Trigger_DRIVESHARE :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_DRIVESHARE = RuleViolationInfo_Trigger "DRIVE_SHARE"

-- | A file being downloaded in a Chrome browser.
pattern RuleViolationInfo_Trigger_CHROMEFILEDOWNLOAD :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_CHROMEFILEDOWNLOAD = RuleViolationInfo_Trigger "CHROME_FILE_DOWNLOAD"

-- | A file being uploaded from a Chrome browser.
pattern RuleViolationInfo_Trigger_CHROMEFILEUPLOAD :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_CHROMEFILEUPLOAD = RuleViolationInfo_Trigger "CHROME_FILE_UPLOAD"

-- | Web content being uploaded from a Chrome browser.
pattern RuleViolationInfo_Trigger_CHROMEWEBCONTENTUPLOAD :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_CHROMEWEBCONTENTUPLOAD = RuleViolationInfo_Trigger "CHROME_WEB_CONTENT_UPLOAD"

-- | A Chat message is sent.
pattern RuleViolationInfo_Trigger_CHATMESSAGESENT :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_CHATMESSAGESENT = RuleViolationInfo_Trigger "CHAT_MESSAGE_SENT"

-- | A Chat attachment is uploaded.
pattern RuleViolationInfo_Trigger_CHATATTACHMENTUPLOADED :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_CHATATTACHMENTUPLOADED = RuleViolationInfo_Trigger "CHAT_ATTACHMENT_UPLOADED"

-- | A page is being printed by Chrome.
pattern RuleViolationInfo_Trigger_CHROMEPAGEPRINT :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_CHROMEPAGEPRINT = RuleViolationInfo_Trigger "CHROME_PAGE_PRINT"

-- | A URL is visited within Chrome.
pattern RuleViolationInfo_Trigger_CHROMEURLVISITED :: RuleViolationInfo_Trigger
pattern RuleViolationInfo_Trigger_CHROMEURLVISITED = RuleViolationInfo_Trigger "CHROME_URL_VISITED"

{-# COMPLETE
  RuleViolationInfo_Trigger_TRIGGERUNSPECIFIED,
  RuleViolationInfo_Trigger_DRIVESHARE,
  RuleViolationInfo_Trigger_CHROMEFILEDOWNLOAD,
  RuleViolationInfo_Trigger_CHROMEFILEUPLOAD,
  RuleViolationInfo_Trigger_CHROMEWEBCONTENTUPLOAD,
  RuleViolationInfo_Trigger_CHATMESSAGESENT,
  RuleViolationInfo_Trigger_CHATATTACHMENTUPLOADED,
  RuleViolationInfo_Trigger_CHROMEPAGEPRINT,
  RuleViolationInfo_Trigger_CHROMEURLVISITED,
  RuleViolationInfo_Trigger
  #-}

newtype RuleViolationInfo_TriggeredActionTypesItem = RuleViolationInfo_TriggeredActionTypesItem {fromRuleViolationInfo_TriggeredActionTypesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Action type is unspecified.
pattern RuleViolationInfo_TriggeredActionTypesItem_ACTIONTYPEUNSPECIFIED :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_ACTIONTYPEUNSPECIFIED = RuleViolationInfo_TriggeredActionTypesItem "ACTION_TYPE_UNSPECIFIED"

-- | Block sharing a file externally.
pattern RuleViolationInfo_TriggeredActionTypesItem_DRIVEBLOCKEXTERNALSHARING :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_DRIVEBLOCKEXTERNALSHARING = RuleViolationInfo_TriggeredActionTypesItem "DRIVE_BLOCK_EXTERNAL_SHARING"

-- | Show a warning message when sharing a file externally.
pattern RuleViolationInfo_TriggeredActionTypesItem_DRIVEWARNONEXTERNALSHARING :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_DRIVEWARNONEXTERNALSHARING = RuleViolationInfo_TriggeredActionTypesItem "DRIVE_WARN_ON_EXTERNAL_SHARING"

-- | Disable download, print, and copy for commenters and viewers in drive.
pattern RuleViolationInfo_TriggeredActionTypesItem_DRIVERESTRICTDOWNLOADPRINTCOPY :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_DRIVERESTRICTDOWNLOADPRINTCOPY = RuleViolationInfo_TriggeredActionTypesItem "DRIVE_RESTRICT_DOWNLOAD_PRINT_COPY"

-- | Apply customer specified Drive labels to the file.
pattern RuleViolationInfo_TriggeredActionTypesItem_DRIVEAPPLYDRIVELABELS :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_DRIVEAPPLYDRIVELABELS = RuleViolationInfo_TriggeredActionTypesItem "DRIVE_APPLY_DRIVE_LABELS"

-- | Chrome actions. Block file download.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKFILEDOWNLOAD :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKFILEDOWNLOAD = RuleViolationInfo_TriggeredActionTypesItem "CHROME_BLOCK_FILE_DOWNLOAD"

-- | Warn user about downloaded file.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNFILEDOWNLOAD :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNFILEDOWNLOAD = RuleViolationInfo_TriggeredActionTypesItem "CHROME_WARN_FILE_DOWNLOAD"

-- | Block file upload.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKFILEUPLOAD :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKFILEUPLOAD = RuleViolationInfo_TriggeredActionTypesItem "CHROME_BLOCK_FILE_UPLOAD"

-- | Warn user about uploaded file.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNFILEUPLOAD :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNFILEUPLOAD = RuleViolationInfo_TriggeredActionTypesItem "CHROME_WARN_FILE_UPLOAD"

-- | Block web content upload.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKWEBCONTENTUPLOAD :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKWEBCONTENTUPLOAD = RuleViolationInfo_TriggeredActionTypesItem "CHROME_BLOCK_WEB_CONTENT_UPLOAD"

-- | Warn user about uploaded web content.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNWEBCONTENTUPLOAD :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNWEBCONTENTUPLOAD = RuleViolationInfo_TriggeredActionTypesItem "CHROME_WARN_WEB_CONTENT_UPLOAD"

-- | Block page print.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKPAGEPRINT :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKPAGEPRINT = RuleViolationInfo_TriggeredActionTypesItem "CHROME_BLOCK_PAGE_PRINT"

-- | Warn user about printed page.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNPAGEPRINT :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNPAGEPRINT = RuleViolationInfo_TriggeredActionTypesItem "CHROME_WARN_PAGE_PRINT"

-- | Block Chrome URL visit.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKURLVISITED :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKURLVISITED = RuleViolationInfo_TriggeredActionTypesItem "CHROME_BLOCK_URL_VISITED"

-- | Warn user about Chrome URL visited.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNURLVISITED :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNURLVISITED = RuleViolationInfo_TriggeredActionTypesItem "CHROME_WARN_URL_VISITED"

-- | Store the content that violated the rule.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMESTORECONTENT :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHROMESTORECONTENT = RuleViolationInfo_TriggeredActionTypesItem "CHROME_STORE_CONTENT"

-- | Delete web protect evidence file
pattern RuleViolationInfo_TriggeredActionTypesItem_DELETEWEBPROTECTEVIDENCE :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_DELETEWEBPROTECTEVIDENCE = RuleViolationInfo_TriggeredActionTypesItem "DELETE_WEBPROTECT_EVIDENCE"

-- | Chat actions. Block Chat content to be sent out.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHATBLOCKCONTENT :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHATBLOCKCONTENT = RuleViolationInfo_TriggeredActionTypesItem "CHAT_BLOCK_CONTENT"

-- | Warn end user about Chat content.
pattern RuleViolationInfo_TriggeredActionTypesItem_CHATWARNUSER :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_CHATWARNUSER = RuleViolationInfo_TriggeredActionTypesItem "CHAT_WARN_USER"

-- | Send alert.
pattern RuleViolationInfo_TriggeredActionTypesItem_Alert :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_Alert = RuleViolationInfo_TriggeredActionTypesItem "ALERT"

-- | Activate Rule Action
pattern RuleViolationInfo_TriggeredActionTypesItem_RULEACTIVATE :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_RULEACTIVATE = RuleViolationInfo_TriggeredActionTypesItem "RULE_ACTIVATE"

-- | Deactivate Rule Action
pattern RuleViolationInfo_TriggeredActionTypesItem_RULEDEACTIVATE :: RuleViolationInfo_TriggeredActionTypesItem
pattern RuleViolationInfo_TriggeredActionTypesItem_RULEDEACTIVATE = RuleViolationInfo_TriggeredActionTypesItem "RULE_DEACTIVATE"

{-# COMPLETE
  RuleViolationInfo_TriggeredActionTypesItem_ACTIONTYPEUNSPECIFIED,
  RuleViolationInfo_TriggeredActionTypesItem_DRIVEBLOCKEXTERNALSHARING,
  RuleViolationInfo_TriggeredActionTypesItem_DRIVEWARNONEXTERNALSHARING,
  RuleViolationInfo_TriggeredActionTypesItem_DRIVERESTRICTDOWNLOADPRINTCOPY,
  RuleViolationInfo_TriggeredActionTypesItem_DRIVEAPPLYDRIVELABELS,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKFILEDOWNLOAD,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNFILEDOWNLOAD,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKFILEUPLOAD,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNFILEUPLOAD,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKWEBCONTENTUPLOAD,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNWEBCONTENTUPLOAD,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKPAGEPRINT,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNPAGEPRINT,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEBLOCKURLVISITED,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMEWARNURLVISITED,
  RuleViolationInfo_TriggeredActionTypesItem_CHROMESTORECONTENT,
  RuleViolationInfo_TriggeredActionTypesItem_DELETEWEBPROTECTEVIDENCE,
  RuleViolationInfo_TriggeredActionTypesItem_CHATBLOCKCONTENT,
  RuleViolationInfo_TriggeredActionTypesItem_CHATWARNUSER,
  RuleViolationInfo_TriggeredActionTypesItem_Alert,
  RuleViolationInfo_TriggeredActionTypesItem_RULEACTIVATE,
  RuleViolationInfo_TriggeredActionTypesItem_RULEDEACTIVATE,
  RuleViolationInfo_TriggeredActionTypesItem
  #-}

-- | Type of entity being transferred to. For ring group members, this should always be USER.
newtype TransferError_EntityType = TransferError_EntityType {fromTransferError_EntityType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Entity type wasn\'t set.
pattern TransferError_EntityType_TRANSFERENTITYTYPEUNSPECIFIED :: TransferError_EntityType
pattern TransferError_EntityType_TRANSFERENTITYTYPEUNSPECIFIED = TransferError_EntityType "TRANSFER_ENTITY_TYPE_UNSPECIFIED"

-- | Transfer to auto attendant.
pattern TransferError_EntityType_TRANSFERAUTOATTENDANT :: TransferError_EntityType
pattern TransferError_EntityType_TRANSFERAUTOATTENDANT = TransferError_EntityType "TRANSFER_AUTO_ATTENDANT"

-- | Transfer to ring group.
pattern TransferError_EntityType_TRANSFERRINGGROUP :: TransferError_EntityType
pattern TransferError_EntityType_TRANSFERRINGGROUP = TransferError_EntityType "TRANSFER_RING_GROUP"

-- | Transfer to user.
pattern TransferError_EntityType_TRANSFERUSER :: TransferError_EntityType
pattern TransferError_EntityType_TRANSFERUSER = TransferError_EntityType "TRANSFER_USER"

{-# COMPLETE
  TransferError_EntityType_TRANSFERENTITYTYPEUNSPECIFIED,
  TransferError_EntityType_TRANSFERAUTOATTENDANT,
  TransferError_EntityType_TRANSFERRINGGROUP,
  TransferError_EntityType_TRANSFERUSER,
  TransferError_EntityType
  #-}

-- | Reason for the error.
newtype TransferError_InvalidReason = TransferError_InvalidReason {fromTransferError_InvalidReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Reason wasn\'t specified.
pattern TransferError_InvalidReason_TRANSFERINVALIDREASONUNSPECIFIED :: TransferError_InvalidReason
pattern TransferError_InvalidReason_TRANSFERINVALIDREASONUNSPECIFIED = TransferError_InvalidReason "TRANSFER_INVALID_REASON_UNSPECIFIED"

-- | The transfer target can\'t be found—most likely it was deleted.
pattern TransferError_InvalidReason_TRANSFERTARGETDELETED :: TransferError_InvalidReason
pattern TransferError_InvalidReason_TRANSFERTARGETDELETED = TransferError_InvalidReason "TRANSFER_TARGET_DELETED"

-- | The user\'s Google Voice license was removed.
pattern TransferError_InvalidReason_Unlicensed :: TransferError_InvalidReason
pattern TransferError_InvalidReason_Unlicensed = TransferError_InvalidReason "UNLICENSED"

-- | The user\'s Google Workspace account was suspended.
pattern TransferError_InvalidReason_Suspended :: TransferError_InvalidReason
pattern TransferError_InvalidReason_Suspended = TransferError_InvalidReason "SUSPENDED"

-- | The transfer target no longer has a phone number. This reason should become deprecated once we support numberless transfer.
pattern TransferError_InvalidReason_NOPHONENUMBER :: TransferError_InvalidReason
pattern TransferError_InvalidReason_NOPHONENUMBER = TransferError_InvalidReason "NO_PHONE_NUMBER"

{-# COMPLETE
  TransferError_InvalidReason_TRANSFERINVALIDREASONUNSPECIFIED,
  TransferError_InvalidReason_TRANSFERTARGETDELETED,
  TransferError_InvalidReason_Unlicensed,
  TransferError_InvalidReason_Suspended,
  TransferError_InvalidReason_NOPHONENUMBER,
  TransferError_InvalidReason
  #-}

-- | Type of the entity whose configuration is now invalid.
newtype VoiceMisconfiguration_EntityType = VoiceMisconfiguration_EntityType {fromVoiceMisconfiguration_EntityType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Entity type wasn\'t set.
pattern VoiceMisconfiguration_EntityType_ENTITYTYPEUNSPECIFIED :: VoiceMisconfiguration_EntityType
pattern VoiceMisconfiguration_EntityType_ENTITYTYPEUNSPECIFIED = VoiceMisconfiguration_EntityType "ENTITY_TYPE_UNSPECIFIED"

-- | Invalid auto attendant.
pattern VoiceMisconfiguration_EntityType_AUTOATTENDANT :: VoiceMisconfiguration_EntityType
pattern VoiceMisconfiguration_EntityType_AUTOATTENDANT = VoiceMisconfiguration_EntityType "AUTO_ATTENDANT"

-- | Invalid ring group.
pattern VoiceMisconfiguration_EntityType_RINGGROUP :: VoiceMisconfiguration_EntityType
pattern VoiceMisconfiguration_EntityType_RINGGROUP = VoiceMisconfiguration_EntityType "RING_GROUP"

{-# COMPLETE
  VoiceMisconfiguration_EntityType_ENTITYTYPEUNSPECIFIED,
  VoiceMisconfiguration_EntityType_AUTOATTENDANT,
  VoiceMisconfiguration_EntityType_RINGGROUP,
  VoiceMisconfiguration_EntityType
  #-}

-- | Reason for the error.
newtype VoicemailRecipientError_InvalidReason = VoicemailRecipientError_InvalidReason {fromVoicemailRecipientError_InvalidReason :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Reason wasn\'t specified.
pattern VoicemailRecipientError_InvalidReason_EMAILINVALIDREASONUNSPECIFIED :: VoicemailRecipientError_InvalidReason
pattern VoicemailRecipientError_InvalidReason_EMAILINVALIDREASONUNSPECIFIED = VoicemailRecipientError_InvalidReason "EMAIL_INVALID_REASON_UNSPECIFIED"

-- | User can\'t receive emails due to insufficient quota.
pattern VoicemailRecipientError_InvalidReason_OUTOFQUOTA :: VoicemailRecipientError_InvalidReason
pattern VoicemailRecipientError_InvalidReason_OUTOFQUOTA = VoicemailRecipientError_InvalidReason "OUT_OF_QUOTA"

-- | All recipients were deleted.
pattern VoicemailRecipientError_InvalidReason_RECIPIENTDELETED :: VoicemailRecipientError_InvalidReason
pattern VoicemailRecipientError_InvalidReason_RECIPIENTDELETED = VoicemailRecipientError_InvalidReason "RECIPIENT_DELETED"

{-# COMPLETE
  VoicemailRecipientError_InvalidReason_EMAILINVALIDREASONUNSPECIFIED,
  VoicemailRecipientError_InvalidReason_OUTOFQUOTA,
  VoicemailRecipientError_InvalidReason_RECIPIENTDELETED,
  VoicemailRecipientError_InvalidReason
  #-}
