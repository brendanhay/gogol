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
    , gmailSettingsBasicScope
    , mailGoogleComScope
    , gmailModifyScope
    , gmailLabelsScope
    , gmailSettingsSharingScope
    , gmailSendScope
    , gmailInsertScope
    , gmailComposeScope
    , gmailReadOnlyScope

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

    -- ** gmail.users.settings.filters.create
    , module Network.Google.Resource.Gmail.Users.Settings.Filters.Create

    -- ** gmail.users.settings.filters.delete
    , module Network.Google.Resource.Gmail.Users.Settings.Filters.Delete

    -- ** gmail.users.settings.filters.get
    , module Network.Google.Resource.Gmail.Users.Settings.Filters.Get

    -- ** gmail.users.settings.filters.list
    , module Network.Google.Resource.Gmail.Users.Settings.Filters.List

    -- ** gmail.users.settings.forwardingAddresses.create
    , module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Create

    -- ** gmail.users.settings.forwardingAddresses.delete
    , module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Delete

    -- ** gmail.users.settings.forwardingAddresses.get
    , module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Get

    -- ** gmail.users.settings.forwardingAddresses.list
    , module Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.List

    -- ** gmail.users.settings.getAutoForwarding
    , module Network.Google.Resource.Gmail.Users.Settings.GetAutoForwarding

    -- ** gmail.users.settings.getImap
    , module Network.Google.Resource.Gmail.Users.Settings.GetImap

    -- ** gmail.users.settings.getPop
    , module Network.Google.Resource.Gmail.Users.Settings.GetPop

    -- ** gmail.users.settings.getVacation
    , module Network.Google.Resource.Gmail.Users.Settings.GetVacation

    -- ** gmail.users.settings.sendAs.create
    , module Network.Google.Resource.Gmail.Users.Settings.SendAs.Create

    -- ** gmail.users.settings.sendAs.delete
    , module Network.Google.Resource.Gmail.Users.Settings.SendAs.Delete

    -- ** gmail.users.settings.sendAs.get
    , module Network.Google.Resource.Gmail.Users.Settings.SendAs.Get

    -- ** gmail.users.settings.sendAs.list
    , module Network.Google.Resource.Gmail.Users.Settings.SendAs.List

    -- ** gmail.users.settings.sendAs.patch
    , module Network.Google.Resource.Gmail.Users.Settings.SendAs.Patch

    -- ** gmail.users.settings.sendAs.update
    , module Network.Google.Resource.Gmail.Users.Settings.SendAs.Update

    -- ** gmail.users.settings.sendAs.verify
    , module Network.Google.Resource.Gmail.Users.Settings.SendAs.Verify

    -- ** gmail.users.settings.updateAutoForwarding
    , module Network.Google.Resource.Gmail.Users.Settings.UpdateAutoForwarding

    -- ** gmail.users.settings.updateImap
    , module Network.Google.Resource.Gmail.Users.Settings.UpdateImap

    -- ** gmail.users.settings.updatePop
    , module Network.Google.Resource.Gmail.Users.Settings.UpdatePop

    -- ** gmail.users.settings.updateVacation
    , module Network.Google.Resource.Gmail.Users.Settings.UpdateVacation

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

    -- ** FilterCriteriaSizeComparison
    , FilterCriteriaSizeComparison (..)

    -- ** UsersMessagesGetFormat
    , UsersMessagesGetFormat (..)

    -- ** ModifyThreadRequest
    , ModifyThreadRequest
    , modifyThreadRequest
    , mtrRemoveLabelIds
    , mtrAddLabelIds

    -- ** ListFiltersResponse
    , ListFiltersResponse
    , listFiltersResponse
    , lfrFilter

    -- ** ModifyMessageRequest
    , ModifyMessageRequest
    , modifyMessageRequest
    , mmrRemoveLabelIds
    , mmrAddLabelIds

    -- ** ListForwardingAddressesResponse
    , ListForwardingAddressesResponse
    , listForwardingAddressesResponse
    , lfarForwardingAddresses

    -- ** PopSettings
    , PopSettings
    , popSettings
    , psAccessWindow
    , psDisPosition

    -- ** PopSettingsAccessWindow
    , PopSettingsAccessWindow (..)

    -- ** History
    , History
    , history
    , hLabelsRemoved
    , hMessagesDeleted
    , hMessagesAdded
    , hLabelsAdded
    , hId
    , hMessages

    -- ** ForwardingAddressVerificationStatus
    , ForwardingAddressVerificationStatus (..)

    -- ** FilterCriteria
    , FilterCriteria
    , filterCriteria
    , fcSizeComparison
    , fcSubject
    , fcSize
    , fcExcludeChats
    , fcTo
    , fcFrom
    , fcQuery
    , fcNegatedQuery
    , fcHasAttachment

    -- ** ProFile
    , ProFile
    , proFile
    , pfMessagesTotal
    , pfThreadsTotal
    , pfHistoryId
    , pfEmailAddress

    -- ** AutoForwardingDisPosition
    , AutoForwardingDisPosition (..)

    -- ** MessagePartHeader
    , MessagePartHeader
    , messagePartHeader
    , mphValue
    , mphName

    -- ** SendAsVerificationStatus
    , SendAsVerificationStatus (..)

    -- ** ListHistoryResponse
    , ListHistoryResponse
    , listHistoryResponse
    , lhrNextPageToken
    , lhrHistory
    , lhrHistoryId

    -- ** SendAs
    , SendAs
    , sendAs
    , saSignature
    , saReplyToAddress
    , saTreatAsAlias
    , saSendAsEmail
    , saDisplayName
    , saVerificationStatus
    , saSmtpMsa
    , saIsPrimary
    , saIsDefault

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

    -- ** VacationSettings
    , VacationSettings
    , vacationSettings
    , vsEnableAutoReply
    , vsResponseBodyPlainText
    , vsRestrictToDomain
    , vsStartTime
    , vsResponseBodyHTML
    , vsRestrictToContacts
    , vsResponseSubject
    , vsEndTime

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

    -- ** AutoForwarding
    , AutoForwarding
    , autoForwarding
    , afEnabled
    , afDisPosition
    , afEmailAddress

    -- ** ListDraftsResponse
    , ListDraftsResponse
    , listDraftsResponse
    , ldrNextPageToken
    , ldrResultSizeEstimate
    , ldrDrafts

    -- ** ListSendAsResponse
    , ListSendAsResponse
    , listSendAsResponse
    , lsarSendAs

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

    -- ** SmtpMsa
    , SmtpMsa
    , smtpMsa
    , smSecurityMode
    , smUsername
    , smPassword
    , smHost
    , smPort

    -- ** ForwardingAddress
    , ForwardingAddress
    , forwardingAddress
    , faForwardingEmail
    , faVerificationStatus

    -- ** PopSettingsDisPosition
    , PopSettingsDisPosition (..)

    -- ** Filter
    , Filter
    , filter'
    , fAction
    , fId
    , fCriteria

    -- ** WatchRequest
    , WatchRequest
    , watchRequest
    , wrLabelFilterAction
    , wrTopicName
    , wrLabelIds

    -- ** WatchRequestLabelFilterAction
    , WatchRequestLabelFilterAction (..)

    -- ** ImapSettings
    , ImapSettings
    , imapSettings
    , isEnabled
    , isExpungeBehavior
    , isAutoExpunge
    , isMaxFolderSize

    -- ** ImapSettingsExpungeBehavior
    , ImapSettingsExpungeBehavior (..)

    -- ** SmtpMsaSecurityMode
    , SmtpMsaSecurityMode (..)

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

    -- ** FilterAction
    , FilterAction
    , filterAction
    , faForward
    , faRemoveLabelIds
    , faAddLabelIds

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
import           Network.Google.Resource.Gmail.Users.Settings.Filters.Create
import           Network.Google.Resource.Gmail.Users.Settings.Filters.Delete
import           Network.Google.Resource.Gmail.Users.Settings.Filters.Get
import           Network.Google.Resource.Gmail.Users.Settings.Filters.List
import           Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Create
import           Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Delete
import           Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.Get
import           Network.Google.Resource.Gmail.Users.Settings.ForwardingAddresses.List
import           Network.Google.Resource.Gmail.Users.Settings.GetAutoForwarding
import           Network.Google.Resource.Gmail.Users.Settings.GetImap
import           Network.Google.Resource.Gmail.Users.Settings.GetPop
import           Network.Google.Resource.Gmail.Users.Settings.GetVacation
import           Network.Google.Resource.Gmail.Users.Settings.SendAs.Create
import           Network.Google.Resource.Gmail.Users.Settings.SendAs.Delete
import           Network.Google.Resource.Gmail.Users.Settings.SendAs.Get
import           Network.Google.Resource.Gmail.Users.Settings.SendAs.List
import           Network.Google.Resource.Gmail.Users.Settings.SendAs.Patch
import           Network.Google.Resource.Gmail.Users.Settings.SendAs.Update
import           Network.Google.Resource.Gmail.Users.Settings.SendAs.Verify
import           Network.Google.Resource.Gmail.Users.Settings.UpdateAutoForwarding
import           Network.Google.Resource.Gmail.Users.Settings.UpdateImap
import           Network.Google.Resource.Gmail.Users.Settings.UpdatePop
import           Network.Google.Resource.Gmail.Users.Settings.UpdateVacation
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
     UsersHistoryListResource :<|>
       UsersSettingsForwardingAddressesListResource
       :<|> UsersSettingsForwardingAddressesGetResource
       :<|> UsersSettingsForwardingAddressesCreateResource
       :<|> UsersSettingsForwardingAddressesDeleteResource
       :<|> UsersSettingsFiltersListResource
       :<|> UsersSettingsFiltersGetResource
       :<|> UsersSettingsFiltersCreateResource
       :<|> UsersSettingsFiltersDeleteResource
       :<|> UsersSettingsSendAsVerifyResource
       :<|> UsersSettingsSendAsListResource
       :<|> UsersSettingsSendAsPatchResource
       :<|> UsersSettingsSendAsGetResource
       :<|> UsersSettingsSendAsCreateResource
       :<|> UsersSettingsSendAsDeleteResource
       :<|> UsersSettingsSendAsUpdateResource
       :<|> UsersSettingsUpdateImapResource
       :<|> UsersSettingsGetVacationResource
       :<|> UsersSettingsGetAutoForwardingResource
       :<|> UsersSettingsUpdateAutoForwardingResource
       :<|> UsersSettingsUpdateVacationResource
       :<|> UsersSettingsGetImapResource
       :<|> UsersSettingsUpdatePopResource
       :<|> UsersSettingsGetPopResource
       :<|> UsersDraftsListResource
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
