{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Gmail.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersMessagesGetFormat

instance FromHttpApiData UsersMessagesGetFormat where
    parseQueryParam = \case
        "full" -> Right Full
        "metadata" -> Right Metadata
        "minimal" -> Right Minimal
        "raw" -> Right Raw
        x -> Left ("Unable to parse UsersMessagesGetFormat from: " <> x)

instance ToHttpApiData UsersMessagesGetFormat where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LabelType

instance FromHttpApiData LabelType where
    parseQueryParam = \case
        "system" -> Right System
        "user" -> Right User
        x -> Left ("Unable to parse LabelType from: " <> x)

instance ToHttpApiData LabelType where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersDraftsGetFormat

instance FromHttpApiData UsersDraftsGetFormat where
    parseQueryParam = \case
        "full" -> Right UDGFFull
        "metadata" -> Right UDGFMetadata
        "minimal" -> Right UDGFMinimal
        "raw" -> Right UDGFRaw
        x -> Left ("Unable to parse UsersDraftsGetFormat from: " <> x)

instance ToHttpApiData UsersDraftsGetFormat where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersMessagesImportInternalDateSource

instance FromHttpApiData UsersMessagesImportInternalDateSource where
    parseQueryParam = \case
        "dateHeader" -> Right DateHeader
        "receivedTime" -> Right ReceivedTime
        x -> Left ("Unable to parse UsersMessagesImportInternalDateSource from: " <> x)

instance ToHttpApiData UsersMessagesImportInternalDateSource where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LabelMessageListVisibility

instance FromHttpApiData LabelMessageListVisibility where
    parseQueryParam = \case
        "hide" -> Right Hide
        "show" -> Right Show
        x -> Left ("Unable to parse LabelMessageListVisibility from: " <> x)

instance ToHttpApiData LabelMessageListVisibility where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LabelLabelListVisibility

instance FromHttpApiData LabelLabelListVisibility where
    parseQueryParam = \case
        "labelHide" -> Right LabelHide
        "labelShow" -> Right LabelShow
        "labelShowIfUnread" -> Right LabelShowIfUnread
        x -> Left ("Unable to parse LabelLabelListVisibility from: " <> x)

instance ToHttpApiData LabelLabelListVisibility where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersThreadsGetFormat

instance FromHttpApiData UsersThreadsGetFormat where
    parseQueryParam = \case
        "full" -> Right UTGFFull
        "metadata" -> Right UTGFMetadata
        "minimal" -> Right UTGFMinimal
        x -> Left ("Unable to parse UsersThreadsGetFormat from: " <> x)

instance ToHttpApiData UsersThreadsGetFormat where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WatchRequestLabelFilterAction

instance FromHttpApiData WatchRequestLabelFilterAction where
    parseQueryParam = \case
        "exclude" -> Right Exclude
        "include" -> Right Include
        x -> Left ("Unable to parse WatchRequestLabelFilterAction from: " <> x)

instance ToHttpApiData WatchRequestLabelFilterAction where
    toQueryParam = \case
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
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersMessagesInsertInternalDateSource

instance FromHttpApiData UsersMessagesInsertInternalDateSource where
    parseQueryParam = \case
        "dateHeader" -> Right UMIIDSDateHeader
        "receivedTime" -> Right UMIIDSReceivedTime
        x -> Left ("Unable to parse UsersMessagesInsertInternalDateSource from: " <> x)

instance ToHttpApiData UsersMessagesInsertInternalDateSource where
    toQueryParam = \case
        UMIIDSDateHeader -> "dateHeader"
        UMIIDSReceivedTime -> "receivedTime"

instance FromJSON UsersMessagesInsertInternalDateSource where
    parseJSON = parseJSONText "UsersMessagesInsertInternalDateSource"

instance ToJSON UsersMessagesInsertInternalDateSource where
    toJSON = toJSONText
