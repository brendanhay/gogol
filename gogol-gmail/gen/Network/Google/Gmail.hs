{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Gmail
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Access Gmail mailboxes including sending user email.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference>
module Network.Google.Gmail
    (
    -- * Service Configuration
      gmailService

    -- * OAuth Scopes
    , mailGoogleComScope
    , authGmailModifyScope
    , authGmailLabelsScope
    , authGmailSendScope
    , authGmailInsertScope
    , authGmailComposeScope
    , authGmailReadonlyScope

    -- * API Declaration
    , GmailAPI

    -- * Resources

    -- ** gmail.users.drafts.create
    , module Network.Google.Resource.Gmail.Users.Drafts.Create

    -- ** gmail.users.drafts.delete
    , module Network.Google.Resource.Gmail.Users.Drafts.Delete

    -- ** gmail.users.drafts.get
    , module Network.Google.Resource.Gmail.Users.Drafts.Get

    -- ** gmail.users.drafts.list
    , module Network.Google.Resource.Gmail.Users.Drafts.List

    -- ** gmail.users.drafts.send
    , module Network.Google.Resource.Gmail.Users.Drafts.Send

    -- ** gmail.users.drafts.update
    , module Network.Google.Resource.Gmail.Users.Drafts.Update

    -- ** gmail.users.getProfile
    , module Network.Google.Resource.Gmail.Users.GetProFile

    -- ** gmail.users.history.list
    , module Network.Google.Resource.Gmail.Users.History.List

    -- ** gmail.users.labels.create
    , module Network.Google.Resource.Gmail.Users.Labels.Create

    -- ** gmail.users.labels.delete
    , module Network.Google.Resource.Gmail.Users.Labels.Delete

    -- ** gmail.users.labels.get
    , module Network.Google.Resource.Gmail.Users.Labels.Get

    -- ** gmail.users.labels.list
    , module Network.Google.Resource.Gmail.Users.Labels.List

    -- ** gmail.users.labels.patch
    , module Network.Google.Resource.Gmail.Users.Labels.Patch

    -- ** gmail.users.labels.update
    , module Network.Google.Resource.Gmail.Users.Labels.Update

    -- ** gmail.users.messages.attachments.get
    , module Network.Google.Resource.Gmail.Users.Messages.Attachments.Get

    -- ** gmail.users.messages.batchDelete
    , module Network.Google.Resource.Gmail.Users.Messages.BatchDelete

    -- ** gmail.users.messages.delete
    , module Network.Google.Resource.Gmail.Users.Messages.Delete

    -- ** gmail.users.messages.get
    , module Network.Google.Resource.Gmail.Users.Messages.Get

    -- ** gmail.users.messages.import
    , module Network.Google.Resource.Gmail.Users.Messages.Import

    -- ** gmail.users.messages.insert
    , module Network.Google.Resource.Gmail.Users.Messages.Insert

    -- ** gmail.users.messages.list
    , module Network.Google.Resource.Gmail.Users.Messages.List

    -- ** gmail.users.messages.modify
    , module Network.Google.Resource.Gmail.Users.Messages.Modify

    -- ** gmail.users.messages.send
    , module Network.Google.Resource.Gmail.Users.Messages.Send

    -- ** gmail.users.messages.trash
    , module Network.Google.Resource.Gmail.Users.Messages.Trash

    -- ** gmail.users.messages.untrash
    , module Network.Google.Resource.Gmail.Users.Messages.Untrash

    -- ** gmail.users.stop
    , module Network.Google.Resource.Gmail.Users.Stop

    -- ** gmail.users.threads.delete
    , module Network.Google.Resource.Gmail.Users.Threads.Delete

    -- ** gmail.users.threads.get
    , module Network.Google.Resource.Gmail.Users.Threads.Get

    -- ** gmail.users.threads.list
    , module Network.Google.Resource.Gmail.Users.Threads.List

    -- ** gmail.users.threads.modify
    , module Network.Google.Resource.Gmail.Users.Threads.Modify

    -- ** gmail.users.threads.trash
    , module Network.Google.Resource.Gmail.Users.Threads.Trash

    -- ** gmail.users.threads.untrash
    , module Network.Google.Resource.Gmail.Users.Threads.Untrash

    -- ** gmail.users.watch
    , module Network.Google.Resource.Gmail.Users.Watch

    -- * Types

    -- ** BatchDeleteMessagesRequest
    , BatchDeleteMessagesRequest
    , batchDeleteMessagesRequest
    , bdmrIds

    -- ** UsersMessagesGetFormat
    , UsersMessagesGetFormat (..)

    -- ** ModifyThreadRequest
    , ModifyThreadRequest
    , modifyThreadRequest
    , mtrRemoveLabelIds
    , mtrAddLabelIds

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

    -- ** ProFile
    , ProFile
    , proFile
    , pfMessagesTotal
    , pfThreadsTotal
    , pfHistoryId
    , pfEmailAddress

    -- ** MessagePartHeader
    , MessagePartHeader
    , messagePartHeader
    , mphValue
    , mphName

    -- ** ListHistoryResponse
    , ListHistoryResponse
    , listHistoryResponse
    , lhrNextPageToken
    , lhrHistory
    , lhrHistoryId

    -- ** LabelType
    , LabelType (..)

    -- ** UsersDraftsGetFormat
    , UsersDraftsGetFormat (..)

    -- ** UsersMessagesImportInternalDateSource
    , UsersMessagesImportInternalDateSource (..)

    -- ** LabelMessageListVisibility
    , LabelMessageListVisibility (..)

    -- ** ListThreadsResponse
    , ListThreadsResponse
    , listThreadsResponse
    , ltrNextPageToken
    , ltrResultSizeEstimate
    , ltrThreads

    -- ** MessagePart
    , MessagePart
    , messagePart
    , mpParts
    , mpBody
    , mpMimeType
    , mpHeaders
    , mpPartId
    , mpFilename

    -- ** HistoryLabelAdded
    , HistoryLabelAdded
    , historyLabelAdded
    , hlaLabelIds
    , hlaMessage

    -- ** ListLabelsResponse
    , ListLabelsResponse
    , listLabelsResponse
    , llrLabels

    -- ** LabelLabelListVisibility
    , LabelLabelListVisibility (..)

    -- ** HistoryMessageDeleted
    , HistoryMessageDeleted
    , historyMessageDeleted
    , hmdMessage

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

    -- ** UsersThreadsGetFormat
    , UsersThreadsGetFormat (..)

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

    -- ** WatchRequestLabelFilterAction
    , WatchRequestLabelFilterAction (..)

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

    -- ** UsersMessagesInsertInternalDateSource
    , UsersMessagesInsertInternalDateSource (..)

    -- ** HistoryLabelRemoved
    , HistoryLabelRemoved
    , historyLabelRemoved
    , hlrLabelIds
    , hlrMessage

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
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Gmail.Users.Drafts.Create
import           Network.Google.Resource.Gmail.Users.Drafts.Delete
import           Network.Google.Resource.Gmail.Users.Drafts.Get
import           Network.Google.Resource.Gmail.Users.Drafts.List
import           Network.Google.Resource.Gmail.Users.Drafts.Send
import           Network.Google.Resource.Gmail.Users.Drafts.Update
import           Network.Google.Resource.Gmail.Users.GetProFile
import           Network.Google.Resource.Gmail.Users.History.List
import           Network.Google.Resource.Gmail.Users.Labels.Create
import           Network.Google.Resource.Gmail.Users.Labels.Delete
import           Network.Google.Resource.Gmail.Users.Labels.Get
import           Network.Google.Resource.Gmail.Users.Labels.List
import           Network.Google.Resource.Gmail.Users.Labels.Patch
import           Network.Google.Resource.Gmail.Users.Labels.Update
import           Network.Google.Resource.Gmail.Users.Messages.Attachments.Get
import           Network.Google.Resource.Gmail.Users.Messages.BatchDelete
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

-- | Represents the entirety of the methods and resources available for the Gmail API service.
type GmailAPI =
     UsersHistoryListResource :<|> UsersDraftsListResource
       :<|> UsersDraftsGetResource
       :<|> UsersDraftsCreateResource
       :<|> UsersDraftsSendResource
       :<|> UsersDraftsDeleteResource
       :<|> UsersDraftsUpdateResource
       :<|> UsersLabelsListResource
       :<|> UsersLabelsPatchResource
       :<|> UsersLabelsGetResource
       :<|> UsersLabelsCreateResource
       :<|> UsersLabelsDeleteResource
       :<|> UsersLabelsUpdateResource
       :<|> UsersThreadsListResource
       :<|> UsersThreadsGetResource
       :<|> UsersThreadsTrashResource
       :<|> UsersThreadsUntrashResource
       :<|> UsersThreadsModifyResource
       :<|> UsersThreadsDeleteResource
       :<|> UsersMessagesAttachmentsGetResource
       :<|> UsersMessagesInsertResource
       :<|> UsersMessagesListResource
       :<|> UsersMessagesGetResource
       :<|> UsersMessagesTrashResource
       :<|> UsersMessagesSendResource
       :<|> UsersMessagesUntrashResource
       :<|> UsersMessagesImportResource
       :<|> UsersMessagesBatchDeleteResource
       :<|> UsersMessagesModifyResource
       :<|> UsersMessagesDeleteResource
       :<|> UsersGetProFileResource
       :<|> UsersStopResource
       :<|> UsersWatchResource
