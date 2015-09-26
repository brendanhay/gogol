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
    -- * Resources
      Gmail
    , UsersAPI
    , HistoryAPI
    , HistoryList
    , DraftsAPI
    , DraftsList
    , DraftsGet
    , DraftsCreate
    , DraftsSend
    , DraftsDelete
    , DraftsUpdate
    , LabelsAPI
    , LabelsList
    , LabelsPatch
    , LabelsGet
    , LabelsCreate
    , LabelsDelete
    , LabelsUpdate
    , ThreadsAPI
    , ThreadsList
    , ThreadsGet
    , ThreadsTrash
    , ThreadsUntrash
    , ThreadsModify
    , ThreadsDelete
    , MessagesAPI
    , AttachmentsAPI
    , AttachmentsGet

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
import           Network.Google.Prelude

{- $resources
TODO
-}

type Gmail = UsersAPI

type UsersAPI =
     DraftsAPI :<|>
       LabelsAPI :<|>
         ThreadsAPI :<|> MessagesAPI :<|> HistoryAPI

type HistoryAPI = HistoryList

-- | Lists the history of all changes to the given mailbox. History results
-- are returned in chronological order (increasing historyId).
type HistoryList =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "history"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "startHistoryId" Word64
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "labelId" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DraftsAPI =
     DraftsGet :<|>
       DraftsCreate :<|>
         DraftsSend :<|>
           DraftsDelete :<|> DraftsUpdate :<|> DraftsList

-- | Lists the drafts in the user\'s mailbox.
type DraftsList =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "drafts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets the specified draft.
type DraftsGet =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "drafts"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "format" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new draft with the DRAFT label.
type DraftsCreate =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "drafts"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Sends the specified, existing draft to the recipients in the To, Cc, and
-- Bcc headers.
type DraftsSend =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "drafts"
       :> "send"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Immediately and permanently deletes the specified draft. Does not simply
-- trash it.
type DraftsDelete =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "drafts"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Replaces a draft\'s content.
type DraftsUpdate =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "drafts"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type LabelsAPI =
     LabelsPatch :<|>
       LabelsGet :<|>
         LabelsCreate :<|>
           LabelsDelete :<|> LabelsUpdate :<|> LabelsList

-- | Lists all labels in the user\'s mailbox.
type LabelsList =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "labels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the specified label. This method supports patch semantics.
type LabelsPatch =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "labels"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets the specified label.
type LabelsGet =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "labels"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates a new label.
type LabelsCreate =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "labels"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Immediately and permanently deletes the specified label and removes it
-- from any messages and threads that it is applied to.
type LabelsDelete =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "labels"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the specified label.
type LabelsUpdate =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "labels"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ThreadsAPI =
     ThreadsGet :<|>
       ThreadsTrash :<|>
         ThreadsUntrash :<|>
           ThreadsModify :<|> ThreadsDelete :<|> ThreadsList

-- | Lists the threads in the user\'s mailbox.
type ThreadsList =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "threads"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "q" Text
       :> QueryParam "key" Text
       :> QueryParam "includeSpamTrash" Bool
       :> QueryParam "labelIds" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets the specified thread.
type ThreadsGet =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "threads"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "format" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "metadataHeaders" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Moves the specified thread to the trash.
type ThreadsTrash =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "threads"
       :> Capture "id" Text
       :> "trash"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes the specified thread from the trash.
type ThreadsUntrash =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "threads"
       :> Capture "id" Text
       :> "untrash"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Modifies the labels applied to the thread. This applies to all messages
-- in the thread.
type ThreadsModify =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "threads"
       :> Capture "id" Text
       :> "modify"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer threads.trash instead.
type ThreadsDelete =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "threads"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type MessagesAPI = AttachmentsAPI

type AttachmentsAPI = AttachmentsGet

-- | Gets the specified message attachment.
type AttachmentsGet =
     "gmail" :> "v1" :> "users" :> Capture "userId" Text
       :> "messages"
       :> Capture "messageId" Text
       :> "attachments"
       :> Capture "id" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
