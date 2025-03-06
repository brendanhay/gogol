{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Gmail.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Gmail.Types
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

    -- ** CseIdentity
    CseIdentity (..),
    newCseIdentity,

    -- ** CseKeyPair
    CseKeyPair (..),
    newCseKeyPair,

    -- ** CseKeyPair_EnablementState
    CseKeyPair_EnablementState (..),

    -- ** CsePrivateKeyMetadata
    CsePrivateKeyMetadata (..),
    newCsePrivateKeyMetadata,

    -- ** Delegate
    Delegate (..),
    newDelegate,

    -- ** Delegate_VerificationStatus
    Delegate_VerificationStatus (..),

    -- ** DisableCseKeyPairRequest
    DisableCseKeyPairRequest (..),
    newDisableCseKeyPairRequest,

    -- ** Draft
    Draft (..),
    newDraft,

    -- ** EnableCseKeyPairRequest
    EnableCseKeyPairRequest (..),
    newEnableCseKeyPairRequest,

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

    -- ** HardwareKeyMetadata
    HardwareKeyMetadata (..),
    newHardwareKeyMetadata,

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

    -- ** KaclsKeyMetadata
    KaclsKeyMetadata (..),
    newKaclsKeyMetadata,

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

    -- ** ListCseIdentitiesResponse
    ListCseIdentitiesResponse (..),
    newListCseIdentitiesResponse,

    -- ** ListCseKeyPairsResponse
    ListCseKeyPairsResponse (..),
    newListCseKeyPairsResponse,

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

    -- ** ObliterateCseKeyPairRequest
    ObliterateCseKeyPairRequest (..),
    newObliterateCseKeyPairRequest,

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

    -- ** SignAndEncryptKeyPairs
    SignAndEncryptKeyPairs (..),
    newSignAndEncryptKeyPairs,

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

    -- ** WatchRequest_LabelFilterBehavior
    WatchRequest_LabelFilterBehavior (..),

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

import Gogol.Gmail.Internal.Product
import Gogol.Gmail.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Gmail API. This contains the host and root path used as a starting point for constructing service requests.
gmailService :: Core.ServiceConfig
gmailService =
  Core.defaultService
    (Core.ServiceId "gmail:v1")
    "gmail.googleapis.com"

-- | Read, compose, send, and permanently delete all your email from Gmail
type Gmail'FullControl = "https://mail.google.com/"

-- | Manage drafts and send emails when you interact with the add-on
type Gmail'Addons'Current'Action'Compose =
  "https://www.googleapis.com/auth/gmail.addons.current.action.compose"

-- | View your email messages when you interact with the add-on
type Gmail'Addons'Current'Message'Action =
  "https://www.googleapis.com/auth/gmail.addons.current.message.action"

-- | View your email message metadata when the add-on is running
type Gmail'Addons'Current'Message'Metadata =
  "https://www.googleapis.com/auth/gmail.addons.current.message.metadata"

-- | View your email messages when the add-on is running
type Gmail'Addons'Current'Message'Readonly =
  "https://www.googleapis.com/auth/gmail.addons.current.message.readonly"

-- | Manage drafts and send emails
type Gmail'Compose =
  "https://www.googleapis.com/auth/gmail.compose"

-- | Add emails into your Gmail mailbox
type Gmail'Insert = "https://www.googleapis.com/auth/gmail.insert"

-- | See and edit your email labels
type Gmail'Labels = "https://www.googleapis.com/auth/gmail.labels"

-- | View your email message metadata such as labels and headers, but not the email body
type Gmail'Metadata =
  "https://www.googleapis.com/auth/gmail.metadata"

-- | Read, compose, and send emails from your Gmail account
type Gmail'Modify = "https://www.googleapis.com/auth/gmail.modify"

-- | View your email messages and settings
type Gmail'Readonly =
  "https://www.googleapis.com/auth/gmail.readonly"

-- | Send email on your behalf
type Gmail'Send = "https://www.googleapis.com/auth/gmail.send"

-- | See, edit, create, or change your email settings and filters in Gmail
type Gmail'Settings'Basic =
  "https://www.googleapis.com/auth/gmail.settings.basic"

-- | Manage your sensitive mail settings, including who can manage your mail
type Gmail'Settings'Sharing =
  "https://www.googleapis.com/auth/gmail.settings.sharing"
