{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Gmail
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Gmail REST API.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference>
module Network.Google.Gmail
    (
    -- * API
      GmailAPI
    , gmailAPI
    , gmailURL

    -- * Service Methods

    -- * REST Resources

    -- ** GmailUsersDraftsCreate
    , module Gmail.Users.Drafts.Create

    -- ** GmailUsersDraftsDelete
    , module Gmail.Users.Drafts.Delete

    -- ** GmailUsersDraftsGet
    , module Gmail.Users.Drafts.Get

    -- ** GmailUsersDraftsList
    , module Gmail.Users.Drafts.List

    -- ** GmailUsersDraftsSend
    , module Gmail.Users.Drafts.Send

    -- ** GmailUsersDraftsUpdate
    , module Gmail.Users.Drafts.Update

    -- ** GmailUsersGetProfile
    , module Gmail.Users.GetProfile

    -- ** GmailUsersHistoryList
    , module Gmail.Users.History.List

    -- ** GmailUsersLabelsCreate
    , module Gmail.Users.Labels.Create

    -- ** GmailUsersLabelsDelete
    , module Gmail.Users.Labels.Delete

    -- ** GmailUsersLabelsGet
    , module Gmail.Users.Labels.Get

    -- ** GmailUsersLabelsList
    , module Gmail.Users.Labels.List

    -- ** GmailUsersLabelsPatch
    , module Gmail.Users.Labels.Patch

    -- ** GmailUsersLabelsUpdate
    , module Gmail.Users.Labels.Update

    -- ** GmailUsersMessagesAttachmentsGet
    , module Gmail.Users.Messages.Attachments.Get

    -- ** GmailUsersMessagesDelete
    , module Gmail.Users.Messages.Delete

    -- ** GmailUsersMessagesGet
    , module Gmail.Users.Messages.Get

    -- ** GmailUsersMessagesImport
    , module Gmail.Users.Messages.Import

    -- ** GmailUsersMessagesInsert
    , module Gmail.Users.Messages.Insert

    -- ** GmailUsersMessagesList
    , module Gmail.Users.Messages.List

    -- ** GmailUsersMessagesModify
    , module Gmail.Users.Messages.Modify

    -- ** GmailUsersMessagesSend
    , module Gmail.Users.Messages.Send

    -- ** GmailUsersMessagesTrash
    , module Gmail.Users.Messages.Trash

    -- ** GmailUsersMessagesUntrash
    , module Gmail.Users.Messages.Untrash

    -- ** GmailUsersStop
    , module Gmail.Users.Stop

    -- ** GmailUsersThreadsDelete
    , module Gmail.Users.Threads.Delete

    -- ** GmailUsersThreadsGet
    , module Gmail.Users.Threads.Get

    -- ** GmailUsersThreadsList
    , module Gmail.Users.Threads.List

    -- ** GmailUsersThreadsModify
    , module Gmail.Users.Threads.Modify

    -- ** GmailUsersThreadsTrash
    , module Gmail.Users.Threads.Trash

    -- ** GmailUsersThreadsUntrash
    , module Gmail.Users.Threads.Untrash

    -- ** GmailUsersWatch
    , module Gmail.Users.Watch

    -- * Types

    -- ** ModifyThreadRequest
    , ModifyThreadRequest
    , modifyThreadRequest
    , mtrRemoveLabelIds
    , mtrAddLabelIds

    -- ** History
    , History
    , history
    , hLabelsRemoved
    , hMessagesDeleted
    , hMessagesAdded
    , hLabelsAdded
    , hId
    , hMessages

    -- ** ModifyMessageRequest
    , ModifyMessageRequest
    , modifyMessageRequest
    , mmrRemoveLabelIds
    , mmrAddLabelIds

    -- ** ListHistoryResponse
    , ListHistoryResponse
    , listHistoryResponse
    , lhrNextPageToken
    , lhrHistory
    , lhrHistoryId

    -- ** MessagePartHeader
    , MessagePartHeader
    , messagePartHeader
    , mphValue
    , mphName

    -- ** Profile
    , Profile
    , profile
    , pMessagesTotal
    , pThreadsTotal
    , pHistoryId
    , pEmailAddress

    -- ** HistoryMessageDeleted
    , HistoryMessageDeleted
    , historyMessageDeleted
    , hmdMessage

    -- ** ListThreadsResponse
    , ListThreadsResponse
    , listThreadsResponse
    , ltrNextPageToken
    , ltrResultSizeEstimate
    , ltrThreads

    -- ** HistoryLabelAdded
    , HistoryLabelAdded
    , historyLabelAdded
    , hlaLabelIds
    , hlaMessage

    -- ** ListLabelsResponse
    , ListLabelsResponse
    , listLabelsResponse
    , llrLabels

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

    -- ** ListDraftsResponse
    , ListDraftsResponse
    , listDraftsResponse
    , ldrNextPageToken
    , ldrResultSizeEstimate
    , ldrDrafts

    -- ** WatchResponse
    , WatchResponse
    , watchResponse
    , wrExpiration
    , wrHistoryId

    -- ** Draft
    , Draft
    , draft
    , dId
    , dMessage

    -- ** WatchRequest
    , WatchRequest
    , watchRequest
    , wrLabelFilterAction
    , wrTopicName
    , wrLabelIds

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

    -- ** Thread
    , Thread
    , thread
    , tSnippet
    , tHistoryId
    , tId
    , tMessages

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

    -- ** HistoryLabelRemoved
    , HistoryLabelRemoved
    , historyLabelRemoved
    , hlrLabelIds
    , hlrMessage

    -- ** HistoryMessageAdded
    , HistoryMessageAdded
    , historyMessageAdded
    , hmaMessage

    -- ** ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrResultSizeEstimate
    , lmrMessages
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Gmail.Users.Drafts.Create
import           Network.Google.Resource.Gmail.Users.Drafts.Delete
import           Network.Google.Resource.Gmail.Users.Drafts.Get
import           Network.Google.Resource.Gmail.Users.Drafts.List
import           Network.Google.Resource.Gmail.Users.Drafts.Send
import           Network.Google.Resource.Gmail.Users.Drafts.Update
import           Network.Google.Resource.Gmail.Users.GetProfile
import           Network.Google.Resource.Gmail.Users.History.List
import           Network.Google.Resource.Gmail.Users.Labels.Create
import           Network.Google.Resource.Gmail.Users.Labels.Delete
import           Network.Google.Resource.Gmail.Users.Labels.Get
import           Network.Google.Resource.Gmail.Users.Labels.List
import           Network.Google.Resource.Gmail.Users.Labels.Patch
import           Network.Google.Resource.Gmail.Users.Labels.Update
import           Network.Google.Resource.Gmail.Users.Messages.Attachments.Get
import           Network.Google.Resource.Gmail.Users.Messages.Delete
import           Network.Google.Resource.Gmail.Users.Messages.Get
import           Network.Google.Resource.Gmail.Users.Messages.Import
import           Network.Google.Resource.Gmail.Users.Messages.Insert
import           Network.Google.Resource.Gmail.Users.Messages.List
import           Network.Google.Resource.Gmail.Users.Messages.Modify
import           Network.Google.Resource.Gmail.Users.Messages.Send
import           Network.Google.Resource.Gmail.Users.Messages.Trash
import           Network.Google.Resource.Gmail.Users.Messages.Untrash
import           Network.Google.Resource.Gmail.Users.Stop
import           Network.Google.Resource.Gmail.Users.Threads.Delete
import           Network.Google.Resource.Gmail.Users.Threads.Get
import           Network.Google.Resource.Gmail.Users.Threads.List
import           Network.Google.Resource.Gmail.Users.Threads.Modify
import           Network.Google.Resource.Gmail.Users.Threads.Trash
import           Network.Google.Resource.Gmail.Users.Threads.Untrash
import           Network.Google.Resource.Gmail.Users.Watch

{- $resources
TODO
-}

type GmailAPI = Users

gmailAPI :: Proxy GmailAPI
gmailAPI = Proxy
