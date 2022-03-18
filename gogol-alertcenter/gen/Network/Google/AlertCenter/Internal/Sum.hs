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
-- Module      : Network.Google.AlertCenter.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AlertCenter.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
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
        ..
      ),

    -- * RuleViolationInfo_SuppressedActionTypesItem
    RuleViolationInfo_SuppressedActionTypesItem
      ( RuleViolationInfo_SuppressedActionTypesItem_ACTIONTYPEUNSPECIFIED,
        RuleViolationInfo_SuppressedActionTypesItem_DRIVEBLOCKEXTERNALSHARING,
        RuleViolationInfo_SuppressedActionTypesItem_DRIVEWARNONEXTERNALSHARING,
        RuleViolationInfo_SuppressedActionTypesItem_Alert,
        RuleViolationInfo_SuppressedActionTypesItem_RULEACTIVATE,
        RuleViolationInfo_SuppressedActionTypesItem_RULEDEACTIVATE,
        ..
      ),

    -- * RuleViolationInfo_Trigger
    RuleViolationInfo_Trigger
      ( RuleViolationInfo_Trigger_TRIGGERUNSPECIFIED,
        RuleViolationInfo_Trigger_DRIVESHARE,
        ..
      ),

    -- * RuleViolationInfo_TriggeredActionTypesItem
    RuleViolationInfo_TriggeredActionTypesItem
      ( RuleViolationInfo_TriggeredActionTypesItem_ACTIONTYPEUNSPECIFIED,
        RuleViolationInfo_TriggeredActionTypesItem_DRIVEBLOCKEXTERNALSHARING,
        RuleViolationInfo_TriggeredActionTypesItem_DRIVEWARNONEXTERNALSHARING,
        RuleViolationInfo_TriggeredActionTypesItem_Alert,
        RuleViolationInfo_TriggeredActionTypesItem_RULEACTIVATE,
        RuleViolationInfo_TriggeredActionTypesItem_RULEDEACTIVATE,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

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

{-# COMPLETE
  RuleViolationInfo_DataSource_DATASOURCEUNSPECIFIED,
  RuleViolationInfo_DataSource_Drive,
  RuleViolationInfo_DataSource
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

{-# COMPLETE
  RuleViolationInfo_Trigger_TRIGGERUNSPECIFIED,
  RuleViolationInfo_Trigger_DRIVESHARE,
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
  RuleViolationInfo_TriggeredActionTypesItem_Alert,
  RuleViolationInfo_TriggeredActionTypesItem_RULEACTIVATE,
  RuleViolationInfo_TriggeredActionTypesItem_RULEDEACTIVATE,
  RuleViolationInfo_TriggeredActionTypesItem
  #-}
