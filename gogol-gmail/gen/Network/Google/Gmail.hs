-- |
-- Module      : Network.Google.Gmail
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Gmail REST API.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference>
module Network.Google.Gmail
    (
    -- * API Definition
      Gmail



    -- * Types

    -- ** Draft
    , Draft
    , draft
    , dId
    , dMessage

    -- ** History
    , History
    , history
    , hLabelsRemoved
    , hMessagesDeleted
    , hMessagesAdded
    , hLabelsAdded
    , hId
    , hMessages

    -- ** HistoryLabelAdded
    , HistoryLabelAdded
    , historyLabelAdded
    , hlaLabelIds
    , hlaMessage

    -- ** HistoryLabelRemoved
    , HistoryLabelRemoved
    , historyLabelRemoved
    , hlrLabelIds
    , hlrMessage

    -- ** HistoryMessageAdded
    , HistoryMessageAdded
    , historyMessageAdded
    , hmaMessage

    -- ** HistoryMessageDeleted
    , HistoryMessageDeleted
    , historyMessageDeleted
    , hmdMessage

    -- ** Label
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

    -- ** LabelLabelListVisibility
    , LabelLabelListVisibility (..)

    -- ** LabelMessageListVisibility
    , LabelMessageListVisibility (..)

    -- ** LabelType
    , LabelType (..)

    -- ** ListDraftsResponse
    , ListDraftsResponse
    , listDraftsResponse
    , ldrNextPageToken
    , ldrResultSizeEstimate
    , ldrDrafts

    -- ** ListHistoryResponse
    , ListHistoryResponse
    , listHistoryResponse
    , lhrNextPageToken
    , lhrHistory
    , lhrHistoryId

    -- ** ListLabelsResponse
    , ListLabelsResponse
    , listLabelsResponse
    , llrLabels

    -- ** ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrResultSizeEstimate
    , lmrMessages

    -- ** ListThreadsResponse
    , ListThreadsResponse
    , listThreadsResponse
    , ltrNextPageToken
    , ltrResultSizeEstimate
    , ltrThreads

    -- ** Message
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

    -- ** MessagePart
    , MessagePart
    , messagePart
    , mpParts
    , mpBody
    , mpMimeType
    , mpHeaders
    , mpPartId
    , mpFilename

    -- ** MessagePartBody
    , MessagePartBody
    , messagePartBody
    , mpbSize
    , mpbData
    , mpbAttachmentId

    -- ** MessagePartHeader
    , MessagePartHeader
    , messagePartHeader
    , mphValue
    , mphName

    -- ** ModifyMessageRequest
    , ModifyMessageRequest
    , modifyMessageRequest
    , mmrRemoveLabelIds
    , mmrAddLabelIds

    -- ** ModifyThreadRequest
    , ModifyThreadRequest
    , modifyThreadRequest
    , mtrRemoveLabelIds
    , mtrAddLabelIds

    -- ** Profile
    , Profile
    , profile
    , pMessagesTotal
    , pThreadsTotal
    , pHistoryId
    , pEmailAddress

    -- ** Thread
    , Thread
    , thread
    , tSnippet
    , tHistoryId
    , tId
    , tMessages

    -- ** WatchRequest
    , WatchRequest
    , watchRequest
    , wrLabelFilterAction
    , wrTopicName
    , wrLabelIds

    -- ** WatchRequestLabelFilterAction
    , WatchRequestLabelFilterAction (..)

    -- ** WatchResponse
    , WatchResponse
    , watchResponse
    , wrExpiration
    , wrHistoryId
    ) where

import           Network.Google.Gmail.Types

{- $resources
TODO
-}

type Gmail = ()

gmail :: Proxy Gmail
gmail = Proxy




