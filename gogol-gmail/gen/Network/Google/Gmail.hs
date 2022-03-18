{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Gmail
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Gmail API lets you view and manage Gmail mailbox data like threads, messages, and labels.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference>
module Network.Google.Gmail
  ( -- * Configuration
    gmailService,

    -- * OAuth Scopes
    mailGoogleComScope,
    gmailAddonsCurrentActionComposeScope,
    gmailAddonsCurrentMessageActionScope,
    gmailAddonsCurrentMessageMetadataScope,
    gmailAddonsCurrentMessageReadOnlyScope,
    gmailComposeScope,
    gmailInsertScope,
    gmailLabelsScope,
    gmailMetadataScope,
    gmailModifyScope,
    gmailReadOnlyScope,
    gmailSendScope,
    gmailSettingsBasicScope,
    gmailSettingsSharingScope,

    -- * Resources

    -- ** gmail.users.drafts.create
    GmailUsersDraftsCreateResource,
    newGmailUsersDraftsCreate,
    GmailUsersDraftsCreate,

    -- ** gmail.users.drafts.delete
    GmailUsersDraftsDeleteResource,
    newGmailUsersDraftsDelete,
    GmailUsersDraftsDelete,

    -- ** gmail.users.drafts.get
    GmailUsersDraftsGetResource,
    newGmailUsersDraftsGet,
    GmailUsersDraftsGet,

    -- ** gmail.users.drafts.list
    GmailUsersDraftsListResource,
    newGmailUsersDraftsList,
    GmailUsersDraftsList,

    -- ** gmail.users.drafts.send
    GmailUsersDraftsSendResource,
    newGmailUsersDraftsSend,
    GmailUsersDraftsSend,

    -- ** gmail.users.drafts.update
    GmailUsersDraftsUpdateResource,
    newGmailUsersDraftsUpdate,
    GmailUsersDraftsUpdate,

    -- ** gmail.users.getProfile
    GmailUsersGetProfileResource,
    newGmailUsersGetProfile,
    GmailUsersGetProfile,

    -- ** gmail.users.history.list
    GmailUsersHistoryListResource,
    newGmailUsersHistoryList,
    GmailUsersHistoryList,

    -- ** gmail.users.labels.create
    GmailUsersLabelsCreateResource,
    newGmailUsersLabelsCreate,
    GmailUsersLabelsCreate,

    -- ** gmail.users.labels.delete
    GmailUsersLabelsDeleteResource,
    newGmailUsersLabelsDelete,
    GmailUsersLabelsDelete,

    -- ** gmail.users.labels.get
    GmailUsersLabelsGetResource,
    newGmailUsersLabelsGet,
    GmailUsersLabelsGet,

    -- ** gmail.users.labels.list
    GmailUsersLabelsListResource,
    newGmailUsersLabelsList,
    GmailUsersLabelsList,

    -- ** gmail.users.labels.patch
    GmailUsersLabelsPatchResource,
    newGmailUsersLabelsPatch,
    GmailUsersLabelsPatch,

    -- ** gmail.users.labels.update
    GmailUsersLabelsUpdateResource,
    newGmailUsersLabelsUpdate,
    GmailUsersLabelsUpdate,

    -- ** gmail.users.messages.attachments.get
    GmailUsersMessagesAttachmentsGetResource,
    newGmailUsersMessagesAttachmentsGet,
    GmailUsersMessagesAttachmentsGet,

    -- ** gmail.users.messages.batchDelete
    GmailUsersMessagesBatchDeleteResource,
    newGmailUsersMessagesBatchDelete,
    GmailUsersMessagesBatchDelete,

    -- ** gmail.users.messages.batchModify
    GmailUsersMessagesBatchModifyResource,
    newGmailUsersMessagesBatchModify,
    GmailUsersMessagesBatchModify,

    -- ** gmail.users.messages.delete
    GmailUsersMessagesDeleteResource,
    newGmailUsersMessagesDelete,
    GmailUsersMessagesDelete,

    -- ** gmail.users.messages.get
    GmailUsersMessagesGetResource,
    newGmailUsersMessagesGet,
    GmailUsersMessagesGet,

    -- ** gmail.users.messages.import
    GmailUsersMessagesImportResource,
    newGmailUsersMessagesImport,
    GmailUsersMessagesImport,

    -- ** gmail.users.messages.insert
    GmailUsersMessagesInsertResource,
    newGmailUsersMessagesInsert,
    GmailUsersMessagesInsert,

    -- ** gmail.users.messages.list
    GmailUsersMessagesListResource,
    newGmailUsersMessagesList,
    GmailUsersMessagesList,

    -- ** gmail.users.messages.modify
    GmailUsersMessagesModifyResource,
    newGmailUsersMessagesModify,
    GmailUsersMessagesModify,

    -- ** gmail.users.messages.send
    GmailUsersMessagesSendResource,
    newGmailUsersMessagesSend,
    GmailUsersMessagesSend,

    -- ** gmail.users.messages.trash
    GmailUsersMessagesTrashResource,
    newGmailUsersMessagesTrash,
    GmailUsersMessagesTrash,

    -- ** gmail.users.messages.untrash
    GmailUsersMessagesUntrashResource,
    newGmailUsersMessagesUntrash,
    GmailUsersMessagesUntrash,

    -- ** gmail.users.settings.delegates.create
    GmailUsersSettingsDelegatesCreateResource,
    newGmailUsersSettingsDelegatesCreate,
    GmailUsersSettingsDelegatesCreate,

    -- ** gmail.users.settings.delegates.delete
    GmailUsersSettingsDelegatesDeleteResource,
    newGmailUsersSettingsDelegatesDelete,
    GmailUsersSettingsDelegatesDelete,

    -- ** gmail.users.settings.delegates.get
    GmailUsersSettingsDelegatesGetResource,
    newGmailUsersSettingsDelegatesGet,
    GmailUsersSettingsDelegatesGet,

    -- ** gmail.users.settings.delegates.list
    GmailUsersSettingsDelegatesListResource,
    newGmailUsersSettingsDelegatesList,
    GmailUsersSettingsDelegatesList,

    -- ** gmail.users.settings.filters.create
    GmailUsersSettingsFiltersCreateResource,
    newGmailUsersSettingsFiltersCreate,
    GmailUsersSettingsFiltersCreate,

    -- ** gmail.users.settings.filters.delete
    GmailUsersSettingsFiltersDeleteResource,
    newGmailUsersSettingsFiltersDelete,
    GmailUsersSettingsFiltersDelete,

    -- ** gmail.users.settings.filters.get
    GmailUsersSettingsFiltersGetResource,
    newGmailUsersSettingsFiltersGet,
    GmailUsersSettingsFiltersGet,

    -- ** gmail.users.settings.filters.list
    GmailUsersSettingsFiltersListResource,
    newGmailUsersSettingsFiltersList,
    GmailUsersSettingsFiltersList,

    -- ** gmail.users.settings.forwardingAddresses.create
    GmailUsersSettingsForwardingAddressesCreateResource,
    newGmailUsersSettingsForwardingAddressesCreate,
    GmailUsersSettingsForwardingAddressesCreate,

    -- ** gmail.users.settings.forwardingAddresses.delete
    GmailUsersSettingsForwardingAddressesDeleteResource,
    newGmailUsersSettingsForwardingAddressesDelete,
    GmailUsersSettingsForwardingAddressesDelete,

    -- ** gmail.users.settings.forwardingAddresses.get
    GmailUsersSettingsForwardingAddressesGetResource,
    newGmailUsersSettingsForwardingAddressesGet,
    GmailUsersSettingsForwardingAddressesGet,

    -- ** gmail.users.settings.forwardingAddresses.list
    GmailUsersSettingsForwardingAddressesListResource,
    newGmailUsersSettingsForwardingAddressesList,
    GmailUsersSettingsForwardingAddressesList,

    -- ** gmail.users.settings.getAutoForwarding
    GmailUsersSettingsGetAutoForwardingResource,
    newGmailUsersSettingsGetAutoForwarding,
    GmailUsersSettingsGetAutoForwarding,

    -- ** gmail.users.settings.getImap
    GmailUsersSettingsGetImapResource,
    newGmailUsersSettingsGetImap,
    GmailUsersSettingsGetImap,

    -- ** gmail.users.settings.getLanguage
    GmailUsersSettingsGetLanguageResource,
    newGmailUsersSettingsGetLanguage,
    GmailUsersSettingsGetLanguage,

    -- ** gmail.users.settings.getPop
    GmailUsersSettingsGetPopResource,
    newGmailUsersSettingsGetPop,
    GmailUsersSettingsGetPop,

    -- ** gmail.users.settings.getVacation
    GmailUsersSettingsGetVacationResource,
    newGmailUsersSettingsGetVacation,
    GmailUsersSettingsGetVacation,

    -- ** gmail.users.settings.sendAs.create
    GmailUsersSettingsSendAsCreateResource,
    newGmailUsersSettingsSendAsCreate,
    GmailUsersSettingsSendAsCreate,

    -- ** gmail.users.settings.sendAs.delete
    GmailUsersSettingsSendAsDeleteResource,
    newGmailUsersSettingsSendAsDelete,
    GmailUsersSettingsSendAsDelete,

    -- ** gmail.users.settings.sendAs.get
    GmailUsersSettingsSendAsGetResource,
    newGmailUsersSettingsSendAsGet,
    GmailUsersSettingsSendAsGet,

    -- ** gmail.users.settings.sendAs.list
    GmailUsersSettingsSendAsListResource,
    newGmailUsersSettingsSendAsList,
    GmailUsersSettingsSendAsList,

    -- ** gmail.users.settings.sendAs.patch
    GmailUsersSettingsSendAsPatchResource,
    newGmailUsersSettingsSendAsPatch,
    GmailUsersSettingsSendAsPatch,

    -- ** gmail.users.settings.sendAs.smimeInfo.delete
    GmailUsersSettingsSendAsSmimeInfoDeleteResource,
    newGmailUsersSettingsSendAsSmimeInfoDelete,
    GmailUsersSettingsSendAsSmimeInfoDelete,

    -- ** gmail.users.settings.sendAs.smimeInfo.get
    GmailUsersSettingsSendAsSmimeInfoGetResource,
    newGmailUsersSettingsSendAsSmimeInfoGet,
    GmailUsersSettingsSendAsSmimeInfoGet,

    -- ** gmail.users.settings.sendAs.smimeInfo.insert
    GmailUsersSettingsSendAsSmimeInfoInsertResource,
    newGmailUsersSettingsSendAsSmimeInfoInsert,
    GmailUsersSettingsSendAsSmimeInfoInsert,

    -- ** gmail.users.settings.sendAs.smimeInfo.list
    GmailUsersSettingsSendAsSmimeInfoListResource,
    newGmailUsersSettingsSendAsSmimeInfoList,
    GmailUsersSettingsSendAsSmimeInfoList,

    -- ** gmail.users.settings.sendAs.smimeInfo.setDefault
    GmailUsersSettingsSendAsSmimeInfoSetDefaultResource,
    newGmailUsersSettingsSendAsSmimeInfoSetDefault,
    GmailUsersSettingsSendAsSmimeInfoSetDefault,

    -- ** gmail.users.settings.sendAs.update
    GmailUsersSettingsSendAsUpdateResource,
    newGmailUsersSettingsSendAsUpdate,
    GmailUsersSettingsSendAsUpdate,

    -- ** gmail.users.settings.sendAs.verify
    GmailUsersSettingsSendAsVerifyResource,
    newGmailUsersSettingsSendAsVerify,
    GmailUsersSettingsSendAsVerify,

    -- ** gmail.users.settings.updateAutoForwarding
    GmailUsersSettingsUpdateAutoForwardingResource,
    newGmailUsersSettingsUpdateAutoForwarding,
    GmailUsersSettingsUpdateAutoForwarding,

    -- ** gmail.users.settings.updateImap
    GmailUsersSettingsUpdateImapResource,
    newGmailUsersSettingsUpdateImap,
    GmailUsersSettingsUpdateImap,

    -- ** gmail.users.settings.updateLanguage
    GmailUsersSettingsUpdateLanguageResource,
    newGmailUsersSettingsUpdateLanguage,
    GmailUsersSettingsUpdateLanguage,

    -- ** gmail.users.settings.updatePop
    GmailUsersSettingsUpdatePopResource,
    newGmailUsersSettingsUpdatePop,
    GmailUsersSettingsUpdatePop,

    -- ** gmail.users.settings.updateVacation
    GmailUsersSettingsUpdateVacationResource,
    newGmailUsersSettingsUpdateVacation,
    GmailUsersSettingsUpdateVacation,

    -- ** gmail.users.stop
    GmailUsersStopResource,
    newGmailUsersStop,
    GmailUsersStop,

    -- ** gmail.users.threads.delete
    GmailUsersThreadsDeleteResource,
    newGmailUsersThreadsDelete,
    GmailUsersThreadsDelete,

    -- ** gmail.users.threads.get
    GmailUsersThreadsGetResource,
    newGmailUsersThreadsGet,
    GmailUsersThreadsGet,

    -- ** gmail.users.threads.list
    GmailUsersThreadsListResource,
    newGmailUsersThreadsList,
    GmailUsersThreadsList,

    -- ** gmail.users.threads.modify
    GmailUsersThreadsModifyResource,
    newGmailUsersThreadsModify,
    GmailUsersThreadsModify,

    -- ** gmail.users.threads.trash
    GmailUsersThreadsTrashResource,
    newGmailUsersThreadsTrash,
    GmailUsersThreadsTrash,

    -- ** gmail.users.threads.untrash
    GmailUsersThreadsUntrashResource,
    newGmailUsersThreadsUntrash,
    GmailUsersThreadsUntrash,

    -- ** gmail.users.watch
    GmailUsersWatchResource,
    newGmailUsersWatch,
    GmailUsersWatch,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AutoForwarding
    AutoForwarding (..),
    newAutoForwarding,

    -- ** AutoForwarding_Disposition
    AutoForwarding_Disposition (..),

    -- ** BatchDeleteMessagesRequest
    BatchDeleteMessagesRequest (..),
    newBatchDeleteMessagesRequest,

    -- ** BatchModifyMessagesRequest
    BatchModifyMessagesRequest (..),
    newBatchModifyMessagesRequest,

    -- ** Delegate
    Delegate (..),
    newDelegate,

    -- ** Delegate_VerificationStatus
    Delegate_VerificationStatus (..),

    -- ** Draft
    Draft (..),
    newDraft,

    -- ** Filter
    Filter (..),
    newFilter,

    -- ** FilterAction
    FilterAction (..),
    newFilterAction,

    -- ** FilterCriteria
    FilterCriteria (..),
    newFilterCriteria,

    -- ** FilterCriteria_SizeComparison
    FilterCriteria_SizeComparison (..),

    -- ** ForwardingAddress
    ForwardingAddress (..),
    newForwardingAddress,

    -- ** ForwardingAddress_VerificationStatus
    ForwardingAddress_VerificationStatus (..),

    -- ** History
    History (..),
    newHistory,

    -- ** HistoryLabelAdded
    HistoryLabelAdded (..),
    newHistoryLabelAdded,

    -- ** HistoryLabelRemoved
    HistoryLabelRemoved (..),
    newHistoryLabelRemoved,

    -- ** HistoryMessageAdded
    HistoryMessageAdded (..),
    newHistoryMessageAdded,

    -- ** HistoryMessageDeleted
    HistoryMessageDeleted (..),
    newHistoryMessageDeleted,

    -- ** ImapSettings
    ImapSettings (..),
    newImapSettings,

    -- ** ImapSettings_ExpungeBehavior
    ImapSettings_ExpungeBehavior (..),

    -- ** Label
    Label (..),
    newLabel,

    -- ** Label_LabelListVisibility
    Label_LabelListVisibility (..),

    -- ** Label_MessageListVisibility
    Label_MessageListVisibility (..),

    -- ** Label_Type
    Label_Type (..),

    -- ** LabelColor
    LabelColor (..),
    newLabelColor,

    -- ** LanguageSettings
    LanguageSettings (..),
    newLanguageSettings,

    -- ** ListDelegatesResponse
    ListDelegatesResponse (..),
    newListDelegatesResponse,

    -- ** ListDraftsResponse
    ListDraftsResponse (..),
    newListDraftsResponse,

    -- ** ListFiltersResponse
    ListFiltersResponse (..),
    newListFiltersResponse,

    -- ** ListForwardingAddressesResponse
    ListForwardingAddressesResponse (..),
    newListForwardingAddressesResponse,

    -- ** ListHistoryResponse
    ListHistoryResponse (..),
    newListHistoryResponse,

    -- ** ListLabelsResponse
    ListLabelsResponse (..),
    newListLabelsResponse,

    -- ** ListMessagesResponse
    ListMessagesResponse (..),
    newListMessagesResponse,

    -- ** ListSendAsResponse
    ListSendAsResponse (..),
    newListSendAsResponse,

    -- ** ListSmimeInfoResponse
    ListSmimeInfoResponse (..),
    newListSmimeInfoResponse,

    -- ** ListThreadsResponse
    ListThreadsResponse (..),
    newListThreadsResponse,

    -- ** Message
    Message (..),
    newMessage,

    -- ** MessagePart
    MessagePart (..),
    newMessagePart,

    -- ** MessagePartBody
    MessagePartBody (..),
    newMessagePartBody,

    -- ** MessagePartHeader
    MessagePartHeader (..),
    newMessagePartHeader,

    -- ** ModifyMessageRequest
    ModifyMessageRequest (..),
    newModifyMessageRequest,

    -- ** ModifyThreadRequest
    ModifyThreadRequest (..),
    newModifyThreadRequest,

    -- ** PopSettings
    PopSettings (..),
    newPopSettings,

    -- ** PopSettings_AccessWindow
    PopSettings_AccessWindow (..),

    -- ** PopSettings_Disposition
    PopSettings_Disposition (..),

    -- ** Profile
    Profile (..),
    newProfile,

    -- ** SendAs
    SendAs (..),
    newSendAs,

    -- ** SendAs_VerificationStatus
    SendAs_VerificationStatus (..),

    -- ** SmimeInfo
    SmimeInfo (..),
    newSmimeInfo,

    -- ** SmtpMsa
    SmtpMsa (..),
    newSmtpMsa,

    -- ** SmtpMsa_SecurityMode
    SmtpMsa_SecurityMode (..),

    -- ** Thread
    Thread (..),
    newThread,

    -- ** VacationSettings
    VacationSettings (..),
    newVacationSettings,

    -- ** WatchRequest
    WatchRequest (..),
    newWatchRequest,

    -- ** WatchRequest_LabelFilterAction
    WatchRequest_LabelFilterAction (..),

    -- ** WatchResponse
    WatchResponse (..),
    newWatchResponse,

    -- ** UsersDraftsGetFormat
    UsersDraftsGetFormat (..),

    -- ** UsersHistoryListHistoryTypes
    UsersHistoryListHistoryTypes (..),

    -- ** UsersMessagesGetFormat
    UsersMessagesGetFormat (..),

    -- ** UsersMessagesImportInternalDateSource
    UsersMessagesImportInternalDateSource (..),

    -- ** UsersMessagesInsertInternalDateSource
    UsersMessagesInsertInternalDateSource (..),

    -- ** UsersThreadsGetFormat
    UsersThreadsGetFormat (..),
  )
where

import Network.Google.Gmail.Types
import Network.Google.Gmail.Users.Drafts.Create
import Network.Google.Gmail.Users.Drafts.Delete
import Network.Google.Gmail.Users.Drafts.Get
import Network.Google.Gmail.Users.Drafts.List
import Network.Google.Gmail.Users.Drafts.Send
import Network.Google.Gmail.Users.Drafts.Update
import Network.Google.Gmail.Users.GetProfile
import Network.Google.Gmail.Users.History.List
import Network.Google.Gmail.Users.Labels.Create
import Network.Google.Gmail.Users.Labels.Delete
import Network.Google.Gmail.Users.Labels.Get
import Network.Google.Gmail.Users.Labels.List
import Network.Google.Gmail.Users.Labels.Patch
import Network.Google.Gmail.Users.Labels.Update
import Network.Google.Gmail.Users.Messages.Attachments.Get
import Network.Google.Gmail.Users.Messages.BatchDelete
import Network.Google.Gmail.Users.Messages.BatchModify
import Network.Google.Gmail.Users.Messages.Delete
import Network.Google.Gmail.Users.Messages.Get
import Network.Google.Gmail.Users.Messages.Import
import Network.Google.Gmail.Users.Messages.Insert
import Network.Google.Gmail.Users.Messages.List
import Network.Google.Gmail.Users.Messages.Modify
import Network.Google.Gmail.Users.Messages.Send
import Network.Google.Gmail.Users.Messages.Trash
import Network.Google.Gmail.Users.Messages.Untrash
import Network.Google.Gmail.Users.Settings.Delegates.Create
import Network.Google.Gmail.Users.Settings.Delegates.Delete
import Network.Google.Gmail.Users.Settings.Delegates.Get
import Network.Google.Gmail.Users.Settings.Delegates.List
import Network.Google.Gmail.Users.Settings.Filters.Create
import Network.Google.Gmail.Users.Settings.Filters.Delete
import Network.Google.Gmail.Users.Settings.Filters.Get
import Network.Google.Gmail.Users.Settings.Filters.List
import Network.Google.Gmail.Users.Settings.ForwardingAddresses.Create
import Network.Google.Gmail.Users.Settings.ForwardingAddresses.Delete
import Network.Google.Gmail.Users.Settings.ForwardingAddresses.Get
import Network.Google.Gmail.Users.Settings.ForwardingAddresses.List
import Network.Google.Gmail.Users.Settings.GetAutoForwarding
import Network.Google.Gmail.Users.Settings.GetImap
import Network.Google.Gmail.Users.Settings.GetLanguage
import Network.Google.Gmail.Users.Settings.GetPop
import Network.Google.Gmail.Users.Settings.GetVacation
import Network.Google.Gmail.Users.Settings.SendAs.Create
import Network.Google.Gmail.Users.Settings.SendAs.Delete
import Network.Google.Gmail.Users.Settings.SendAs.Get
import Network.Google.Gmail.Users.Settings.SendAs.List
import Network.Google.Gmail.Users.Settings.SendAs.Patch
import Network.Google.Gmail.Users.Settings.SendAs.SmimeInfo.Delete
import Network.Google.Gmail.Users.Settings.SendAs.SmimeInfo.Get
import Network.Google.Gmail.Users.Settings.SendAs.SmimeInfo.Insert
import Network.Google.Gmail.Users.Settings.SendAs.SmimeInfo.List
import Network.Google.Gmail.Users.Settings.SendAs.SmimeInfo.SetDefault
import Network.Google.Gmail.Users.Settings.SendAs.Update
import Network.Google.Gmail.Users.Settings.SendAs.Verify
import Network.Google.Gmail.Users.Settings.UpdateAutoForwarding
import Network.Google.Gmail.Users.Settings.UpdateImap
import Network.Google.Gmail.Users.Settings.UpdateLanguage
import Network.Google.Gmail.Users.Settings.UpdatePop
import Network.Google.Gmail.Users.Settings.UpdateVacation
import Network.Google.Gmail.Users.Stop
import Network.Google.Gmail.Users.Threads.Delete
import Network.Google.Gmail.Users.Threads.Get
import Network.Google.Gmail.Users.Threads.List
import Network.Google.Gmail.Users.Threads.Modify
import Network.Google.Gmail.Users.Threads.Trash
import Network.Google.Gmail.Users.Threads.Untrash
import Network.Google.Gmail.Users.Watch
