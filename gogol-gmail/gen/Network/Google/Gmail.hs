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
    -- * REST Resources

    -- ** Gmail API
      Gmail
    , gmail
    , gmailURL

    -- ** gmail.users.drafts.create
    , module Network.Google.API.Gmail.Users.Drafts.Create

    -- ** gmail.users.drafts.delete
    , module Network.Google.API.Gmail.Users.Drafts.Delete

    -- ** gmail.users.drafts.get
    , module Network.Google.API.Gmail.Users.Drafts.Get

    -- ** gmail.users.drafts.list
    , module Network.Google.API.Gmail.Users.Drafts.List

    -- ** gmail.users.drafts.send
    , module Network.Google.API.Gmail.Users.Drafts.Send

    -- ** gmail.users.drafts.update
    , module Network.Google.API.Gmail.Users.Drafts.Update

    -- ** gmail.users.history.list
    , module Network.Google.API.Gmail.Users.History.List

    -- ** gmail.users.labels.create
    , module Network.Google.API.Gmail.Users.Labels.Create

    -- ** gmail.users.labels.delete
    , module Network.Google.API.Gmail.Users.Labels.Delete

    -- ** gmail.users.labels.get
    , module Network.Google.API.Gmail.Users.Labels.Get

    -- ** gmail.users.labels.list
    , module Network.Google.API.Gmail.Users.Labels.List

    -- ** gmail.users.labels.patch
    , module Network.Google.API.Gmail.Users.Labels.Patch

    -- ** gmail.users.labels.update
    , module Network.Google.API.Gmail.Users.Labels.Update

    -- ** gmail.users.messages.attachments.get
    , module Network.Google.API.Gmail.Users.Messages.Attachments.Get

    -- ** gmail.users.threads.delete
    , module Network.Google.API.Gmail.Users.Threads.Delete

    -- ** gmail.users.threads.get
    , module Network.Google.API.Gmail.Users.Threads.Get

    -- ** gmail.users.threads.list
    , module Network.Google.API.Gmail.Users.Threads.List

    -- ** gmail.users.threads.modify
    , module Network.Google.API.Gmail.Users.Threads.Modify

    -- ** gmail.users.threads.trash
    , module Network.Google.API.Gmail.Users.Threads.Trash

    -- ** gmail.users.threads.untrash
    , module Network.Google.API.Gmail.Users.Threads.Untrash

    -- * Types

    -- ** HistoryMessageDeleted
    , HistoryMessageDeleted
    , historyMessageDeleted
    , hmdMessage

    -- ** ListLabelsResponse
    , ListLabelsResponse
    , listLabelsResponse
    , llrLabels

    -- ** HistoryLabelAdded
    , HistoryLabelAdded
    , historyLabelAdded
    , hlaLabelIds
    , hlaMessage

    -- ** MessagePart
    , MessagePart
    , messagePart
    , mpParts
    , mpBody
    , mpMimeType
    , mpHeaders
    , mpPartId
    , mpFilename

    -- ** ListThreadsResponse
    , ListThreadsResponse
    , listThreadsResponse
    , ltrNextPageToken
    , ltrResultSizeEstimate
    , ltrThreads

    -- ** MessagePartBody
    , MessagePartBody
    , messagePartBody
    , mpbSize
    , mpbData
    , mpbAttachmentId

    -- ** LabelLabelListVisibility
    , LabelLabelListVisibility (..)

    -- ** ListDraftsResponse
    , ListDraftsResponse
    , listDraftsResponse
    , ldrNextPageToken
    , ldrResultSizeEstimate
    , ldrDrafts

    -- ** ModifyMessageRequest
    , ModifyMessageRequest
    , modifyMessageRequest
    , mmrRemoveLabelIds
    , mmrAddLabelIds

    -- ** History
    , History
    , history
    , hLabelsRemoved
    , hMessagesDeleted
    , hMessagesAdded
    , hLabelsAdded
    , hId
    , hMessages

    -- ** LabelMessageListVisibility
    , LabelMessageListVisibility (..)

    -- ** Alt
    , Alt (..)

    -- ** Draft
    , Draft
    , draft
    , dId
    , dMessage

    -- ** UsersDraftsGet'Format
    , UsersDraftsGet'Format (..)

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

    -- ** ListMessagesResponse
    , ListMessagesResponse
    , listMessagesResponse
    , lmrNextPageToken
    , lmrResultSizeEstimate
    , lmrMessages

    -- ** HistoryMessageAdded
    , HistoryMessageAdded
    , historyMessageAdded
    , hmaMessage

    -- ** ModifyThreadRequest
    , ModifyThreadRequest
    , modifyThreadRequest
    , mtrRemoveLabelIds
    , mtrAddLabelIds

    -- ** WatchResponse
    , WatchResponse
    , watchResponse
    , wrExpiration
    , wrHistoryId

    -- ** LabelType
    , LabelType (..)

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

    -- ** ListHistoryResponse
    , ListHistoryResponse
    , listHistoryResponse
    , lhrNextPageToken
    , lhrHistory
    , lhrHistoryId

    -- ** WatchRequestLabelFilterAction
    , WatchRequestLabelFilterAction (..)

    -- ** UsersThreadsGet'Format
    , UsersThreadsGet'Format (..)

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

    -- ** Thread
    , Thread
    , thread
    , tSnippet
    , tHistoryId
    , tId
    , tMessages

    -- ** HistoryLabelRemoved
    , HistoryLabelRemoved
    , historyLabelRemoved
    , hlrLabelIds
    , hlrMessage
    ) where

