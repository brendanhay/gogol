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
-- Module      : Gogol.Gmail
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Gmail API lets you view and manage Gmail mailbox data like threads, messages, and labels.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference>
module Gogol.Gmail
  ( -- * Configuration
    gmailService,

    -- * OAuth Scopes
    Gmail'FullControl,
    Gmail'Addons'Current'Action'Compose,
    Gmail'Addons'Current'Message'Action,
    Gmail'Addons'Current'Message'Metadata,
    Gmail'Addons'Current'Message'Readonly,
    Gmail'Compose,
    Gmail'Insert,
    Gmail'Labels,
    Gmail'Metadata,
    Gmail'Modify,
    Gmail'Readonly,
    Gmail'Send,
    Gmail'Settings'Basic,
    Gmail'Settings'Sharing,

    -- * Resources

    -- ** gmail.users.drafts.create
    GmailUsersDraftsCreateResource,
    GmailUsersDraftsCreate (..),
    newGmailUsersDraftsCreate,

    -- ** gmail.users.drafts.delete
    GmailUsersDraftsDeleteResource,
    GmailUsersDraftsDelete (..),
    newGmailUsersDraftsDelete,

    -- ** gmail.users.drafts.get
    GmailUsersDraftsGetResource,
    GmailUsersDraftsGet (..),
    newGmailUsersDraftsGet,

    -- ** gmail.users.drafts.list
    GmailUsersDraftsListResource,
    GmailUsersDraftsList (..),
    newGmailUsersDraftsList,

    -- ** gmail.users.drafts.send
    GmailUsersDraftsSendResource,
    GmailUsersDraftsSend (..),
    newGmailUsersDraftsSend,

    -- ** gmail.users.drafts.update
    GmailUsersDraftsUpdateResource,
    GmailUsersDraftsUpdate (..),
    newGmailUsersDraftsUpdate,

    -- ** gmail.users.getProfile
    GmailUsersGetProfileResource,
    GmailUsersGetProfile (..),
    newGmailUsersGetProfile,

    -- ** gmail.users.history.list
    GmailUsersHistoryListResource,
    GmailUsersHistoryList (..),
    newGmailUsersHistoryList,

    -- ** gmail.users.labels.create
    GmailUsersLabelsCreateResource,
    GmailUsersLabelsCreate (..),
    newGmailUsersLabelsCreate,

    -- ** gmail.users.labels.delete
    GmailUsersLabelsDeleteResource,
    GmailUsersLabelsDelete (..),
    newGmailUsersLabelsDelete,

    -- ** gmail.users.labels.get
    GmailUsersLabelsGetResource,
    GmailUsersLabelsGet (..),
    newGmailUsersLabelsGet,

    -- ** gmail.users.labels.list
    GmailUsersLabelsListResource,
    GmailUsersLabelsList (..),
    newGmailUsersLabelsList,

    -- ** gmail.users.labels.patch
    GmailUsersLabelsPatchResource,
    GmailUsersLabelsPatch (..),
    newGmailUsersLabelsPatch,

    -- ** gmail.users.labels.update
    GmailUsersLabelsUpdateResource,
    GmailUsersLabelsUpdate (..),
    newGmailUsersLabelsUpdate,

    -- ** gmail.users.messages.attachments.get
    GmailUsersMessagesAttachmentsGetResource,
    GmailUsersMessagesAttachmentsGet (..),
    newGmailUsersMessagesAttachmentsGet,

    -- ** gmail.users.messages.batchDelete
    GmailUsersMessagesBatchDeleteResource,
    GmailUsersMessagesBatchDelete (..),
    newGmailUsersMessagesBatchDelete,

    -- ** gmail.users.messages.batchModify
    GmailUsersMessagesBatchModifyResource,
    GmailUsersMessagesBatchModify (..),
    newGmailUsersMessagesBatchModify,

    -- ** gmail.users.messages.delete
    GmailUsersMessagesDeleteResource,
    GmailUsersMessagesDelete (..),
    newGmailUsersMessagesDelete,

    -- ** gmail.users.messages.get
    GmailUsersMessagesGetResource,
    GmailUsersMessagesGet (..),
    newGmailUsersMessagesGet,

    -- ** gmail.users.messages.import
    GmailUsersMessagesImportResource,
    GmailUsersMessagesImport (..),
    newGmailUsersMessagesImport,

    -- ** gmail.users.messages.insert
    GmailUsersMessagesInsertResource,
    GmailUsersMessagesInsert (..),
    newGmailUsersMessagesInsert,

    -- ** gmail.users.messages.list
    GmailUsersMessagesListResource,
    GmailUsersMessagesList (..),
    newGmailUsersMessagesList,

    -- ** gmail.users.messages.modify
    GmailUsersMessagesModifyResource,
    GmailUsersMessagesModify (..),
    newGmailUsersMessagesModify,

    -- ** gmail.users.messages.send
    GmailUsersMessagesSendResource,
    GmailUsersMessagesSend (..),
    newGmailUsersMessagesSend,

    -- ** gmail.users.messages.trash
    GmailUsersMessagesTrashResource,
    GmailUsersMessagesTrash (..),
    newGmailUsersMessagesTrash,

    -- ** gmail.users.messages.untrash
    GmailUsersMessagesUntrashResource,
    GmailUsersMessagesUntrash (..),
    newGmailUsersMessagesUntrash,

    -- ** gmail.users.settings.delegates.create
    GmailUsersSettingsDelegatesCreateResource,
    GmailUsersSettingsDelegatesCreate (..),
    newGmailUsersSettingsDelegatesCreate,

    -- ** gmail.users.settings.delegates.delete
    GmailUsersSettingsDelegatesDeleteResource,
    GmailUsersSettingsDelegatesDelete (..),
    newGmailUsersSettingsDelegatesDelete,

    -- ** gmail.users.settings.delegates.get
    GmailUsersSettingsDelegatesGetResource,
    GmailUsersSettingsDelegatesGet (..),
    newGmailUsersSettingsDelegatesGet,

    -- ** gmail.users.settings.delegates.list
    GmailUsersSettingsDelegatesListResource,
    GmailUsersSettingsDelegatesList (..),
    newGmailUsersSettingsDelegatesList,

    -- ** gmail.users.settings.filters.create
    GmailUsersSettingsFiltersCreateResource,
    GmailUsersSettingsFiltersCreate (..),
    newGmailUsersSettingsFiltersCreate,

    -- ** gmail.users.settings.filters.delete
    GmailUsersSettingsFiltersDeleteResource,
    GmailUsersSettingsFiltersDelete (..),
    newGmailUsersSettingsFiltersDelete,

    -- ** gmail.users.settings.filters.get
    GmailUsersSettingsFiltersGetResource,
    GmailUsersSettingsFiltersGet (..),
    newGmailUsersSettingsFiltersGet,

    -- ** gmail.users.settings.filters.list
    GmailUsersSettingsFiltersListResource,
    GmailUsersSettingsFiltersList (..),
    newGmailUsersSettingsFiltersList,

    -- ** gmail.users.settings.forwardingAddresses.create
    GmailUsersSettingsForwardingAddressesCreateResource,
    GmailUsersSettingsForwardingAddressesCreate (..),
    newGmailUsersSettingsForwardingAddressesCreate,

    -- ** gmail.users.settings.forwardingAddresses.delete
    GmailUsersSettingsForwardingAddressesDeleteResource,
    GmailUsersSettingsForwardingAddressesDelete (..),
    newGmailUsersSettingsForwardingAddressesDelete,

    -- ** gmail.users.settings.forwardingAddresses.get
    GmailUsersSettingsForwardingAddressesGetResource,
    GmailUsersSettingsForwardingAddressesGet (..),
    newGmailUsersSettingsForwardingAddressesGet,

    -- ** gmail.users.settings.forwardingAddresses.list
    GmailUsersSettingsForwardingAddressesListResource,
    GmailUsersSettingsForwardingAddressesList (..),
    newGmailUsersSettingsForwardingAddressesList,

    -- ** gmail.users.settings.getAutoForwarding
    GmailUsersSettingsGetAutoForwardingResource,
    GmailUsersSettingsGetAutoForwarding (..),
    newGmailUsersSettingsGetAutoForwarding,

    -- ** gmail.users.settings.getImap
    GmailUsersSettingsGetImapResource,
    GmailUsersSettingsGetImap (..),
    newGmailUsersSettingsGetImap,

    -- ** gmail.users.settings.getLanguage
    GmailUsersSettingsGetLanguageResource,
    GmailUsersSettingsGetLanguage (..),
    newGmailUsersSettingsGetLanguage,

    -- ** gmail.users.settings.getPop
    GmailUsersSettingsGetPopResource,
    GmailUsersSettingsGetPop (..),
    newGmailUsersSettingsGetPop,

    -- ** gmail.users.settings.getVacation
    GmailUsersSettingsGetVacationResource,
    GmailUsersSettingsGetVacation (..),
    newGmailUsersSettingsGetVacation,

    -- ** gmail.users.settings.sendAs.create
    GmailUsersSettingsSendAsCreateResource,
    GmailUsersSettingsSendAsCreate (..),
    newGmailUsersSettingsSendAsCreate,

    -- ** gmail.users.settings.sendAs.delete
    GmailUsersSettingsSendAsDeleteResource,
    GmailUsersSettingsSendAsDelete (..),
    newGmailUsersSettingsSendAsDelete,

    -- ** gmail.users.settings.sendAs.get
    GmailUsersSettingsSendAsGetResource,
    GmailUsersSettingsSendAsGet (..),
    newGmailUsersSettingsSendAsGet,

    -- ** gmail.users.settings.sendAs.list
    GmailUsersSettingsSendAsListResource,
    GmailUsersSettingsSendAsList (..),
    newGmailUsersSettingsSendAsList,

    -- ** gmail.users.settings.sendAs.patch
    GmailUsersSettingsSendAsPatchResource,
    GmailUsersSettingsSendAsPatch (..),
    newGmailUsersSettingsSendAsPatch,

    -- ** gmail.users.settings.sendAs.smimeInfo.delete
    GmailUsersSettingsSendAsSmimeInfoDeleteResource,
    GmailUsersSettingsSendAsSmimeInfoDelete (..),
    newGmailUsersSettingsSendAsSmimeInfoDelete,

    -- ** gmail.users.settings.sendAs.smimeInfo.get
    GmailUsersSettingsSendAsSmimeInfoGetResource,
    GmailUsersSettingsSendAsSmimeInfoGet (..),
    newGmailUsersSettingsSendAsSmimeInfoGet,

    -- ** gmail.users.settings.sendAs.smimeInfo.insert
    GmailUsersSettingsSendAsSmimeInfoInsertResource,
    GmailUsersSettingsSendAsSmimeInfoInsert (..),
    newGmailUsersSettingsSendAsSmimeInfoInsert,

    -- ** gmail.users.settings.sendAs.smimeInfo.list
    GmailUsersSettingsSendAsSmimeInfoListResource,
    GmailUsersSettingsSendAsSmimeInfoList (..),
    newGmailUsersSettingsSendAsSmimeInfoList,

    -- ** gmail.users.settings.sendAs.smimeInfo.setDefault
    GmailUsersSettingsSendAsSmimeInfoSetDefaultResource,
    GmailUsersSettingsSendAsSmimeInfoSetDefault (..),
    newGmailUsersSettingsSendAsSmimeInfoSetDefault,

    -- ** gmail.users.settings.sendAs.update
    GmailUsersSettingsSendAsUpdateResource,
    GmailUsersSettingsSendAsUpdate (..),
    newGmailUsersSettingsSendAsUpdate,

    -- ** gmail.users.settings.sendAs.verify
    GmailUsersSettingsSendAsVerifyResource,
    GmailUsersSettingsSendAsVerify (..),
    newGmailUsersSettingsSendAsVerify,

    -- ** gmail.users.settings.updateAutoForwarding
    GmailUsersSettingsUpdateAutoForwardingResource,
    GmailUsersSettingsUpdateAutoForwarding (..),
    newGmailUsersSettingsUpdateAutoForwarding,

    -- ** gmail.users.settings.updateImap
    GmailUsersSettingsUpdateImapResource,
    GmailUsersSettingsUpdateImap (..),
    newGmailUsersSettingsUpdateImap,

    -- ** gmail.users.settings.updateLanguage
    GmailUsersSettingsUpdateLanguageResource,
    GmailUsersSettingsUpdateLanguage (..),
    newGmailUsersSettingsUpdateLanguage,

    -- ** gmail.users.settings.updatePop
    GmailUsersSettingsUpdatePopResource,
    GmailUsersSettingsUpdatePop (..),
    newGmailUsersSettingsUpdatePop,

    -- ** gmail.users.settings.updateVacation
    GmailUsersSettingsUpdateVacationResource,
    GmailUsersSettingsUpdateVacation (..),
    newGmailUsersSettingsUpdateVacation,

    -- ** gmail.users.stop
    GmailUsersStopResource,
    GmailUsersStop (..),
    newGmailUsersStop,

    -- ** gmail.users.threads.delete
    GmailUsersThreadsDeleteResource,
    GmailUsersThreadsDelete (..),
    newGmailUsersThreadsDelete,

    -- ** gmail.users.threads.get
    GmailUsersThreadsGetResource,
    GmailUsersThreadsGet (..),
    newGmailUsersThreadsGet,

    -- ** gmail.users.threads.list
    GmailUsersThreadsListResource,
    GmailUsersThreadsList (..),
    newGmailUsersThreadsList,

    -- ** gmail.users.threads.modify
    GmailUsersThreadsModifyResource,
    GmailUsersThreadsModify (..),
    newGmailUsersThreadsModify,

    -- ** gmail.users.threads.trash
    GmailUsersThreadsTrashResource,
    GmailUsersThreadsTrash (..),
    newGmailUsersThreadsTrash,

    -- ** gmail.users.threads.untrash
    GmailUsersThreadsUntrashResource,
    GmailUsersThreadsUntrash (..),
    newGmailUsersThreadsUntrash,

    -- ** gmail.users.watch
    GmailUsersWatchResource,
    GmailUsersWatch (..),
    newGmailUsersWatch,

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

import Gogol.Gmail.Types
import Gogol.Gmail.Users.Drafts.Create
import Gogol.Gmail.Users.Drafts.Delete
import Gogol.Gmail.Users.Drafts.Get
import Gogol.Gmail.Users.Drafts.List
import Gogol.Gmail.Users.Drafts.Send
import Gogol.Gmail.Users.Drafts.Update
import Gogol.Gmail.Users.GetProfile
import Gogol.Gmail.Users.History.List
import Gogol.Gmail.Users.Labels.Create
import Gogol.Gmail.Users.Labels.Delete
import Gogol.Gmail.Users.Labels.Get
import Gogol.Gmail.Users.Labels.List
import Gogol.Gmail.Users.Labels.Patch
import Gogol.Gmail.Users.Labels.Update
import Gogol.Gmail.Users.Messages.Attachments.Get
import Gogol.Gmail.Users.Messages.BatchDelete
import Gogol.Gmail.Users.Messages.BatchModify
import Gogol.Gmail.Users.Messages.Delete
import Gogol.Gmail.Users.Messages.Get
import Gogol.Gmail.Users.Messages.Import
import Gogol.Gmail.Users.Messages.Insert
import Gogol.Gmail.Users.Messages.List
import Gogol.Gmail.Users.Messages.Modify
import Gogol.Gmail.Users.Messages.Send
import Gogol.Gmail.Users.Messages.Trash
import Gogol.Gmail.Users.Messages.Untrash
import Gogol.Gmail.Users.Settings.Delegates.Create
import Gogol.Gmail.Users.Settings.Delegates.Delete
import Gogol.Gmail.Users.Settings.Delegates.Get
import Gogol.Gmail.Users.Settings.Delegates.List
import Gogol.Gmail.Users.Settings.Filters.Create
import Gogol.Gmail.Users.Settings.Filters.Delete
import Gogol.Gmail.Users.Settings.Filters.Get
import Gogol.Gmail.Users.Settings.Filters.List
import Gogol.Gmail.Users.Settings.ForwardingAddresses.Create
import Gogol.Gmail.Users.Settings.ForwardingAddresses.Delete
import Gogol.Gmail.Users.Settings.ForwardingAddresses.Get
import Gogol.Gmail.Users.Settings.ForwardingAddresses.List
import Gogol.Gmail.Users.Settings.GetAutoForwarding
import Gogol.Gmail.Users.Settings.GetImap
import Gogol.Gmail.Users.Settings.GetLanguage
import Gogol.Gmail.Users.Settings.GetPop
import Gogol.Gmail.Users.Settings.GetVacation
import Gogol.Gmail.Users.Settings.SendAs.Create
import Gogol.Gmail.Users.Settings.SendAs.Delete
import Gogol.Gmail.Users.Settings.SendAs.Get
import Gogol.Gmail.Users.Settings.SendAs.List
import Gogol.Gmail.Users.Settings.SendAs.Patch
import Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.Delete
import Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.Get
import Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.Insert
import Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.List
import Gogol.Gmail.Users.Settings.SendAs.SmimeInfo.SetDefault
import Gogol.Gmail.Users.Settings.SendAs.Update
import Gogol.Gmail.Users.Settings.SendAs.Verify
import Gogol.Gmail.Users.Settings.UpdateAutoForwarding
import Gogol.Gmail.Users.Settings.UpdateImap
import Gogol.Gmail.Users.Settings.UpdateLanguage
import Gogol.Gmail.Users.Settings.UpdatePop
import Gogol.Gmail.Users.Settings.UpdateVacation
import Gogol.Gmail.Users.Stop
import Gogol.Gmail.Users.Threads.Delete
import Gogol.Gmail.Users.Threads.Get
import Gogol.Gmail.Users.Threads.List
import Gogol.Gmail.Users.Threads.Modify
import Gogol.Gmail.Users.Threads.Trash
import Gogol.Gmail.Users.Threads.Untrash
import Gogol.Gmail.Users.Watch
