{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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

-- | The visibility of the label in the message list in the Gmail web
-- interface.
data LabelMessageListVisibility
    = LMLVHide
      -- ^ @hide@
    | LMLVShow
      -- ^ @show@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable LabelMessageListVisibility

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

-- | Filtering behavior of labelIds list specified.
data WatchRequestLabelFilterAction
    = WRLFAExclude
      -- ^ @exclude@
    | WRLFAInclude
      -- ^ @include@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable WatchRequestLabelFilterAction
