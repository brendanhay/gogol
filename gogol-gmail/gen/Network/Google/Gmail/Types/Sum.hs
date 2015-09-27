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

-- | The visibility of the label in the label list in the Gmail web
-- interface.
data LabelLabelListVisibility
    = LLLVLabelHide
      -- ^ @labelHide@
    | LLLVLabelShow
      -- ^ @labelShow@
    | LLLVLabelShowIfUnread
      -- ^ @labelShowIfUnread@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelLabelListVisibility

instance FromText LabelLabelListVisibility where
    fromText = \case
        "labelHide" -> Just LLLVLabelHide
        "labelShow" -> Just LLLVLabelShow
        "labelShowIfUnread" -> Just LLLVLabelShowIfUnread
        _ -> Nothing

instance ToText LabelLabelListVisibility where
    toText = \case
        LLLVLabelHide -> "labelHide"
        LLLVLabelShow -> "labelShow"
        LLLVLabelShowIfUnread -> "labelShowIfUnread"

instance FromJSON LabelLabelListVisibility where
    parseJSON = parseJSONText "LabelLabelListVisibility"

instance ToJSON LabelLabelListVisibility where
    toJSON = toJSONText

-- | The visibility of the label in the message list in the Gmail web
-- interface.
data LabelMessageListVisibility
    = LMLVHide
      -- ^ @hide@
    | LMLVShow
      -- ^ @show@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelMessageListVisibility

instance FromText LabelMessageListVisibility where
    fromText = \case
        "hide" -> Just LMLVHide
        "show" -> Just LMLVShow
        _ -> Nothing

instance ToText LabelMessageListVisibility where
    toText = \case
        LMLVHide -> "hide"
        LMLVShow -> "show"

instance FromJSON LabelMessageListVisibility where
    parseJSON = parseJSONText "LabelMessageListVisibility"

instance ToJSON LabelMessageListVisibility where
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
    = LTSystem
      -- ^ @system@
    | LTUser
      -- ^ @user@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelType

instance FromText LabelType where
    fromText = \case
        "system" -> Just LTSystem
        "user" -> Just LTUser
        _ -> Nothing

instance ToText LabelType where
    toText = \case
        LTSystem -> "system"
        LTUser -> "user"

instance FromJSON LabelType where
    parseJSON = parseJSONText "LabelType"

instance ToJSON LabelType where
    toJSON = toJSONText

-- | Filtering behavior of labelIds list specified.
data WatchRequestLabelFilterAction
    = WRLFAExclude
      -- ^ @exclude@
    | WRLFAInclude
      -- ^ @include@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WatchRequestLabelFilterAction

instance FromText WatchRequestLabelFilterAction where
    fromText = \case
        "exclude" -> Just WRLFAExclude
        "include" -> Just WRLFAInclude
        _ -> Nothing

instance ToText WatchRequestLabelFilterAction where
    toText = \case
        WRLFAExclude -> "exclude"
        WRLFAInclude -> "include"

instance FromJSON WatchRequestLabelFilterAction where
    parseJSON = parseJSONText "WatchRequestLabelFilterAction"

instance ToJSON WatchRequestLabelFilterAction where
    toJSON = toJSONText
