{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

-- | The format to return the message in.
data UsersMessagesGetFormat
    = Full
      -- ^ @full@
    | Metadata
      -- ^ @metadata@
    | Minimal
      -- ^ @minimal@
    | Raw
      -- ^ @raw@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersMessagesGetFormat

instance FromText UsersMessagesGetFormat where
    fromText = \case
        "full" -> Just Full
        "metadata" -> Just Metadata
        "minimal" -> Just Minimal
        "raw" -> Just Raw
        _ -> Nothing

instance ToText UsersMessagesGetFormat where
    toText = \case
        Full -> "full"
        Metadata -> "metadata"
        Minimal -> "minimal"
        Raw -> "raw"

instance FromJSON UsersMessagesGetFormat where
    parseJSON = parseJSONText "UsersMessagesGetFormat"

instance ToJSON UsersMessagesGetFormat where
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

-- | The format to return the draft in.
data UsersDraftsGetFormat
    = UDGFFull
      -- ^ @full@
    | UDGFMetadata
      -- ^ @metadata@
    | UDGFMinimal
      -- ^ @minimal@
    | UDGFRaw
      -- ^ @raw@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersDraftsGetFormat

instance FromText UsersDraftsGetFormat where
    fromText = \case
        "full" -> Just UDGFFull
        "metadata" -> Just UDGFMetadata
        "minimal" -> Just UDGFMinimal
        "raw" -> Just UDGFRaw
        _ -> Nothing

instance ToText UsersDraftsGetFormat where
    toText = \case
        UDGFFull -> "full"
        UDGFMetadata -> "metadata"
        UDGFMinimal -> "minimal"
        UDGFRaw -> "raw"

instance FromJSON UsersDraftsGetFormat where
    parseJSON = parseJSONText "UsersDraftsGetFormat"

instance ToJSON UsersDraftsGetFormat where
    toJSON = toJSONText

-- | Source for Gmail\'s internal date of the message.
data UsersMessagesImportInternalDateSource
    = DateHeader
      -- ^ @dateHeader@
    | ReceivedTime
      -- ^ @receivedTime@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersMessagesImportInternalDateSource

instance FromText UsersMessagesImportInternalDateSource where
    fromText = \case
        "dateHeader" -> Just DateHeader
        "receivedTime" -> Just ReceivedTime
        _ -> Nothing

instance ToText UsersMessagesImportInternalDateSource where
    toText = \case
        DateHeader -> "dateHeader"
        ReceivedTime -> "receivedTime"

instance FromJSON UsersMessagesImportInternalDateSource where
    parseJSON = parseJSONText "UsersMessagesImportInternalDateSource"

instance ToJSON UsersMessagesImportInternalDateSource where
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

-- | The format to return the messages in.
data UsersThreadsGetFormat
    = UTGFFull
      -- ^ @full@
    | UTGFMetadata
      -- ^ @metadata@
    | UTGFMinimal
      -- ^ @minimal@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersThreadsGetFormat

instance FromText UsersThreadsGetFormat where
    fromText = \case
        "full" -> Just UTGFFull
        "metadata" -> Just UTGFMetadata
        "minimal" -> Just UTGFMinimal
        _ -> Nothing

instance ToText UsersThreadsGetFormat where
    toText = \case
        UTGFFull -> "full"
        UTGFMetadata -> "metadata"
        UTGFMinimal -> "minimal"

instance FromJSON UsersThreadsGetFormat where
    parseJSON = parseJSONText "UsersThreadsGetFormat"

instance ToJSON UsersThreadsGetFormat where
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

-- | Source for Gmail\'s internal date of the message.
data UsersMessagesInsertInternalDateSource
    = UMIIDSDateHeader
      -- ^ @dateHeader@
    | UMIIDSReceivedTime
      -- ^ @receivedTime@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable UsersMessagesInsertInternalDateSource

instance FromText UsersMessagesInsertInternalDateSource where
    fromText = \case
        "dateHeader" -> Just UMIIDSDateHeader
        "receivedTime" -> Just UMIIDSReceivedTime
        _ -> Nothing

instance ToText UsersMessagesInsertInternalDateSource where
    toText = \case
        UMIIDSDateHeader -> "dateHeader"
        UMIIDSReceivedTime -> "receivedTime"

instance FromJSON UsersMessagesInsertInternalDateSource where
    parseJSON = parseJSONText "UsersMessagesInsertInternalDateSource"

instance ToJSON UsersMessagesInsertInternalDateSource where
    toJSON = toJSONText
