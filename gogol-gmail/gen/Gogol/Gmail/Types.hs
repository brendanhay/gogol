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
-- Module      : Gogol.Gmail.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Gmail.Types
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

import Gogol.Gmail.Internal.Product
import Gogol.Gmail.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1@ of the Gmail API. This contains the host and root path used as a starting point for constructing service requests.
gmailService :: Core.ServiceConfig
gmailService =
  Core.defaultService
    (Core.ServiceId "gmail:v1")
    "gmail.googleapis.com"

-- | Read, compose, send, and permanently delete all your email from Gmail
mailGoogleComScope :: Core.Proxy '["https://mail.google.com/"]
mailGoogleComScope = Core.Proxy

-- | Manage drafts and send emails when you interact with the add-on
gmailAddonsCurrentActionComposeScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.addons.current.action.compose"]
gmailAddonsCurrentActionComposeScope = Core.Proxy

-- | View your email messages when you interact with the add-on
gmailAddonsCurrentMessageActionScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.addons.current.message.action"]
gmailAddonsCurrentMessageActionScope = Core.Proxy

-- | View your email message metadata when the add-on is running
gmailAddonsCurrentMessageMetadataScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.addons.current.message.metadata"]
gmailAddonsCurrentMessageMetadataScope = Core.Proxy

-- | View your email messages when the add-on is running
gmailAddonsCurrentMessageReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.addons.current.message.readonly"]
gmailAddonsCurrentMessageReadOnlyScope = Core.Proxy

-- | Manage drafts and send emails
gmailComposeScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.compose"]
gmailComposeScope = Core.Proxy

-- | Add emails into your Gmail mailbox
gmailInsertScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.insert"]
gmailInsertScope = Core.Proxy

-- | See and edit your email labels
gmailLabelsScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.labels"]
gmailLabelsScope = Core.Proxy

-- | View your email message metadata such as labels and headers, but not the email body
gmailMetadataScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.metadata"]
gmailMetadataScope = Core.Proxy

-- | Read, compose, and send emails from your Gmail account
gmailModifyScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.modify"]
gmailModifyScope = Core.Proxy

-- | View your email messages and settings
gmailReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.readonly"]
gmailReadOnlyScope = Core.Proxy

-- | Send email on your behalf
gmailSendScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.send"]
gmailSendScope = Core.Proxy

-- | See, edit, create, or change your email settings and filters in Gmail
gmailSettingsBasicScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.settings.basic"]
gmailSettingsBasicScope = Core.Proxy

-- | Manage your sensitive mail settings, including who can manage your mail
gmailSettingsSharingScope :: Core.Proxy '["https://www.googleapis.com/auth/gmail.settings.sharing"]
gmailSettingsSharingScope = Core.Proxy
