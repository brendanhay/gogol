{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Gmail.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Gmail.Types.Sum where

import           Network.Google.Prelude

-- | The format to return the messages in.
data GmailUsersThreadsGetFormat
    = Full
      -- ^ @full@
    | Metadata
      -- ^ @metadata@
    | Minimal
      -- ^ @minimal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GmailUsersThreadsGetFormat

instance FromText GmailUsersThreadsGetFormat where
    fromText = \case
        "full" -> Just Full
        "metadata" -> Just Metadata
        "minimal" -> Just Minimal
        _ -> Nothing

instance ToText GmailUsersThreadsGetFormat where
    toText = \case
        Full -> "full"
        Metadata -> "metadata"
        Minimal -> "minimal"

instance FromJSON GmailUsersThreadsGetFormat where
    parseJSON = parseJSONText "GmailUsersThreadsGetFormat"

instance ToJSON GmailUsersThreadsGetFormat where
    toJSON = toJSONText

-- | Source for Gmail\'s internal date of the message.
data GmailUsersMessagesInsertInternalDateSource
    = DateHeader
      -- ^ @dateHeader@
    | ReceivedTime
      -- ^ @receivedTime@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GmailUsersMessagesInsertInternalDateSource

instance FromText GmailUsersMessagesInsertInternalDateSource where
    fromText = \case
        "dateHeader" -> Just DateHeader
        "receivedTime" -> Just ReceivedTime
        _ -> Nothing

instance ToText GmailUsersMessagesInsertInternalDateSource where
    toText = \case
        DateHeader -> "dateHeader"
        ReceivedTime -> "receivedTime"

instance FromJSON GmailUsersMessagesInsertInternalDateSource where
    parseJSON = parseJSONText "GmailUsersMessagesInsertInternalDateSource"

instance ToJSON GmailUsersMessagesInsertInternalDateSource where
    toJSON = toJSONText

-- | The owner type for the label. User labels are created by the user and
-- can be modified and deleted by the user and can be applied to any
-- message or thread. System labels are internally created and cannot be
-- added, modified, or deleted. System labels may be able to be applied to
-- or removed from messages and threads under some circumstances but this
-- is not guaranteed. For example, users can apply and remove the INBOX and
-- UNREAD labels from messages and threads, but cannot apply or remove the
-- DRAFTS or SENT labels from messages or threads.
data LabelType
    = System
      -- ^ @system@
    | User
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelType

instance FromText LabelType where
    fromText = \case
        "system" -> Just System
        "user" -> Just User
        _ -> Nothing

instance ToText LabelType where
    toText = \case
        System -> "system"
        User -> "user"

instance FromJSON LabelType where
    parseJSON = parseJSONText "LabelType"

instance ToJSON LabelType where
    toJSON = toJSONText

-- | The visibility of the label in the message list in the Gmail web
-- interface.
data LabelMessageListVisibility
    = Hide
      -- ^ @hide@
    | Show
      -- ^ @show@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelMessageListVisibility

instance FromText LabelMessageListVisibility where
    fromText = \case
        "hide" -> Just Hide
        "show" -> Just Show
        _ -> Nothing

instance ToText LabelMessageListVisibility where
    toText = \case
        Hide -> "hide"
        Show -> "show"

instance FromJSON LabelMessageListVisibility where
    parseJSON = parseJSONText "LabelMessageListVisibility"

instance ToJSON LabelMessageListVisibility where
    toJSON = toJSONText

-- | The visibility of the label in the label list in the Gmail web
-- interface.
data LabelLabelListVisibility
    = LabelHide
      -- ^ @labelHide@
    | LabelShow
      -- ^ @labelShow@
    | LabelShowIfUnread
      -- ^ @labelShowIfUnread@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelLabelListVisibility

instance FromText LabelLabelListVisibility where
    fromText = \case
        "labelHide" -> Just LabelHide
        "labelShow" -> Just LabelShow
        "labelShowIfUnread" -> Just LabelShowIfUnread
        _ -> Nothing

instance ToText LabelLabelListVisibility where
    toText = \case
        LabelHide -> "labelHide"
        LabelShow -> "labelShow"
        LabelShowIfUnread -> "labelShowIfUnread"

instance FromJSON LabelLabelListVisibility where
    parseJSON = parseJSONText "LabelLabelListVisibility"

instance ToJSON LabelLabelListVisibility where
    toJSON = toJSONText

-- | The format to return the draft in.
data GmailUsersDraftsGetFormat
    = GUDGFFull
      -- ^ @full@
    | GUDGFMetadata
      -- ^ @metadata@
    | GUDGFMinimal
      -- ^ @minimal@
    | GUDGFRaw
      -- ^ @raw@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GmailUsersDraftsGetFormat

instance FromText GmailUsersDraftsGetFormat where
    fromText = \case
        "full" -> Just GUDGFFull
        "metadata" -> Just GUDGFMetadata
        "minimal" -> Just GUDGFMinimal
        "raw" -> Just GUDGFRaw
        _ -> Nothing

instance ToText GmailUsersDraftsGetFormat where
    toText = \case
        GUDGFFull -> "full"
        GUDGFMetadata -> "metadata"
        GUDGFMinimal -> "minimal"
        GUDGFRaw -> "raw"

instance FromJSON GmailUsersDraftsGetFormat where
    parseJSON = parseJSONText "GmailUsersDraftsGetFormat"

instance ToJSON GmailUsersDraftsGetFormat where
    toJSON = toJSONText

-- | Source for Gmail\'s internal date of the message.
data GmailUsersMessagesImportInternalDateSource
    = GUMIIDSDateHeader
      -- ^ @dateHeader@
    | GUMIIDSReceivedTime
      -- ^ @receivedTime@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GmailUsersMessagesImportInternalDateSource

instance FromText GmailUsersMessagesImportInternalDateSource where
    fromText = \case
        "dateHeader" -> Just GUMIIDSDateHeader
        "receivedTime" -> Just GUMIIDSReceivedTime
        _ -> Nothing

instance ToText GmailUsersMessagesImportInternalDateSource where
    toText = \case
        GUMIIDSDateHeader -> "dateHeader"
        GUMIIDSReceivedTime -> "receivedTime"

instance FromJSON GmailUsersMessagesImportInternalDateSource where
    parseJSON = parseJSONText "GmailUsersMessagesImportInternalDateSource"

instance ToJSON GmailUsersMessagesImportInternalDateSource where
    toJSON = toJSONText

-- | Filtering behavior of labelIds list specified.
data WatchRequestLabelFilterAction
    = Exclude
      -- ^ @exclude@
    | Include
      -- ^ @include@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WatchRequestLabelFilterAction

instance FromText WatchRequestLabelFilterAction where
    fromText = \case
        "exclude" -> Just Exclude
        "include" -> Just Include
        _ -> Nothing

instance ToText WatchRequestLabelFilterAction where
    toText = \case
        Exclude -> "exclude"
        Include -> "include"

instance FromJSON WatchRequestLabelFilterAction where
    parseJSON = parseJSONText "WatchRequestLabelFilterAction"

instance ToJSON WatchRequestLabelFilterAction where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | The format to return the message in.
data GmailUsersMessagesGetFormat
    = GUMGFFull
      -- ^ @full@
    | GUMGFMetadata
      -- ^ @metadata@
    | GUMGFMinimal
      -- ^ @minimal@
    | GUMGFRaw
      -- ^ @raw@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GmailUsersMessagesGetFormat

instance FromText GmailUsersMessagesGetFormat where
    fromText = \case
        "full" -> Just GUMGFFull
        "metadata" -> Just GUMGFMetadata
        "minimal" -> Just GUMGFMinimal
        "raw" -> Just GUMGFRaw
        _ -> Nothing

instance ToText GmailUsersMessagesGetFormat where
    toText = \case
        GUMGFFull -> "full"
        GUMGFMetadata -> "metadata"
        GUMGFMinimal -> "minimal"
        GUMGFRaw -> "raw"

instance FromJSON GmailUsersMessagesGetFormat where
    parseJSON = parseJSONText "GmailUsersMessagesGetFormat"

instance ToJSON GmailUsersMessagesGetFormat where
    toJSON = toJSONText