import           Network.Google.API.Gmail.Users.Drafts.Create
import           Network.Google.API.Gmail.Users.Drafts.Delete
import           Network.Google.API.Gmail.Users.Drafts.Get
import           Network.Google.API.Gmail.Users.Drafts.List
import           Network.Google.API.Gmail.Users.Drafts.Send
import           Network.Google.API.Gmail.Users.Drafts.Update
import           Network.Google.API.Gmail.Users.History.List
import           Network.Google.API.Gmail.Users.Labels.Create
import           Network.Google.API.Gmail.Users.Labels.Delete
import           Network.Google.API.Gmail.Users.Labels.Get
import           Network.Google.API.Gmail.Users.Labels.List
import           Network.Google.API.Gmail.Users.Labels.Patch
import           Network.Google.API.Gmail.Users.Labels.Update
import           Network.Google.API.Gmail.Users.Messages.Attachments.Get
import           Network.Google.API.Gmail.Users.Threads.Delete
import           Network.Google.API.Gmail.Users.Threads.Get
import           Network.Google.API.Gmail.Users.Threads.List
import           Network.Google.API.Gmail.Users.Threads.Modify
import           Network.Google.API.Gmail.Users.Threads.Trash
import           Network.Google.API.Gmail.Users.Threads.Untrash
import           Network.Google.Gmail.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Gmail =
     UsersDraftsGetAPI :<|> UsersThreadsListAPI :<|>
       UsersThreadsDeleteAPI
       :<|> UsersDraftsSendAPI
       :<|> UsersThreadsModifyAPI
       :<|> UsersDraftsListAPI
       :<|> UsersDraftsUpdateAPI
       :<|> UsersLabelsGetAPI
       :<|> UsersMessagesAttachmentsGetAPI
       :<|> UsersLabelsDeleteAPI
       :<|> UsersDraftsCreateAPI
       :<|> UsersThreadsUntrashAPI
       :<|> UsersLabelsUpdateAPI
       :<|> UsersLabelsListAPI
       :<|> UsersLabelsCreateAPI
       :<|> UsersHistoryListAPI
       :<|> UsersThreadsTrashAPI
       :<|> UsersDraftsDeleteAPI
       :<|> UsersLabelsPatchAPI
       :<|> UsersThreadsGetAPI

gmail :: Proxy Gmail
gmail = Proxy
