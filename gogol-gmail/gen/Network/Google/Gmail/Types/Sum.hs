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

-- | The visibility of the label in the message list in the Gmail web
-- interface.
data MessageListVisibility
    = Hide
      -- ^ @hide@
    | Show
      -- ^ @show@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable MessageListVisibility

instance FromText MessageListVisibility where
    fromText = \case
        "hide" -> Just Hide
        "show" -> Just Show
        _ -> Nothing

instance ToText MessageListVisibility where
    toText = \case
        Hide -> "hide"
        Show -> "show"

instance FromJSON MessageListVisibility where
    parseJSON = parseJSONText "MessageListVisibility"

instance ToJSON MessageListVisibility where
    toJSON = toJSONText

-- | Filtering behavior of labelIds list specified.
data LabelFilterAction
    = Exclude
      -- ^ @exclude@
    | Include
      -- ^ @include@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelFilterAction

instance FromText LabelFilterAction where
    fromText = \case
        "exclude" -> Just Exclude
        "include" -> Just Include
        _ -> Nothing

instance ToText LabelFilterAction where
    toText = \case
        Exclude -> "exclude"
        Include -> "include"

instance FromJSON LabelFilterAction where
    parseJSON = parseJSONText "LabelFilterAction"

instance ToJSON LabelFilterAction where
    toJSON = toJSONText

-- | The format to return the draft in.
data Format
    = FFull
      -- ^ @full@
    | FMetadata
      -- ^ @metadata@
    | FMinimal
      -- ^ @minimal@
    | FRaw
      -- ^ @raw@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Format

instance FromText Format where
    fromText = \case
        "full" -> Just FFull
        "metadata" -> Just FMetadata
        "minimal" -> Just FMinimal
        "raw" -> Just FRaw
        _ -> Nothing

instance ToText Format where
    toText = \case
        FFull -> "full"
        FMetadata -> "metadata"
        FMinimal -> "minimal"
        FRaw -> "raw"

instance FromJSON Format where
    parseJSON = parseJSONText "Format"

instance ToJSON Format where
    toJSON = toJSONText

-- | Source for Gmail\'s internal date of the message.
data GmailUsersMessagesImportInternalDateSource
    = DateHeader
      -- ^ @dateHeader@
    | ReceivedTime
      -- ^ @receivedTime@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable GmailUsersMessagesImportInternalDateSource

instance FromText GmailUsersMessagesImportInternalDateSource where
    fromText = \case
        "dateHeader" -> Just DateHeader
        "receivedTime" -> Just ReceivedTime
        _ -> Nothing

instance ToText GmailUsersMessagesImportInternalDateSource where
    toText = \case
        DateHeader -> "dateHeader"
        ReceivedTime -> "receivedTime"

instance FromJSON GmailUsersMessagesImportInternalDateSource where
    parseJSON = parseJSONText "GmailUsersMessagesImportInternalDateSource"

instance ToJSON GmailUsersMessagesImportInternalDateSource where
    toJSON = toJSONText

-- | The visibility of the label in the label list in the Gmail web
-- interface.
data LabelListVisibility
    = LabelHide
      -- ^ @labelHide@
    | LabelShow
      -- ^ @labelShow@
    | LabelShowIfUnread
      -- ^ @labelShowIfUnread@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelListVisibility

instance FromText LabelListVisibility where
    fromText = \case
        "labelHide" -> Just LabelHide
        "labelShow" -> Just LabelShow
        "labelShowIfUnread" -> Just LabelShowIfUnread
        _ -> Nothing

instance ToText LabelListVisibility where
    toText = \case
        LabelHide -> "labelHide"
        LabelShow -> "labelShow"
        LabelShowIfUnread -> "labelShowIfUnread"

instance FromJSON LabelListVisibility where
    parseJSON = parseJSONText "LabelListVisibility"

instance ToJSON LabelListVisibility where
    toJSON = toJSONText

-- | The owner type for the label. User labels are created by the user and
-- can be modified and deleted by the user and can be applied to any
-- message or thread. System labels are internally created and cannot be
-- added, modified, or deleted. System labels may be able to be applied to
-- or removed from messages and threads under some circumstances but this
-- is not guaranteed. For example, users can apply and remove the INBOX and
-- UNREAD labels from messages and threads, but cannot apply or remove the
-- DRAFTS or SENT labels from messages or threads.
data Type
    = System
      -- ^ @system@
    | User
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Type

instance FromText Type where
    fromText = \case
        "system" -> Just System
        "user" -> Just User
        _ -> Nothing

instance ToText Type where
    toText = \case
        System -> "system"
        User -> "user"

instance FromJSON Type where
    parseJSON = parseJSONText "Type"

instance ToJSON Type where
    toJSON = toJSONText

-- | Source for Gmail\'s internal date of the message.
data InternalDateSource
    = IDSDateHeader
      -- ^ @dateHeader@
    | IDSReceivedTime
      -- ^ @receivedTime@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable InternalDateSource

instance FromText InternalDateSource where
    fromText = \case
        "dateHeader" -> Just IDSDateHeader
        "receivedTime" -> Just IDSReceivedTime
        _ -> Nothing

instance ToText InternalDateSource where
    toText = \case
        IDSDateHeader -> "dateHeader"
        IDSReceivedTime -> "receivedTime"

instance FromJSON InternalDateSource where
    parseJSON = parseJSONText "InternalDateSource"

instance ToJSON InternalDateSource where
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
