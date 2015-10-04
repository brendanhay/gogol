{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Gmail.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Gmail.Types
    (
    -- * Service URL
      gmailURL

    -- * GmailUsersThreadsGetFormat
    , GmailUsersThreadsGetFormat (..)

    -- * ModifyThreadRequest
    , ModifyThreadRequest
    , modifyThreadRequest
    , mtrRemoveLabelIds
    , mtrAddLabelIds

    -- * MessageListVisibility
    , MessageListVisibility (..)

    -- * History
    , History
    , history
    , hLabelsRemoved
    , hMessagesDeleted
    , hMessagesAdded
    , hLabelsAdded
    , hId
    , hMessages

    -- * ModifyMessageRequest
    , ModifyMessageRequest
    , modifyMessageRequest
    , mmrRemoveLabelIds
    , mmrAddLabelIds

    -- * LabelFilterAction
    , LabelFilterAction (..)

    -- * ListHistoryResponse
    , ListHistoryResponse
    , listHistoryResponse
    , lhrNextPageToken
    , lhrHistory
    , lhrHistoryId

    -- * Format
    , Format (..)

    -- * MessagePartHeader
    , MessagePartHeader
    , messagePartHeader
    , mphValue
    , mphName

    -- * Profile
    , Profile
    , profile
    , pMessagesTotal
    , pThreadsTotal
    , pHistoryId
    , pEmailAddress

    -- * HistoryMessageDeleted
    , HistoryMessageDeleted
    , historyMessageDeleted
    , hmdMessage

    -- * ListThreadsResponse
    , ListThreadsResponse
    , listThreadsResponse
    , ltrNextPageToken
    , ltrResultSizeEstimate
    , ltrThreads

    -- * HistoryLabelAdded
    , HistoryLabelAdded
    , historyLabelAdded
    , hlaLabelIds
    , hlaMessage

    -- * ListLabelsResponse
    , ListLabelsResponse
    , listLabelsResponse
    , llrLabels

    -- * MessagePart
    , MessagePart
    , messagePart
    , mpParts
    , mpBody
    , mpMimeType
    , mpHeaders
    , mpPartId
    , mpFilename

    -- * MessagePartBody
    , MessagePartBody
    , messagePartBody
    , mpbSize
    , mpbData
    , mpbAttachmentId

    -- * ListDraftsResponse
    , ListDraftsResponse
    , listDraftsResponse
    , ldrNextPageToken
    , ldrResultSizeEstimate
    , ldrDrafts

    -- * GmailUsersMessagesImportInternalDateSource
    , GmailUsersMessagesImportInternalDateSource (..)

    -- * LabelListVisibility
    , LabelListVisibility (..)

    -- * WatchResponse
    , WatchResponse
    , watchResponse
    , wrExpiration
    , wrHistoryId

    -- * Draft
    , Draft
    , draft
    , dId
    , dMessage

    -- * WatchRequest
    , WatchRequest
    , watchRequest
    , wrLabelFilterAction
    , wrTopicName
    , wrLabelIds

    -- * Type
    , Type (..)

    -- * Message
    , Message
    , message
    , mRaw
    , mSnippet
    , mSizeEstimate
    , mPayload
    , mHistoryId
    , mId
    , mLabelIds
    , mThreadId
    , mInternalDate

    -- * InternalDateSource
    , InternalDateSource (..)

    -- * Thread
    , Thread
    , thread
    , tSnippet
    , tHistoryId
    , tId
    , tMessages

    -- * Label
    , Label
    , label
    , lThreadsUnread
    , lMessageListVisibility
    , lMessagesTotal
    , lMessagesUnread
    , lName
    , lThreadsTotal
    , lLabelListVisibility
    , lId
    , lType

    -- * HistoryLabelRemoved
    , HistoryLabelRemoved
    , historyLabelRemoved
    , hlrLabelIds
    , hlrMessage

    -- * HistoryMessageAdded
    , HistoryMessageAdded
    , historyMessageAdded
    , hmaMessage

    -- * ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrResultSizeEstimate
    , lmrMessages

    -- * GmailUsersMessagesGetFormat
    , GmailUsersMessagesGetFormat (..)
    ) where

import           Network.Google.Gmail.Types.Product
import           Network.Google.Gmail.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v1' of the Gmail API.
gmailURL :: BaseUrl
gmailURL
  = BaseUrl Https
      "https://www.googleapis.com/gmail/v1/users/"
      443
