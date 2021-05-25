{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AlertCenter.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AlertCenter.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Source of the data.
data RuleViolationInfoDataSource
    = DataSourceUnspecified
      -- ^ @DATA_SOURCE_UNSPECIFIED@
      -- Data source is unspecified.
    | Drive
      -- ^ @DRIVE@
      -- Drive data source.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RuleViolationInfoDataSource

instance FromHttpApiData RuleViolationInfoDataSource where
    parseQueryParam = \case
        "DATA_SOURCE_UNSPECIFIED" -> Right DataSourceUnspecified
        "DRIVE" -> Right Drive
        x -> Left ("Unable to parse RuleViolationInfoDataSource from: " <> x)

instance ToHttpApiData RuleViolationInfoDataSource where
    toQueryParam = \case
        DataSourceUnspecified -> "DATA_SOURCE_UNSPECIFIED"
        Drive -> "DRIVE"

instance FromJSON RuleViolationInfoDataSource where
    parseJSON = parseJSONText "RuleViolationInfoDataSource"

instance ToJSON RuleViolationInfoDataSource where
    toJSON = toJSONText

-- | System actions on the messages.
data MailPhishingSystemActionType
    = SystemActionTypeUnspecified
      -- ^ @SYSTEM_ACTION_TYPE_UNSPECIFIED@
      -- System action is unspecified.
    | NoOperation
      -- ^ @NO_OPERATION@
      -- No operation.
    | RemovedFromInbox
      -- ^ @REMOVED_FROM_INBOX@
      -- Messages were removed from the inbox.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MailPhishingSystemActionType

instance FromHttpApiData MailPhishingSystemActionType where
    parseQueryParam = \case
        "SYSTEM_ACTION_TYPE_UNSPECIFIED" -> Right SystemActionTypeUnspecified
        "NO_OPERATION" -> Right NoOperation
        "REMOVED_FROM_INBOX" -> Right RemovedFromInbox
        x -> Left ("Unable to parse MailPhishingSystemActionType from: " <> x)

instance ToHttpApiData MailPhishingSystemActionType where
    toQueryParam = \case
        SystemActionTypeUnspecified -> "SYSTEM_ACTION_TYPE_UNSPECIFIED"
        NoOperation -> "NO_OPERATION"
        RemovedFromInbox -> "REMOVED_FROM_INBOX"

instance FromJSON MailPhishingSystemActionType where
    parseJSON = parseJSONText "MailPhishingSystemActionType"

instance ToJSON MailPhishingSystemActionType where
    toJSON = toJSONText

data RuleViolationInfoTriggeredActionTypesItem
    = RVITATIActionTypeUnspecified
      -- ^ @ACTION_TYPE_UNSPECIFIED@
      -- Action type is unspecified.
    | RVITATIDriveBlockExternalSharing
      -- ^ @DRIVE_BLOCK_EXTERNAL_SHARING@
      -- Block sharing a file externally.
    | RVITATIDriveWarnOnExternalSharing
      -- ^ @DRIVE_WARN_ON_EXTERNAL_SHARING@
      -- Show a warning message when sharing a file externally.
    | RVITATIAlert
      -- ^ @ALERT@
      -- Send alert.
    | RVITATIRuleActivate
      -- ^ @RULE_ACTIVATE@
      -- Activate Rule Action
    | RVITATIRuleDeactivate
      -- ^ @RULE_DEACTIVATE@
      -- Deactivate Rule Action
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RuleViolationInfoTriggeredActionTypesItem

instance FromHttpApiData RuleViolationInfoTriggeredActionTypesItem where
    parseQueryParam = \case
        "ACTION_TYPE_UNSPECIFIED" -> Right RVITATIActionTypeUnspecified
        "DRIVE_BLOCK_EXTERNAL_SHARING" -> Right RVITATIDriveBlockExternalSharing
        "DRIVE_WARN_ON_EXTERNAL_SHARING" -> Right RVITATIDriveWarnOnExternalSharing
        "ALERT" -> Right RVITATIAlert
        "RULE_ACTIVATE" -> Right RVITATIRuleActivate
        "RULE_DEACTIVATE" -> Right RVITATIRuleDeactivate
        x -> Left ("Unable to parse RuleViolationInfoTriggeredActionTypesItem from: " <> x)

instance ToHttpApiData RuleViolationInfoTriggeredActionTypesItem where
    toQueryParam = \case
        RVITATIActionTypeUnspecified -> "ACTION_TYPE_UNSPECIFIED"
        RVITATIDriveBlockExternalSharing -> "DRIVE_BLOCK_EXTERNAL_SHARING"
        RVITATIDriveWarnOnExternalSharing -> "DRIVE_WARN_ON_EXTERNAL_SHARING"
        RVITATIAlert -> "ALERT"
        RVITATIRuleActivate -> "RULE_ACTIVATE"
        RVITATIRuleDeactivate -> "RULE_DEACTIVATE"

instance FromJSON RuleViolationInfoTriggeredActionTypesItem where
    parseJSON = parseJSONText "RuleViolationInfoTriggeredActionTypesItem"

instance ToJSON RuleViolationInfoTriggeredActionTypesItem where
    toJSON = toJSONText

-- | Current outage status.
data AppsOutageStatus
    = StatusUnspecified
      -- ^ @STATUS_UNSPECIFIED@
      -- Status is unspecified.
    | New
      -- ^ @NEW@
      -- The incident has just been reported.
    | Ongoing
      -- ^ @ONGOING@
      -- The incidnet is ongoing.
    | Resolved
      -- ^ @RESOLVED@
      -- The incident has been resolved.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AppsOutageStatus

instance FromHttpApiData AppsOutageStatus where
    parseQueryParam = \case
        "STATUS_UNSPECIFIED" -> Right StatusUnspecified
        "NEW" -> Right New
        "ONGOING" -> Right Ongoing
        "RESOLVED" -> Right Resolved
        x -> Left ("Unable to parse AppsOutageStatus from: " <> x)

instance ToHttpApiData AppsOutageStatus where
    toQueryParam = \case
        StatusUnspecified -> "STATUS_UNSPECIFIED"
        New -> "NEW"
        Ongoing -> "ONGOING"
        Resolved -> "RESOLVED"

instance FromJSON AppsOutageStatus where
    parseJSON = parseJSONText "AppsOutageStatus"

instance ToJSON AppsOutageStatus where
    toJSON = toJSONText

-- | Optional. The format of the payload that would be sent. If not specified
-- the format will be JSON.
data CloudPubsubTopicPayloadFormat
    = PayloadFormatUnspecified
      -- ^ @PAYLOAD_FORMAT_UNSPECIFIED@
      -- Payload format is not specified (will use JSON as default).
    | JSON
      -- ^ @JSON@
      -- Use JSON.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CloudPubsubTopicPayloadFormat

instance FromHttpApiData CloudPubsubTopicPayloadFormat where
    parseQueryParam = \case
        "PAYLOAD_FORMAT_UNSPECIFIED" -> Right PayloadFormatUnspecified
        "JSON" -> Right JSON
        x -> Left ("Unable to parse CloudPubsubTopicPayloadFormat from: " <> x)

instance ToHttpApiData CloudPubsubTopicPayloadFormat where
    toQueryParam = \case
        PayloadFormatUnspecified -> "PAYLOAD_FORMAT_UNSPECIFIED"
        JSON -> "JSON"

instance FromJSON CloudPubsubTopicPayloadFormat where
    parseJSON = parseJSONText "CloudPubsubTopicPayloadFormat"

instance ToJSON CloudPubsubTopicPayloadFormat where
    toJSON = toJSONText

-- | Required. The type of the feedback.
data AlertFeedbackType
    = AlertFeedbackTypeUnspecified
      -- ^ @ALERT_FEEDBACK_TYPE_UNSPECIFIED@
      -- The feedback type is not specified.
    | NotUseful
      -- ^ @NOT_USEFUL@
      -- The alert report is not useful.
    | SomewhatUseful
      -- ^ @SOMEWHAT_USEFUL@
      -- The alert report is somewhat useful.
    | VeryUseful
      -- ^ @VERY_USEFUL@
      -- The alert report is very useful.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AlertFeedbackType

instance FromHttpApiData AlertFeedbackType where
    parseQueryParam = \case
        "ALERT_FEEDBACK_TYPE_UNSPECIFIED" -> Right AlertFeedbackTypeUnspecified
        "NOT_USEFUL" -> Right NotUseful
        "SOMEWHAT_USEFUL" -> Right SomewhatUseful
        "VERY_USEFUL" -> Right VeryUseful
        x -> Left ("Unable to parse AlertFeedbackType from: " <> x)

instance ToHttpApiData AlertFeedbackType where
    toQueryParam = \case
        AlertFeedbackTypeUnspecified -> "ALERT_FEEDBACK_TYPE_UNSPECIFIED"
        NotUseful -> "NOT_USEFUL"
        SomewhatUseful -> "SOMEWHAT_USEFUL"
        VeryUseful -> "VERY_USEFUL"

instance FromJSON AlertFeedbackType where
    parseJSON = parseJSONText "AlertFeedbackType"

instance ToJSON AlertFeedbackType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

data RuleViolationInfoSuppressedActionTypesItem
    = RVISATIActionTypeUnspecified
      -- ^ @ACTION_TYPE_UNSPECIFIED@
      -- Action type is unspecified.
    | RVISATIDriveBlockExternalSharing
      -- ^ @DRIVE_BLOCK_EXTERNAL_SHARING@
      -- Block sharing a file externally.
    | RVISATIDriveWarnOnExternalSharing
      -- ^ @DRIVE_WARN_ON_EXTERNAL_SHARING@
      -- Show a warning message when sharing a file externally.
    | RVISATIAlert
      -- ^ @ALERT@
      -- Send alert.
    | RVISATIRuleActivate
      -- ^ @RULE_ACTIVATE@
      -- Activate Rule Action
    | RVISATIRuleDeactivate
      -- ^ @RULE_DEACTIVATE@
      -- Deactivate Rule Action
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RuleViolationInfoSuppressedActionTypesItem

instance FromHttpApiData RuleViolationInfoSuppressedActionTypesItem where
    parseQueryParam = \case
        "ACTION_TYPE_UNSPECIFIED" -> Right RVISATIActionTypeUnspecified
        "DRIVE_BLOCK_EXTERNAL_SHARING" -> Right RVISATIDriveBlockExternalSharing
        "DRIVE_WARN_ON_EXTERNAL_SHARING" -> Right RVISATIDriveWarnOnExternalSharing
        "ALERT" -> Right RVISATIAlert
        "RULE_ACTIVATE" -> Right RVISATIRuleActivate
        "RULE_DEACTIVATE" -> Right RVISATIRuleDeactivate
        x -> Left ("Unable to parse RuleViolationInfoSuppressedActionTypesItem from: " <> x)

instance ToHttpApiData RuleViolationInfoSuppressedActionTypesItem where
    toQueryParam = \case
        RVISATIActionTypeUnspecified -> "ACTION_TYPE_UNSPECIFIED"
        RVISATIDriveBlockExternalSharing -> "DRIVE_BLOCK_EXTERNAL_SHARING"
        RVISATIDriveWarnOnExternalSharing -> "DRIVE_WARN_ON_EXTERNAL_SHARING"
        RVISATIAlert -> "ALERT"
        RVISATIRuleActivate -> "RULE_ACTIVATE"
        RVISATIRuleDeactivate -> "RULE_DEACTIVATE"

instance FromJSON RuleViolationInfoSuppressedActionTypesItem where
    parseJSON = parseJSONText "RuleViolationInfoSuppressedActionTypesItem"

instance ToJSON RuleViolationInfoSuppressedActionTypesItem where
    toJSON = toJSONText

-- | Trigger of the rule.
data RuleViolationInfoTrigger
    = TriggerUnspecified
      -- ^ @TRIGGER_UNSPECIFIED@
      -- Trigger is unspecified.
    | DriveShare
      -- ^ @DRIVE_SHARE@
      -- A Drive file is shared.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable RuleViolationInfoTrigger

instance FromHttpApiData RuleViolationInfoTrigger where
    parseQueryParam = \case
        "TRIGGER_UNSPECIFIED" -> Right TriggerUnspecified
        "DRIVE_SHARE" -> Right DriveShare
        x -> Left ("Unable to parse RuleViolationInfoTrigger from: " <> x)

instance ToHttpApiData RuleViolationInfoTrigger where
    toQueryParam = \case
        TriggerUnspecified -> "TRIGGER_UNSPECIFIED"
        DriveShare -> "DRIVE_SHARE"

instance FromJSON RuleViolationInfoTrigger where
    parseJSON = parseJSONText "RuleViolationInfoTrigger"

instance ToJSON RuleViolationInfoTrigger where
    toJSON = toJSONText
