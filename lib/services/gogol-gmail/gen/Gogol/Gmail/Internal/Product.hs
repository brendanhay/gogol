{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Gmail.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Gmail.Internal.Product
  ( -- * AutoForwarding
    AutoForwarding (..),
    newAutoForwarding,

    -- * BatchDeleteMessagesRequest
    BatchDeleteMessagesRequest (..),
    newBatchDeleteMessagesRequest,

    -- * BatchModifyMessagesRequest
    BatchModifyMessagesRequest (..),
    newBatchModifyMessagesRequest,

    -- * CseIdentity
    CseIdentity (..),
    newCseIdentity,

    -- * CseKeyPair
    CseKeyPair (..),
    newCseKeyPair,

    -- * CsePrivateKeyMetadata
    CsePrivateKeyMetadata (..),
    newCsePrivateKeyMetadata,

    -- * Delegate
    Delegate (..),
    newDelegate,

    -- * DisableCseKeyPairRequest
    DisableCseKeyPairRequest (..),
    newDisableCseKeyPairRequest,

    -- * Draft
    Draft (..),
    newDraft,

    -- * EnableCseKeyPairRequest
    EnableCseKeyPairRequest (..),
    newEnableCseKeyPairRequest,

    -- * Filter
    Filter (..),
    newFilter,

    -- * FilterAction
    FilterAction (..),
    newFilterAction,

    -- * FilterCriteria
    FilterCriteria (..),
    newFilterCriteria,

    -- * ForwardingAddress
    ForwardingAddress (..),
    newForwardingAddress,

    -- * HardwareKeyMetadata
    HardwareKeyMetadata (..),
    newHardwareKeyMetadata,

    -- * History
    History (..),
    newHistory,

    -- * HistoryLabelAdded
    HistoryLabelAdded (..),
    newHistoryLabelAdded,

    -- * HistoryLabelRemoved
    HistoryLabelRemoved (..),
    newHistoryLabelRemoved,

    -- * HistoryMessageAdded
    HistoryMessageAdded (..),
    newHistoryMessageAdded,

    -- * HistoryMessageDeleted
    HistoryMessageDeleted (..),
    newHistoryMessageDeleted,

    -- * ImapSettings
    ImapSettings (..),
    newImapSettings,

    -- * KaclsKeyMetadata
    KaclsKeyMetadata (..),
    newKaclsKeyMetadata,

    -- * Label
    Label (..),
    newLabel,

    -- * LabelColor
    LabelColor (..),
    newLabelColor,

    -- * LanguageSettings
    LanguageSettings (..),
    newLanguageSettings,

    -- * ListCseIdentitiesResponse
    ListCseIdentitiesResponse (..),
    newListCseIdentitiesResponse,

    -- * ListCseKeyPairsResponse
    ListCseKeyPairsResponse (..),
    newListCseKeyPairsResponse,

    -- * ListDelegatesResponse
    ListDelegatesResponse (..),
    newListDelegatesResponse,

    -- * ListDraftsResponse
    ListDraftsResponse (..),
    newListDraftsResponse,

    -- * ListFiltersResponse
    ListFiltersResponse (..),
    newListFiltersResponse,

    -- * ListForwardingAddressesResponse
    ListForwardingAddressesResponse (..),
    newListForwardingAddressesResponse,

    -- * ListHistoryResponse
    ListHistoryResponse (..),
    newListHistoryResponse,

    -- * ListLabelsResponse
    ListLabelsResponse (..),
    newListLabelsResponse,

    -- * ListMessagesResponse
    ListMessagesResponse (..),
    newListMessagesResponse,

    -- * ListSendAsResponse
    ListSendAsResponse (..),
    newListSendAsResponse,

    -- * ListSmimeInfoResponse
    ListSmimeInfoResponse (..),
    newListSmimeInfoResponse,

    -- * ListThreadsResponse
    ListThreadsResponse (..),
    newListThreadsResponse,

    -- * Message
    Message (..),
    newMessage,

    -- * MessagePart
    MessagePart (..),
    newMessagePart,

    -- * MessagePartBody
    MessagePartBody (..),
    newMessagePartBody,

    -- * MessagePartHeader
    MessagePartHeader (..),
    newMessagePartHeader,

    -- * ModifyMessageRequest
    ModifyMessageRequest (..),
    newModifyMessageRequest,

    -- * ModifyThreadRequest
    ModifyThreadRequest (..),
    newModifyThreadRequest,

    -- * ObliterateCseKeyPairRequest
    ObliterateCseKeyPairRequest (..),
    newObliterateCseKeyPairRequest,

    -- * PopSettings
    PopSettings (..),
    newPopSettings,

    -- * Profile
    Profile (..),
    newProfile,

    -- * SendAs
    SendAs (..),
    newSendAs,

    -- * SignAndEncryptKeyPairs
    SignAndEncryptKeyPairs (..),
    newSignAndEncryptKeyPairs,

    -- * SmimeInfo
    SmimeInfo (..),
    newSmimeInfo,

    -- * SmtpMsa
    SmtpMsa (..),
    newSmtpMsa,

    -- * Thread
    Thread (..),
    newThread,

    -- * VacationSettings
    VacationSettings (..),
    newVacationSettings,

    -- * WatchRequest
    WatchRequest (..),
    newWatchRequest,

    -- * WatchResponse
    WatchResponse (..),
    newWatchResponse,
  )
where

import Gogol.Gmail.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Auto-forwarding settings for an account.
--
-- /See:/ 'newAutoForwarding' smart constructor.
data AutoForwarding = AutoForwarding
  { -- | The state that a message should be left in after it has been forwarded.
    disposition :: (Core.Maybe AutoForwarding_Disposition),
    -- | Email address to which all incoming messages are forwarded. This email address must be a verified member of the forwarding addresses.
    emailAddress :: (Core.Maybe Core.Text),
    -- | Whether all incoming mail is automatically forwarded to another address.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoForwarding' with the minimum fields required to make a request.
newAutoForwarding ::
  AutoForwarding
newAutoForwarding =
  AutoForwarding
    { disposition = Core.Nothing,
      emailAddress = Core.Nothing,
      enabled = Core.Nothing
    }

instance Core.FromJSON AutoForwarding where
  parseJSON =
    Core.withObject
      "AutoForwarding"
      ( \o ->
          AutoForwarding
            Core.<$> (o Core..:? "disposition")
            Core.<*> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "enabled")
      )

instance Core.ToJSON AutoForwarding where
  toJSON AutoForwarding {..} =
    Core.object
      ( Core.catMaybes
          [ ("disposition" Core..=) Core.<$> disposition,
            ("emailAddress" Core..=) Core.<$> emailAddress,
            ("enabled" Core..=) Core.<$> enabled
          ]
      )

--
-- /See:/ 'newBatchDeleteMessagesRequest' smart constructor.
newtype BatchDeleteMessagesRequest = BatchDeleteMessagesRequest
  { -- | The IDs of the messages to delete.
    ids :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchDeleteMessagesRequest' with the minimum fields required to make a request.
newBatchDeleteMessagesRequest ::
  BatchDeleteMessagesRequest
newBatchDeleteMessagesRequest =
  BatchDeleteMessagesRequest {ids = Core.Nothing}

instance Core.FromJSON BatchDeleteMessagesRequest where
  parseJSON =
    Core.withObject
      "BatchDeleteMessagesRequest"
      (\o -> BatchDeleteMessagesRequest Core.<$> (o Core..:? "ids"))

instance Core.ToJSON BatchDeleteMessagesRequest where
  toJSON BatchDeleteMessagesRequest {..} =
    Core.object (Core.catMaybes [("ids" Core..=) Core.<$> ids])

--
-- /See:/ 'newBatchModifyMessagesRequest' smart constructor.
data BatchModifyMessagesRequest = BatchModifyMessagesRequest
  { -- | A list of label IDs to add to messages.
    addLabelIds :: (Core.Maybe [Core.Text]),
    -- | The IDs of the messages to modify. There is a limit of 1000 ids per request.
    ids :: (Core.Maybe [Core.Text]),
    -- | A list of label IDs to remove from messages.
    removeLabelIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchModifyMessagesRequest' with the minimum fields required to make a request.
newBatchModifyMessagesRequest ::
  BatchModifyMessagesRequest
newBatchModifyMessagesRequest =
  BatchModifyMessagesRequest
    { addLabelIds = Core.Nothing,
      ids = Core.Nothing,
      removeLabelIds = Core.Nothing
    }

instance Core.FromJSON BatchModifyMessagesRequest where
  parseJSON =
    Core.withObject
      "BatchModifyMessagesRequest"
      ( \o ->
          BatchModifyMessagesRequest
            Core.<$> (o Core..:? "addLabelIds")
            Core.<*> (o Core..:? "ids")
            Core.<*> (o Core..:? "removeLabelIds")
      )

instance Core.ToJSON BatchModifyMessagesRequest where
  toJSON BatchModifyMessagesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("addLabelIds" Core..=) Core.<$> addLabelIds,
            ("ids" Core..=) Core.<$> ids,
            ("removeLabelIds" Core..=) Core.<$> removeLabelIds
          ]
      )

-- | The client-side encryption (CSE) configuration for the email address of an authenticated user. Gmail uses CSE configurations to save drafts of client-side encrypted email messages, and to sign and send encrypted email messages.
--
-- /See:/ 'newCseIdentity' smart constructor.
data CseIdentity = CseIdentity
  { -- | The email address for the sending identity. The email address must be the primary email address of the authenticated user.
    emailAddress :: (Core.Maybe Core.Text),
    -- | If a key pair is associated, the ID of the key pair, CseKeyPair.
    primaryKeyPairId :: (Core.Maybe Core.Text),
    -- | The configuration of a CSE identity that uses different key pairs for signing and encryption.
    signAndEncryptKeyPairs :: (Core.Maybe SignAndEncryptKeyPairs)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CseIdentity' with the minimum fields required to make a request.
newCseIdentity ::
  CseIdentity
newCseIdentity =
  CseIdentity
    { emailAddress = Core.Nothing,
      primaryKeyPairId = Core.Nothing,
      signAndEncryptKeyPairs = Core.Nothing
    }

instance Core.FromJSON CseIdentity where
  parseJSON =
    Core.withObject
      "CseIdentity"
      ( \o ->
          CseIdentity
            Core.<$> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "primaryKeyPairId")
            Core.<*> (o Core..:? "signAndEncryptKeyPairs")
      )

instance Core.ToJSON CseIdentity where
  toJSON CseIdentity {..} =
    Core.object
      ( Core.catMaybes
          [ ("emailAddress" Core..=) Core.<$> emailAddress,
            ("primaryKeyPairId" Core..=) Core.<$> primaryKeyPairId,
            ("signAndEncryptKeyPairs" Core..=)
              Core.<$> signAndEncryptKeyPairs
          ]
      )

-- | A client-side encryption S\/MIME key pair, which is comprised of a public key, its certificate chain, and metadata for its paired private key. Gmail uses the key pair to complete the following tasks: - Sign outgoing client-side encrypted messages. - Save and reopen drafts of client-side encrypted messages. - Save and reopen sent messages. - Decrypt incoming or archived S\/MIME messages.
--
-- /See:/ 'newCseKeyPair' smart constructor.
data CseKeyPair = CseKeyPair
  { -- | Output only. If a key pair is set to @DISABLED@, the time that the key pair\'s state changed from @ENABLED@ to @DISABLED@. This field is present only when the key pair is in state @DISABLED@.
    disableTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The current state of the key pair.
    enablementState :: (Core.Maybe CseKeyPair_EnablementState),
    -- | Output only. The immutable ID for the client-side encryption S\/MIME key pair.
    keyPairId :: (Core.Maybe Core.Text),
    -- | Output only. The public key and its certificate chain, in <https://en.wikipedia.org/wiki/Privacy-Enhanced_Mail PEM> format.
    pem :: (Core.Maybe Core.Text),
    -- | Input only. The public key and its certificate chain. The chain must be in <https://en.wikipedia.org/wiki/PKCS_7 PKCS#7> format and use PEM encoding and ASCII armor.
    pkcs7 :: (Core.Maybe Core.Text),
    -- | Metadata for instances of this key pair\'s private key.
    privateKeyMetadata :: (Core.Maybe [CsePrivateKeyMetadata]),
    -- | Output only. The email address identities that are specified on the leaf certificate.
    subjectEmailAddresses :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CseKeyPair' with the minimum fields required to make a request.
newCseKeyPair ::
  CseKeyPair
newCseKeyPair =
  CseKeyPair
    { disableTime = Core.Nothing,
      enablementState = Core.Nothing,
      keyPairId = Core.Nothing,
      pem = Core.Nothing,
      pkcs7 = Core.Nothing,
      privateKeyMetadata = Core.Nothing,
      subjectEmailAddresses = Core.Nothing
    }

instance Core.FromJSON CseKeyPair where
  parseJSON =
    Core.withObject
      "CseKeyPair"
      ( \o ->
          CseKeyPair
            Core.<$> (o Core..:? "disableTime")
            Core.<*> (o Core..:? "enablementState")
            Core.<*> (o Core..:? "keyPairId")
            Core.<*> (o Core..:? "pem")
            Core.<*> (o Core..:? "pkcs7")
            Core.<*> (o Core..:? "privateKeyMetadata")
            Core.<*> (o Core..:? "subjectEmailAddresses")
      )

instance Core.ToJSON CseKeyPair where
  toJSON CseKeyPair {..} =
    Core.object
      ( Core.catMaybes
          [ ("disableTime" Core..=) Core.<$> disableTime,
            ("enablementState" Core..=) Core.<$> enablementState,
            ("keyPairId" Core..=) Core.<$> keyPairId,
            ("pem" Core..=) Core.<$> pem,
            ("pkcs7" Core..=) Core.<$> pkcs7,
            ("privateKeyMetadata" Core..=) Core.<$> privateKeyMetadata,
            ("subjectEmailAddresses" Core..=) Core.<$> subjectEmailAddresses
          ]
      )

-- | Metadata for a private key instance.
--
-- /See:/ 'newCsePrivateKeyMetadata' smart constructor.
data CsePrivateKeyMetadata = CsePrivateKeyMetadata
  { -- | Metadata for hardware keys.
    hardwareKeyMetadata :: (Core.Maybe HardwareKeyMetadata),
    -- | Metadata for a private key instance managed by an external key access control list service.
    kaclsKeyMetadata :: (Core.Maybe KaclsKeyMetadata),
    -- | Output only. The immutable ID for the private key metadata instance.
    privateKeyMetadataId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CsePrivateKeyMetadata' with the minimum fields required to make a request.
newCsePrivateKeyMetadata ::
  CsePrivateKeyMetadata
newCsePrivateKeyMetadata =
  CsePrivateKeyMetadata
    { hardwareKeyMetadata = Core.Nothing,
      kaclsKeyMetadata = Core.Nothing,
      privateKeyMetadataId = Core.Nothing
    }

instance Core.FromJSON CsePrivateKeyMetadata where
  parseJSON =
    Core.withObject
      "CsePrivateKeyMetadata"
      ( \o ->
          CsePrivateKeyMetadata
            Core.<$> (o Core..:? "hardwareKeyMetadata")
            Core.<*> (o Core..:? "kaclsKeyMetadata")
            Core.<*> (o Core..:? "privateKeyMetadataId")
      )

instance Core.ToJSON CsePrivateKeyMetadata where
  toJSON CsePrivateKeyMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("hardwareKeyMetadata" Core..=) Core.<$> hardwareKeyMetadata,
            ("kaclsKeyMetadata" Core..=) Core.<$> kaclsKeyMetadata,
            ("privateKeyMetadataId" Core..=) Core.<$> privateKeyMetadataId
          ]
      )

-- | Settings for a delegate. Delegates can read, send, and delete messages, as well as view and add contacts, for the delegator\'s account. See \"Set up mail delegation\" for more information about delegates.
--
-- /See:/ 'newDelegate' smart constructor.
data Delegate = Delegate
  { -- | The email address of the delegate.
    delegateEmail :: (Core.Maybe Core.Text),
    -- | Indicates whether this address has been verified and can act as a delegate for the account. Read-only.
    verificationStatus :: (Core.Maybe Delegate_VerificationStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Delegate' with the minimum fields required to make a request.
newDelegate ::
  Delegate
newDelegate =
  Delegate
    { delegateEmail = Core.Nothing,
      verificationStatus = Core.Nothing
    }

instance Core.FromJSON Delegate where
  parseJSON =
    Core.withObject
      "Delegate"
      ( \o ->
          Delegate
            Core.<$> (o Core..:? "delegateEmail")
            Core.<*> (o Core..:? "verificationStatus")
      )

instance Core.ToJSON Delegate where
  toJSON Delegate {..} =
    Core.object
      ( Core.catMaybes
          [ ("delegateEmail" Core..=) Core.<$> delegateEmail,
            ("verificationStatus" Core..=) Core.<$> verificationStatus
          ]
      )

-- | Requests to turn off a client-side encryption key pair.
--
-- /See:/ 'newDisableCseKeyPairRequest' smart constructor.
data DisableCseKeyPairRequest = DisableCseKeyPairRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DisableCseKeyPairRequest' with the minimum fields required to make a request.
newDisableCseKeyPairRequest ::
  DisableCseKeyPairRequest
newDisableCseKeyPairRequest = DisableCseKeyPairRequest

instance Core.FromJSON DisableCseKeyPairRequest where
  parseJSON =
    Core.withObject
      "DisableCseKeyPairRequest"
      (\o -> Core.pure DisableCseKeyPairRequest)

instance Core.ToJSON DisableCseKeyPairRequest where
  toJSON = Core.const Core.emptyObject

-- | A draft email in the user\'s mailbox.
--
-- /See:/ 'newDraft' smart constructor.
data Draft = Draft
  { -- | The immutable ID of the draft.
    id :: (Core.Maybe Core.Text),
    -- | The message content of the draft.
    message :: (Core.Maybe Message)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Draft' with the minimum fields required to make a request.
newDraft ::
  Draft
newDraft = Draft {id = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Draft where
  parseJSON =
    Core.withObject
      "Draft"
      ( \o ->
          Draft Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Draft where
  toJSON Draft {..} =
    Core.object
      ( Core.catMaybes
          [("id" Core..=) Core.<$> id, ("message" Core..=) Core.<$> message]
      )

-- | Requests to turn on a client-side encryption key pair.
--
-- /See:/ 'newEnableCseKeyPairRequest' smart constructor.
data EnableCseKeyPairRequest = EnableCseKeyPairRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnableCseKeyPairRequest' with the minimum fields required to make a request.
newEnableCseKeyPairRequest ::
  EnableCseKeyPairRequest
newEnableCseKeyPairRequest = EnableCseKeyPairRequest

instance Core.FromJSON EnableCseKeyPairRequest where
  parseJSON =
    Core.withObject
      "EnableCseKeyPairRequest"
      (\o -> Core.pure EnableCseKeyPairRequest)

instance Core.ToJSON EnableCseKeyPairRequest where
  toJSON = Core.const Core.emptyObject

-- | Resource definition for Gmail filters. Filters apply to specific messages instead of an entire email thread.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter
  { -- | Action that the filter performs.
    action :: (Core.Maybe FilterAction),
    -- | Matching criteria for the filter.
    criteria :: (Core.Maybe FilterCriteria),
    -- | The server assigned ID of the filter.
    id :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
newFilter ::
  Filter
newFilter =
  Filter
    { action = Core.Nothing,
      criteria = Core.Nothing,
      id = Core.Nothing
    }

instance Core.FromJSON Filter where
  parseJSON =
    Core.withObject
      "Filter"
      ( \o ->
          Filter
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "criteria")
            Core.<*> (o Core..:? "id")
      )

instance Core.ToJSON Filter where
  toJSON Filter {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("criteria" Core..=) Core.<$> criteria,
            ("id" Core..=) Core.<$> id
          ]
      )

-- | A set of actions to perform on a message.
--
-- /See:/ 'newFilterAction' smart constructor.
data FilterAction = FilterAction
  { -- | List of labels to add to the message.
    addLabelIds :: (Core.Maybe [Core.Text]),
    -- | Email address that the message should be forwarded to.
    forward :: (Core.Maybe Core.Text),
    -- | List of labels to remove from the message.
    removeLabelIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterAction' with the minimum fields required to make a request.
newFilterAction ::
  FilterAction
newFilterAction =
  FilterAction
    { addLabelIds = Core.Nothing,
      forward = Core.Nothing,
      removeLabelIds = Core.Nothing
    }

instance Core.FromJSON FilterAction where
  parseJSON =
    Core.withObject
      "FilterAction"
      ( \o ->
          FilterAction
            Core.<$> (o Core..:? "addLabelIds")
            Core.<*> (o Core..:? "forward")
            Core.<*> (o Core..:? "removeLabelIds")
      )

instance Core.ToJSON FilterAction where
  toJSON FilterAction {..} =
    Core.object
      ( Core.catMaybes
          [ ("addLabelIds" Core..=) Core.<$> addLabelIds,
            ("forward" Core..=) Core.<$> forward,
            ("removeLabelIds" Core..=) Core.<$> removeLabelIds
          ]
      )

-- | Message matching criteria.
--
-- /See:/ 'newFilterCriteria' smart constructor.
data FilterCriteria = FilterCriteria
  { -- | Whether the response should exclude chats.
    excludeChats :: (Core.Maybe Core.Bool),
    -- | The sender\'s display name or email address.
    from :: (Core.Maybe Core.Text),
    -- | Whether the message has any attachment.
    hasAttachment :: (Core.Maybe Core.Bool),
    -- | Only return messages not matching the specified query. Supports the same query format as the Gmail search box. For example, @\"from:someuser\@example.com rfc822msgid: is:unread\"@.
    negatedQuery :: (Core.Maybe Core.Text),
    -- | Only return messages matching the specified query. Supports the same query format as the Gmail search box. For example, @\"from:someuser\@example.com rfc822msgid: is:unread\"@.
    query :: (Core.Maybe Core.Text),
    -- | The size of the entire RFC822 message in bytes, including all headers and attachments.
    size :: (Core.Maybe Core.Int32),
    -- | How the message size in bytes should be in relation to the size field.
    sizeComparison :: (Core.Maybe FilterCriteria_SizeComparison),
    -- | Case-insensitive phrase found in the message\'s subject. Trailing and leading whitespace are be trimmed and adjacent spaces are collapsed.
    subject :: (Core.Maybe Core.Text),
    -- | The recipient\'s display name or email address. Includes recipients in the \"to\", \"cc\", and \"bcc\" header fields. You can use simply the local part of the email address. For example, \"example\" and \"example\@\" both match \"example\@gmail.com\". This field is case-insensitive.
    to :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterCriteria' with the minimum fields required to make a request.
newFilterCriteria ::
  FilterCriteria
newFilterCriteria =
  FilterCriteria
    { excludeChats = Core.Nothing,
      from = Core.Nothing,
      hasAttachment = Core.Nothing,
      negatedQuery = Core.Nothing,
      query = Core.Nothing,
      size = Core.Nothing,
      sizeComparison = Core.Nothing,
      subject = Core.Nothing,
      to = Core.Nothing
    }

instance Core.FromJSON FilterCriteria where
  parseJSON =
    Core.withObject
      "FilterCriteria"
      ( \o ->
          FilterCriteria
            Core.<$> (o Core..:? "excludeChats")
            Core.<*> (o Core..:? "from")
            Core.<*> (o Core..:? "hasAttachment")
            Core.<*> (o Core..:? "negatedQuery")
            Core.<*> (o Core..:? "query")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "sizeComparison")
            Core.<*> (o Core..:? "subject")
            Core.<*> (o Core..:? "to")
      )

instance Core.ToJSON FilterCriteria where
  toJSON FilterCriteria {..} =
    Core.object
      ( Core.catMaybes
          [ ("excludeChats" Core..=) Core.<$> excludeChats,
            ("from" Core..=) Core.<$> from,
            ("hasAttachment" Core..=) Core.<$> hasAttachment,
            ("negatedQuery" Core..=) Core.<$> negatedQuery,
            ("query" Core..=) Core.<$> query,
            ("size" Core..=) Core.<$> size,
            ("sizeComparison" Core..=) Core.<$> sizeComparison,
            ("subject" Core..=) Core.<$> subject,
            ("to" Core..=) Core.<$> to
          ]
      )

-- | Settings for a forwarding address.
--
-- /See:/ 'newForwardingAddress' smart constructor.
data ForwardingAddress = ForwardingAddress
  { -- | An email address to which messages can be forwarded.
    forwardingEmail :: (Core.Maybe Core.Text),
    -- | Indicates whether this address has been verified and is usable for forwarding. Read-only.
    verificationStatus :: (Core.Maybe ForwardingAddress_VerificationStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ForwardingAddress' with the minimum fields required to make a request.
newForwardingAddress ::
  ForwardingAddress
newForwardingAddress =
  ForwardingAddress
    { forwardingEmail = Core.Nothing,
      verificationStatus = Core.Nothing
    }

instance Core.FromJSON ForwardingAddress where
  parseJSON =
    Core.withObject
      "ForwardingAddress"
      ( \o ->
          ForwardingAddress
            Core.<$> (o Core..:? "forwardingEmail")
            Core.<*> (o Core..:? "verificationStatus")
      )

instance Core.ToJSON ForwardingAddress where
  toJSON ForwardingAddress {..} =
    Core.object
      ( Core.catMaybes
          [ ("forwardingEmail" Core..=) Core.<$> forwardingEmail,
            ("verificationStatus" Core..=) Core.<$> verificationStatus
          ]
      )

-- | Metadata for hardware keys.
--
-- /See:/ 'newHardwareKeyMetadata' smart constructor.
newtype HardwareKeyMetadata = HardwareKeyMetadata
  { -- | Description about the hardware key.
    description :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HardwareKeyMetadata' with the minimum fields required to make a request.
newHardwareKeyMetadata ::
  HardwareKeyMetadata
newHardwareKeyMetadata =
  HardwareKeyMetadata {description = Core.Nothing}

instance Core.FromJSON HardwareKeyMetadata where
  parseJSON =
    Core.withObject
      "HardwareKeyMetadata"
      (\o -> HardwareKeyMetadata Core.<$> (o Core..:? "description"))

instance Core.ToJSON HardwareKeyMetadata where
  toJSON HardwareKeyMetadata {..} =
    Core.object
      (Core.catMaybes [("description" Core..=) Core.<$> description])

-- | A record of a change to the user\'s mailbox. Each history change may affect multiple messages in multiple ways.
--
-- /See:/ 'newHistory' smart constructor.
data History = History
  { -- | The mailbox sequence ID.
    id :: (Core.Maybe Core.Word64),
    -- | Labels added to messages in this history record.
    labelsAdded :: (Core.Maybe [HistoryLabelAdded]),
    -- | Labels removed from messages in this history record.
    labelsRemoved :: (Core.Maybe [HistoryLabelRemoved]),
    -- | List of messages changed in this history record. The fields for specific change types, such as @messagesAdded@ may duplicate messages in this field. We recommend using the specific change-type fields instead of this.
    messages :: (Core.Maybe [Message]),
    -- | Messages added to the mailbox in this history record.
    messagesAdded :: (Core.Maybe [HistoryMessageAdded]),
    -- | Messages deleted (not Trashed) from the mailbox in this history record.
    messagesDeleted :: (Core.Maybe [HistoryMessageDeleted])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'History' with the minimum fields required to make a request.
newHistory ::
  History
newHistory =
  History
    { id = Core.Nothing,
      labelsAdded = Core.Nothing,
      labelsRemoved = Core.Nothing,
      messages = Core.Nothing,
      messagesAdded = Core.Nothing,
      messagesDeleted = Core.Nothing
    }

instance Core.FromJSON History where
  parseJSON =
    Core.withObject
      "History"
      ( \o ->
          History
            Core.<$> (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "labelsAdded")
            Core.<*> (o Core..:? "labelsRemoved")
            Core.<*> (o Core..:? "messages")
            Core.<*> (o Core..:? "messagesAdded")
            Core.<*> (o Core..:? "messagesDeleted")
      )

instance Core.ToJSON History where
  toJSON History {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("labelsAdded" Core..=) Core.<$> labelsAdded,
            ("labelsRemoved" Core..=) Core.<$> labelsRemoved,
            ("messages" Core..=) Core.<$> messages,
            ("messagesAdded" Core..=) Core.<$> messagesAdded,
            ("messagesDeleted" Core..=) Core.<$> messagesDeleted
          ]
      )

--
-- /See:/ 'newHistoryLabelAdded' smart constructor.
data HistoryLabelAdded = HistoryLabelAdded
  { -- | Label IDs added to the message.
    labelIds :: (Core.Maybe [Core.Text]),
    message :: (Core.Maybe Message)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistoryLabelAdded' with the minimum fields required to make a request.
newHistoryLabelAdded ::
  HistoryLabelAdded
newHistoryLabelAdded =
  HistoryLabelAdded
    { labelIds = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON HistoryLabelAdded where
  parseJSON =
    Core.withObject
      "HistoryLabelAdded"
      ( \o ->
          HistoryLabelAdded
            Core.<$> (o Core..:? "labelIds")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON HistoryLabelAdded where
  toJSON HistoryLabelAdded {..} =
    Core.object
      ( Core.catMaybes
          [ ("labelIds" Core..=) Core.<$> labelIds,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newHistoryLabelRemoved' smart constructor.
data HistoryLabelRemoved = HistoryLabelRemoved
  { -- | Label IDs removed from the message.
    labelIds :: (Core.Maybe [Core.Text]),
    message :: (Core.Maybe Message)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistoryLabelRemoved' with the minimum fields required to make a request.
newHistoryLabelRemoved ::
  HistoryLabelRemoved
newHistoryLabelRemoved =
  HistoryLabelRemoved
    { labelIds = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON HistoryLabelRemoved where
  parseJSON =
    Core.withObject
      "HistoryLabelRemoved"
      ( \o ->
          HistoryLabelRemoved
            Core.<$> (o Core..:? "labelIds")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON HistoryLabelRemoved where
  toJSON HistoryLabelRemoved {..} =
    Core.object
      ( Core.catMaybes
          [ ("labelIds" Core..=) Core.<$> labelIds,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newHistoryMessageAdded' smart constructor.
newtype HistoryMessageAdded = HistoryMessageAdded
  { message :: (Core.Maybe Message)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistoryMessageAdded' with the minimum fields required to make a request.
newHistoryMessageAdded ::
  HistoryMessageAdded
newHistoryMessageAdded =
  HistoryMessageAdded {message = Core.Nothing}

instance Core.FromJSON HistoryMessageAdded where
  parseJSON =
    Core.withObject
      "HistoryMessageAdded"
      (\o -> HistoryMessageAdded Core.<$> (o Core..:? "message"))

instance Core.ToJSON HistoryMessageAdded where
  toJSON HistoryMessageAdded {..} =
    Core.object
      (Core.catMaybes [("message" Core..=) Core.<$> message])

--
-- /See:/ 'newHistoryMessageDeleted' smart constructor.
newtype HistoryMessageDeleted = HistoryMessageDeleted
  { message :: (Core.Maybe Message)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HistoryMessageDeleted' with the minimum fields required to make a request.
newHistoryMessageDeleted ::
  HistoryMessageDeleted
newHistoryMessageDeleted =
  HistoryMessageDeleted {message = Core.Nothing}

instance Core.FromJSON HistoryMessageDeleted where
  parseJSON =
    Core.withObject
      "HistoryMessageDeleted"
      (\o -> HistoryMessageDeleted Core.<$> (o Core..:? "message"))

instance Core.ToJSON HistoryMessageDeleted where
  toJSON HistoryMessageDeleted {..} =
    Core.object
      (Core.catMaybes [("message" Core..=) Core.<$> message])

-- | IMAP settings for an account.
--
-- /See:/ 'newImapSettings' smart constructor.
data ImapSettings = ImapSettings
  { -- | If this value is true, Gmail will immediately expunge a message when it is marked as deleted in IMAP. Otherwise, Gmail will wait for an update from the client before expunging messages marked as deleted.
    autoExpunge :: (Core.Maybe Core.Bool),
    -- | Whether IMAP is enabled for the account.
    enabled :: (Core.Maybe Core.Bool),
    -- | The action that will be executed on a message when it is marked as deleted and expunged from the last visible IMAP folder.
    expungeBehavior :: (Core.Maybe ImapSettings_ExpungeBehavior),
    -- | An optional limit on the number of messages that an IMAP folder may contain. Legal values are 0, 1000, 2000, 5000 or 10000. A value of zero is interpreted to mean that there is no limit.
    maxFolderSize :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImapSettings' with the minimum fields required to make a request.
newImapSettings ::
  ImapSettings
newImapSettings =
  ImapSettings
    { autoExpunge = Core.Nothing,
      enabled = Core.Nothing,
      expungeBehavior = Core.Nothing,
      maxFolderSize = Core.Nothing
    }

instance Core.FromJSON ImapSettings where
  parseJSON =
    Core.withObject
      "ImapSettings"
      ( \o ->
          ImapSettings
            Core.<$> (o Core..:? "autoExpunge")
            Core.<*> (o Core..:? "enabled")
            Core.<*> (o Core..:? "expungeBehavior")
            Core.<*> (o Core..:? "maxFolderSize")
      )

instance Core.ToJSON ImapSettings where
  toJSON ImapSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoExpunge" Core..=) Core.<$> autoExpunge,
            ("enabled" Core..=) Core.<$> enabled,
            ("expungeBehavior" Core..=) Core.<$> expungeBehavior,
            ("maxFolderSize" Core..=) Core.<$> maxFolderSize
          ]
      )

-- | Metadata for private keys managed by an external key access control list service. For details about managing key access, see <https://developers.google.com/workspace/cse/reference Google Workspace CSE API Reference>.
--
-- /See:/ 'newKaclsKeyMetadata' smart constructor.
data KaclsKeyMetadata = KaclsKeyMetadata
  { -- | Opaque data generated and used by the key access control list service. Maximum size: 8 KiB.
    kaclsData :: (Core.Maybe Core.Text),
    -- | The URI of the key access control list service that manages the private key.
    kaclsUri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KaclsKeyMetadata' with the minimum fields required to make a request.
newKaclsKeyMetadata ::
  KaclsKeyMetadata
newKaclsKeyMetadata =
  KaclsKeyMetadata
    { kaclsData = Core.Nothing,
      kaclsUri = Core.Nothing
    }

instance Core.FromJSON KaclsKeyMetadata where
  parseJSON =
    Core.withObject
      "KaclsKeyMetadata"
      ( \o ->
          KaclsKeyMetadata
            Core.<$> (o Core..:? "kaclsData")
            Core.<*> (o Core..:? "kaclsUri")
      )

instance Core.ToJSON KaclsKeyMetadata where
  toJSON KaclsKeyMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("kaclsData" Core..=) Core.<$> kaclsData,
            ("kaclsUri" Core..=) Core.<$> kaclsUri
          ]
      )

-- | Labels are used to categorize messages and threads within the user\'s mailbox. The maximum number of labels supported for a user\'s mailbox is 10,000.
--
-- /See:/ 'newLabel' smart constructor.
data Label = Label
  { -- | The color to assign to the label. Color is only available for labels that have their @type@ set to @user@.
    color :: (Core.Maybe LabelColor),
    -- | The immutable ID of the label.
    id :: (Core.Maybe Core.Text),
    -- | The visibility of the label in the label list in the Gmail web interface.
    labelListVisibility :: (Core.Maybe Label_LabelListVisibility),
    -- | The visibility of messages with this label in the message list in the Gmail web interface.
    messageListVisibility :: (Core.Maybe Label_MessageListVisibility),
    -- | The total number of messages with the label.
    messagesTotal :: (Core.Maybe Core.Int32),
    -- | The number of unread messages with the label.
    messagesUnread :: (Core.Maybe Core.Int32),
    -- | The display name of the label.
    name :: (Core.Maybe Core.Text),
    -- | The total number of threads with the label.
    threadsTotal :: (Core.Maybe Core.Int32),
    -- | The number of unread threads with the label.
    threadsUnread :: (Core.Maybe Core.Int32),
    -- | The owner type for the label. User labels are created by the user and can be modified and deleted by the user and can be applied to any message or thread. System labels are internally created and cannot be added, modified, or deleted. System labels may be able to be applied to or removed from messages and threads under some circumstances but this is not guaranteed. For example, users can apply and remove the @INBOX@ and @UNREAD@ labels from messages and threads, but cannot apply or remove the @DRAFTS@ or @SENT@ labels from messages or threads.
    type' :: (Core.Maybe Label_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Label' with the minimum fields required to make a request.
newLabel ::
  Label
newLabel =
  Label
    { color = Core.Nothing,
      id = Core.Nothing,
      labelListVisibility = Core.Nothing,
      messageListVisibility = Core.Nothing,
      messagesTotal = Core.Nothing,
      messagesUnread = Core.Nothing,
      name = Core.Nothing,
      threadsTotal = Core.Nothing,
      threadsUnread = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Label where
  parseJSON =
    Core.withObject
      "Label"
      ( \o ->
          Label
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "labelListVisibility")
            Core.<*> (o Core..:? "messageListVisibility")
            Core.<*> (o Core..:? "messagesTotal")
            Core.<*> (o Core..:? "messagesUnread")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "threadsTotal")
            Core.<*> (o Core..:? "threadsUnread")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Label where
  toJSON Label {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("id" Core..=) Core.<$> id,
            ("labelListVisibility" Core..=) Core.<$> labelListVisibility,
            ("messageListVisibility" Core..=) Core.<$> messageListVisibility,
            ("messagesTotal" Core..=) Core.<$> messagesTotal,
            ("messagesUnread" Core..=) Core.<$> messagesUnread,
            ("name" Core..=) Core.<$> name,
            ("threadsTotal" Core..=) Core.<$> threadsTotal,
            ("threadsUnread" Core..=) Core.<$> threadsUnread,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newLabelColor' smart constructor.
data LabelColor = LabelColor
  { -- | The background color represented as hex string #RRGGBB (ex #000000). This field is required in order to set the color of a label. Only the following predefined set of color values are allowed: #000000, #434343, #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff, #fb4c2f, #ffad47, #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3, #f6c5be, #ffe6c7, #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8, #efa093, #ffd6a2, #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1, #fbc8d9, #e66550, #ffbc6b, #fcda83, #44b984, #68dfa9, #6d9eeb, #b694e8, #f7a7c0, #cc3a21, #eaa041, #f2c960, #149e60, #3dc789, #3c78d8, #8e63ce, #e07798, #ac2b16, #cf8933, #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775, #822111, #a46a21, #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c #464646, #e7e7e7, #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff, #711a36, #fbd3e0, #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5, #594c05, #fbe983, #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1, #c2c2c2, #4986e7, #2da2bb, #b99aff,
    -- #994a64, #f691b2, #ff7537, #ffad46, #662e37, #ebdbde, #cca6ac, #094228, #42d692, #16a765
    backgroundColor :: (Core.Maybe Core.Text),
    -- | The text color of the label, represented as hex string. This field is required in order to set the color of a label. Only the following predefined set of color values are allowed: #000000, #434343, #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff, #fb4c2f, #ffad47, #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3, #f6c5be, #ffe6c7, #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8, #efa093, #ffd6a2, #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1, #fbc8d9, #e66550, #ffbc6b, #fcda83, #44b984, #68dfa9, #6d9eeb, #b694e8, #f7a7c0, #cc3a21, #eaa041, #f2c960, #149e60, #3dc789, #3c78d8, #8e63ce, #e07798, #ac2b16, #cf8933, #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775, #822111, #a46a21, #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c #464646, #e7e7e7, #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff, #711a36, #fbd3e0, #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5, #594c05, #fbe983, #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1, #c2c2c2, #4986e7, #2da2bb, #b99aff, #994a64, #f691b2,
    -- #ff7537, #ffad46, #662e37, #ebdbde, #cca6ac, #094228, #42d692, #16a765
    textColor :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LabelColor' with the minimum fields required to make a request.
newLabelColor ::
  LabelColor
newLabelColor =
  LabelColor
    { backgroundColor = Core.Nothing,
      textColor = Core.Nothing
    }

instance Core.FromJSON LabelColor where
  parseJSON =
    Core.withObject
      "LabelColor"
      ( \o ->
          LabelColor
            Core.<$> (o Core..:? "backgroundColor")
            Core.<*> (o Core..:? "textColor")
      )

instance Core.ToJSON LabelColor where
  toJSON LabelColor {..} =
    Core.object
      ( Core.catMaybes
          [ ("backgroundColor" Core..=) Core.<$> backgroundColor,
            ("textColor" Core..=) Core.<$> textColor
          ]
      )

-- | Language settings for an account. These settings correspond to the \"Language settings\" feature in the web interface.
--
-- /See:/ 'newLanguageSettings' smart constructor.
newtype LanguageSettings = LanguageSettings
  { -- | The language to display Gmail in, formatted as an RFC 3066 Language Tag (for example @en-GB@, @fr@ or @ja@ for British English, French, or Japanese respectively). The set of languages supported by Gmail evolves over time, so please refer to the \"Language\" dropdown in the Gmail settings for all available options, as described in the language settings help article. A table of sample values is also provided in the Managing Language Settings guide Not all Gmail clients can display the same set of languages. In the case that a user\'s display language is not available for use on a particular client, said client automatically chooses to display in the closest supported variant (or a reasonable default).
    displayLanguage :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LanguageSettings' with the minimum fields required to make a request.
newLanguageSettings ::
  LanguageSettings
newLanguageSettings =
  LanguageSettings {displayLanguage = Core.Nothing}

instance Core.FromJSON LanguageSettings where
  parseJSON =
    Core.withObject
      "LanguageSettings"
      (\o -> LanguageSettings Core.<$> (o Core..:? "displayLanguage"))

instance Core.ToJSON LanguageSettings where
  toJSON LanguageSettings {..} =
    Core.object
      ( Core.catMaybes
          [("displayLanguage" Core..=) Core.<$> displayLanguage]
      )

--
-- /See:/ 'newListCseIdentitiesResponse' smart constructor.
data ListCseIdentitiesResponse = ListCseIdentitiesResponse
  { -- | One page of the list of CSE identities configured for the user.
    cseIdentities :: (Core.Maybe [CseIdentity]),
    -- | Pagination token to be passed to a subsequent ListCseIdentities call in order to retrieve the next page of identities. If this value is not returned or is the empty string, then no further pages remain.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCseIdentitiesResponse' with the minimum fields required to make a request.
newListCseIdentitiesResponse ::
  ListCseIdentitiesResponse
newListCseIdentitiesResponse =
  ListCseIdentitiesResponse
    { cseIdentities = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListCseIdentitiesResponse where
  parseJSON =
    Core.withObject
      "ListCseIdentitiesResponse"
      ( \o ->
          ListCseIdentitiesResponse
            Core.<$> (o Core..:? "cseIdentities")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListCseIdentitiesResponse where
  toJSON ListCseIdentitiesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cseIdentities" Core..=) Core.<$> cseIdentities,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListCseKeyPairsResponse' smart constructor.
data ListCseKeyPairsResponse = ListCseKeyPairsResponse
  { -- | One page of the list of CSE key pairs installed for the user.
    cseKeyPairs :: (Core.Maybe [CseKeyPair]),
    -- | Pagination token to be passed to a subsequent ListCseKeyPairs call in order to retrieve the next page of key pairs. If this value is not returned, then no further pages remain.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListCseKeyPairsResponse' with the minimum fields required to make a request.
newListCseKeyPairsResponse ::
  ListCseKeyPairsResponse
newListCseKeyPairsResponse =
  ListCseKeyPairsResponse
    { cseKeyPairs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListCseKeyPairsResponse where
  parseJSON =
    Core.withObject
      "ListCseKeyPairsResponse"
      ( \o ->
          ListCseKeyPairsResponse
            Core.<$> (o Core..:? "cseKeyPairs")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListCseKeyPairsResponse where
  toJSON ListCseKeyPairsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cseKeyPairs" Core..=) Core.<$> cseKeyPairs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response for the ListDelegates method.
--
-- /See:/ 'newListDelegatesResponse' smart constructor.
newtype ListDelegatesResponse = ListDelegatesResponse
  { -- | List of the user\'s delegates (with any verification status). If an account doesn\'t have delegates, this field doesn\'t appear.
    delegates :: (Core.Maybe [Delegate])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDelegatesResponse' with the minimum fields required to make a request.
newListDelegatesResponse ::
  ListDelegatesResponse
newListDelegatesResponse =
  ListDelegatesResponse {delegates = Core.Nothing}

instance Core.FromJSON ListDelegatesResponse where
  parseJSON =
    Core.withObject
      "ListDelegatesResponse"
      (\o -> ListDelegatesResponse Core.<$> (o Core..:? "delegates"))

instance Core.ToJSON ListDelegatesResponse where
  toJSON ListDelegatesResponse {..} =
    Core.object
      (Core.catMaybes [("delegates" Core..=) Core.<$> delegates])

--
-- /See:/ 'newListDraftsResponse' smart constructor.
data ListDraftsResponse = ListDraftsResponse
  { -- | List of drafts. Note that the @Message@ property in each @Draft@ resource only contains an @id@ and a @threadId@. The messages.get method can fetch additional message details.
    drafts :: (Core.Maybe [Draft]),
    -- | Token to retrieve the next page of results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Estimated total number of results.
    resultSizeEstimate :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListDraftsResponse' with the minimum fields required to make a request.
newListDraftsResponse ::
  ListDraftsResponse
newListDraftsResponse =
  ListDraftsResponse
    { drafts = Core.Nothing,
      nextPageToken = Core.Nothing,
      resultSizeEstimate = Core.Nothing
    }

instance Core.FromJSON ListDraftsResponse where
  parseJSON =
    Core.withObject
      "ListDraftsResponse"
      ( \o ->
          ListDraftsResponse
            Core.<$> (o Core..:? "drafts")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resultSizeEstimate")
      )

instance Core.ToJSON ListDraftsResponse where
  toJSON ListDraftsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("drafts" Core..=) Core.<$> drafts,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resultSizeEstimate" Core..=) Core.<$> resultSizeEstimate
          ]
      )

-- | Response for the ListFilters method.
--
-- /See:/ 'newListFiltersResponse' smart constructor.
newtype ListFiltersResponse = ListFiltersResponse
  { -- | List of a user\'s filters.
    filter :: (Core.Maybe [Filter])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListFiltersResponse' with the minimum fields required to make a request.
newListFiltersResponse ::
  ListFiltersResponse
newListFiltersResponse = ListFiltersResponse {filter = Core.Nothing}

instance Core.FromJSON ListFiltersResponse where
  parseJSON =
    Core.withObject
      "ListFiltersResponse"
      (\o -> ListFiltersResponse Core.<$> (o Core..:? "filter"))

instance Core.ToJSON ListFiltersResponse where
  toJSON ListFiltersResponse {..} =
    Core.object (Core.catMaybes [("filter" Core..=) Core.<$> filter])

-- | Response for the ListForwardingAddresses method.
--
-- /See:/ 'newListForwardingAddressesResponse' smart constructor.
newtype ListForwardingAddressesResponse = ListForwardingAddressesResponse
  { -- | List of addresses that may be used for forwarding.
    forwardingAddresses :: (Core.Maybe [ForwardingAddress])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListForwardingAddressesResponse' with the minimum fields required to make a request.
newListForwardingAddressesResponse ::
  ListForwardingAddressesResponse
newListForwardingAddressesResponse =
  ListForwardingAddressesResponse
    { forwardingAddresses =
        Core.Nothing
    }

instance Core.FromJSON ListForwardingAddressesResponse where
  parseJSON =
    Core.withObject
      "ListForwardingAddressesResponse"
      ( \o ->
          ListForwardingAddressesResponse
            Core.<$> (o Core..:? "forwardingAddresses")
      )

instance Core.ToJSON ListForwardingAddressesResponse where
  toJSON ListForwardingAddressesResponse {..} =
    Core.object
      ( Core.catMaybes
          [("forwardingAddresses" Core..=) Core.<$> forwardingAddresses]
      )

--
-- /See:/ 'newListHistoryResponse' smart constructor.
data ListHistoryResponse = ListHistoryResponse
  { -- | List of history records. Any @messages@ contained in the response will typically only have @id@ and @threadId@ fields populated.
    history :: (Core.Maybe [History]),
    -- | The ID of the mailbox\'s current history record.
    historyId :: (Core.Maybe Core.Word64),
    -- | Page token to retrieve the next page of results in the list.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListHistoryResponse' with the minimum fields required to make a request.
newListHistoryResponse ::
  ListHistoryResponse
newListHistoryResponse =
  ListHistoryResponse
    { history = Core.Nothing,
      historyId = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListHistoryResponse where
  parseJSON =
    Core.withObject
      "ListHistoryResponse"
      ( \o ->
          ListHistoryResponse
            Core.<$> (o Core..:? "history")
            Core.<*> (o Core..:? "historyId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListHistoryResponse where
  toJSON ListHistoryResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("history" Core..=) Core.<$> history,
            ("historyId" Core..=) Core.. Core.AsText Core.<$> historyId,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newListLabelsResponse' smart constructor.
newtype ListLabelsResponse = ListLabelsResponse
  { -- | List of labels. Note that each label resource only contains an @id@, @name@, @messageListVisibility@, @labelListVisibility@, and @type@. The labels.get method can fetch additional label details.
    labels :: (Core.Maybe [Label])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLabelsResponse' with the minimum fields required to make a request.
newListLabelsResponse ::
  ListLabelsResponse
newListLabelsResponse = ListLabelsResponse {labels = Core.Nothing}

instance Core.FromJSON ListLabelsResponse where
  parseJSON =
    Core.withObject
      "ListLabelsResponse"
      (\o -> ListLabelsResponse Core.<$> (o Core..:? "labels"))

instance Core.ToJSON ListLabelsResponse where
  toJSON ListLabelsResponse {..} =
    Core.object (Core.catMaybes [("labels" Core..=) Core.<$> labels])

--
-- /See:/ 'newListMessagesResponse' smart constructor.
data ListMessagesResponse = ListMessagesResponse
  { -- | List of messages. Note that each message resource contains only an @id@ and a @threadId@. Additional message details can be fetched using the messages.get method.
    messages :: (Core.Maybe [Message]),
    -- | Token to retrieve the next page of results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Estimated total number of results.
    resultSizeEstimate :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListMessagesResponse' with the minimum fields required to make a request.
newListMessagesResponse ::
  ListMessagesResponse
newListMessagesResponse =
  ListMessagesResponse
    { messages = Core.Nothing,
      nextPageToken = Core.Nothing,
      resultSizeEstimate = Core.Nothing
    }

instance Core.FromJSON ListMessagesResponse where
  parseJSON =
    Core.withObject
      "ListMessagesResponse"
      ( \o ->
          ListMessagesResponse
            Core.<$> (o Core..:? "messages")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resultSizeEstimate")
      )

instance Core.ToJSON ListMessagesResponse where
  toJSON ListMessagesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("messages" Core..=) Core.<$> messages,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resultSizeEstimate" Core..=) Core.<$> resultSizeEstimate
          ]
      )

-- | Response for the ListSendAs method.
--
-- /See:/ 'newListSendAsResponse' smart constructor.
newtype ListSendAsResponse = ListSendAsResponse
  { -- | List of send-as aliases.
    sendAs :: (Core.Maybe [SendAs])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSendAsResponse' with the minimum fields required to make a request.
newListSendAsResponse ::
  ListSendAsResponse
newListSendAsResponse = ListSendAsResponse {sendAs = Core.Nothing}

instance Core.FromJSON ListSendAsResponse where
  parseJSON =
    Core.withObject
      "ListSendAsResponse"
      (\o -> ListSendAsResponse Core.<$> (o Core..:? "sendAs"))

instance Core.ToJSON ListSendAsResponse where
  toJSON ListSendAsResponse {..} =
    Core.object (Core.catMaybes [("sendAs" Core..=) Core.<$> sendAs])

--
-- /See:/ 'newListSmimeInfoResponse' smart constructor.
newtype ListSmimeInfoResponse = ListSmimeInfoResponse
  { -- | List of SmimeInfo.
    smimeInfo :: (Core.Maybe [SmimeInfo])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListSmimeInfoResponse' with the minimum fields required to make a request.
newListSmimeInfoResponse ::
  ListSmimeInfoResponse
newListSmimeInfoResponse =
  ListSmimeInfoResponse {smimeInfo = Core.Nothing}

instance Core.FromJSON ListSmimeInfoResponse where
  parseJSON =
    Core.withObject
      "ListSmimeInfoResponse"
      (\o -> ListSmimeInfoResponse Core.<$> (o Core..:? "smimeInfo"))

instance Core.ToJSON ListSmimeInfoResponse where
  toJSON ListSmimeInfoResponse {..} =
    Core.object
      (Core.catMaybes [("smimeInfo" Core..=) Core.<$> smimeInfo])

--
-- /See:/ 'newListThreadsResponse' smart constructor.
data ListThreadsResponse = ListThreadsResponse
  { -- | Page token to retrieve the next page of results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Estimated total number of results.
    resultSizeEstimate :: (Core.Maybe Core.Word32),
    -- | List of threads. Note that each thread resource does not contain a list of @messages@. The list of @messages@ for a given thread can be fetched using the threads.get method.
    threads :: (Core.Maybe [Thread])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListThreadsResponse' with the minimum fields required to make a request.
newListThreadsResponse ::
  ListThreadsResponse
newListThreadsResponse =
  ListThreadsResponse
    { nextPageToken = Core.Nothing,
      resultSizeEstimate = Core.Nothing,
      threads = Core.Nothing
    }

instance Core.FromJSON ListThreadsResponse where
  parseJSON =
    Core.withObject
      "ListThreadsResponse"
      ( \o ->
          ListThreadsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resultSizeEstimate")
            Core.<*> (o Core..:? "threads")
      )

instance Core.ToJSON ListThreadsResponse where
  toJSON ListThreadsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resultSizeEstimate" Core..=) Core.<$> resultSizeEstimate,
            ("threads" Core..=) Core.<$> threads
          ]
      )

-- | An email message.
--
-- /See:/ 'newMessage' smart constructor.
data Message = Message
  { -- | The ID of the last history record that modified this message.
    historyId :: (Core.Maybe Core.Word64),
    -- | The immutable ID of the message.
    id :: (Core.Maybe Core.Text),
    -- | The internal message creation timestamp (epoch ms), which determines ordering in the inbox. For normal SMTP-received email, this represents the time the message was originally accepted by Google, which is more reliable than the @Date@ header. However, for API-migrated mail, it can be configured by client to be based on the @Date@ header.
    internalDate :: (Core.Maybe Core.Int64),
    -- | List of IDs of labels applied to this message.
    labelIds :: (Core.Maybe [Core.Text]),
    -- | The parsed email structure in the message parts.
    payload :: (Core.Maybe MessagePart),
    -- | The entire email message in an RFC 2822 formatted and base64url encoded string. Returned in @messages.get@ and @drafts.get@ responses when the @format=RAW@ parameter is supplied.
    raw :: (Core.Maybe Core.Base64),
    -- | Estimated size in bytes of the message.
    sizeEstimate :: (Core.Maybe Core.Int32),
    -- | A short part of the message text.
    snippet :: (Core.Maybe Core.Text),
    -- | The ID of the thread the message belongs to. To add a message or draft to a thread, the following criteria must be met: 1. The requested @threadId@ must be specified on the @Message@ or @Draft.Message@ you supply with your request. 2. The @References@ and @In-Reply-To@ headers must be set in compliance with the <https://tools.ietf.org/html/rfc2822 RFC 2822> standard. 3. The @Subject@ headers must match.
    threadId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
newMessage ::
  Message
newMessage =
  Message
    { historyId = Core.Nothing,
      id = Core.Nothing,
      internalDate = Core.Nothing,
      labelIds = Core.Nothing,
      payload = Core.Nothing,
      raw = Core.Nothing,
      sizeEstimate = Core.Nothing,
      snippet = Core.Nothing,
      threadId = Core.Nothing
    }

instance Core.FromJSON Message where
  parseJSON =
    Core.withObject
      "Message"
      ( \o ->
          Message
            Core.<$> (o Core..:? "historyId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "internalDate" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "labelIds")
            Core.<*> (o Core..:? "payload")
            Core.<*> (o Core..:? "raw")
            Core.<*> (o Core..:? "sizeEstimate")
            Core.<*> (o Core..:? "snippet")
            Core.<*> (o Core..:? "threadId")
      )

instance Core.ToJSON Message where
  toJSON Message {..} =
    Core.object
      ( Core.catMaybes
          [ ("historyId" Core..=) Core.. Core.AsText Core.<$> historyId,
            ("id" Core..=) Core.<$> id,
            ("internalDate" Core..=) Core.. Core.AsText Core.<$> internalDate,
            ("labelIds" Core..=) Core.<$> labelIds,
            ("payload" Core..=) Core.<$> payload,
            ("raw" Core..=) Core.<$> raw,
            ("sizeEstimate" Core..=) Core.<$> sizeEstimate,
            ("snippet" Core..=) Core.<$> snippet,
            ("threadId" Core..=) Core.<$> threadId
          ]
      )

-- | A single MIME message part.
--
-- /See:/ 'newMessagePart' smart constructor.
data MessagePart = MessagePart
  { -- | The message part body for this part, which may be empty for container MIME message parts.
    body :: (Core.Maybe MessagePartBody),
    -- | The filename of the attachment. Only present if this message part represents an attachment.
    filename :: (Core.Maybe Core.Text),
    -- | List of headers on this message part. For the top-level message part, representing the entire message payload, it will contain the standard RFC 2822 email headers such as @To@, @From@, and @Subject@.
    headers :: (Core.Maybe [MessagePartHeader]),
    -- | The MIME type of the message part.
    mimeType :: (Core.Maybe Core.Text),
    -- | The immutable ID of the message part.
    partId :: (Core.Maybe Core.Text),
    -- | The child MIME message parts of this part. This only applies to container MIME message parts, for example @multipart\/*@. For non- container MIME message part types, such as @text\/plain@, this field is empty. For more information, see RFC 1521.
    parts :: (Core.Maybe [MessagePart])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessagePart' with the minimum fields required to make a request.
newMessagePart ::
  MessagePart
newMessagePart =
  MessagePart
    { body = Core.Nothing,
      filename = Core.Nothing,
      headers = Core.Nothing,
      mimeType = Core.Nothing,
      partId = Core.Nothing,
      parts = Core.Nothing
    }

instance Core.FromJSON MessagePart where
  parseJSON =
    Core.withObject
      "MessagePart"
      ( \o ->
          MessagePart
            Core.<$> (o Core..:? "body")
            Core.<*> (o Core..:? "filename")
            Core.<*> (o Core..:? "headers")
            Core.<*> (o Core..:? "mimeType")
            Core.<*> (o Core..:? "partId")
            Core.<*> (o Core..:? "parts")
      )

instance Core.ToJSON MessagePart where
  toJSON MessagePart {..} =
    Core.object
      ( Core.catMaybes
          [ ("body" Core..=) Core.<$> body,
            ("filename" Core..=) Core.<$> filename,
            ("headers" Core..=) Core.<$> headers,
            ("mimeType" Core..=) Core.<$> mimeType,
            ("partId" Core..=) Core.<$> partId,
            ("parts" Core..=) Core.<$> parts
          ]
      )

-- | The body of a single MIME message part.
--
-- /See:/ 'newMessagePartBody' smart constructor.
data MessagePartBody = MessagePartBody
  { -- | When present, contains the ID of an external attachment that can be retrieved in a separate @messages.attachments.get@ request. When not present, the entire content of the message part body is contained in the data field.
    attachmentId :: (Core.Maybe Core.Text),
    -- | The body data of a MIME message part as a base64url encoded string. May be empty for MIME container types that have no message body or when the body data is sent as a separate attachment. An attachment ID is present if the body data is contained in a separate attachment.
    data' :: (Core.Maybe Core.Base64),
    -- | Number of bytes for the message part data (encoding notwithstanding).
    size :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessagePartBody' with the minimum fields required to make a request.
newMessagePartBody ::
  MessagePartBody
newMessagePartBody =
  MessagePartBody
    { attachmentId = Core.Nothing,
      data' = Core.Nothing,
      size = Core.Nothing
    }

instance Core.FromJSON MessagePartBody where
  parseJSON =
    Core.withObject
      "MessagePartBody"
      ( \o ->
          MessagePartBody
            Core.<$> (o Core..:? "attachmentId")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "size")
      )

instance Core.ToJSON MessagePartBody where
  toJSON MessagePartBody {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachmentId" Core..=) Core.<$> attachmentId,
            ("data" Core..=) Core.<$> data',
            ("size" Core..=) Core.<$> size
          ]
      )

--
-- /See:/ 'newMessagePartHeader' smart constructor.
data MessagePartHeader = MessagePartHeader
  { -- | The name of the header before the @:@ separator. For example, @To@.
    name :: (Core.Maybe Core.Text),
    -- | The value of the header after the @:@ separator. For example, @someuser\@example.com@.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MessagePartHeader' with the minimum fields required to make a request.
newMessagePartHeader ::
  MessagePartHeader
newMessagePartHeader =
  MessagePartHeader {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON MessagePartHeader where
  parseJSON =
    Core.withObject
      "MessagePartHeader"
      ( \o ->
          MessagePartHeader
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON MessagePartHeader where
  toJSON MessagePartHeader {..} =
    Core.object
      ( Core.catMaybes
          [("name" Core..=) Core.<$> name, ("value" Core..=) Core.<$> value]
      )

--
-- /See:/ 'newModifyMessageRequest' smart constructor.
data ModifyMessageRequest = ModifyMessageRequest
  { -- | A list of IDs of labels to add to this message. You can add up to 100 labels with each update.
    addLabelIds :: (Core.Maybe [Core.Text]),
    -- | A list IDs of labels to remove from this message. You can remove up to 100 labels with each update.
    removeLabelIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyMessageRequest' with the minimum fields required to make a request.
newModifyMessageRequest ::
  ModifyMessageRequest
newModifyMessageRequest =
  ModifyMessageRequest
    { addLabelIds = Core.Nothing,
      removeLabelIds = Core.Nothing
    }

instance Core.FromJSON ModifyMessageRequest where
  parseJSON =
    Core.withObject
      "ModifyMessageRequest"
      ( \o ->
          ModifyMessageRequest
            Core.<$> (o Core..:? "addLabelIds")
            Core.<*> (o Core..:? "removeLabelIds")
      )

instance Core.ToJSON ModifyMessageRequest where
  toJSON ModifyMessageRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("addLabelIds" Core..=) Core.<$> addLabelIds,
            ("removeLabelIds" Core..=) Core.<$> removeLabelIds
          ]
      )

--
-- /See:/ 'newModifyThreadRequest' smart constructor.
data ModifyThreadRequest = ModifyThreadRequest
  { -- | A list of IDs of labels to add to this thread. You can add up to 100 labels with each update.
    addLabelIds :: (Core.Maybe [Core.Text]),
    -- | A list of IDs of labels to remove from this thread. You can remove up to 100 labels with each update.
    removeLabelIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ModifyThreadRequest' with the minimum fields required to make a request.
newModifyThreadRequest ::
  ModifyThreadRequest
newModifyThreadRequest =
  ModifyThreadRequest
    { addLabelIds = Core.Nothing,
      removeLabelIds = Core.Nothing
    }

instance Core.FromJSON ModifyThreadRequest where
  parseJSON =
    Core.withObject
      "ModifyThreadRequest"
      ( \o ->
          ModifyThreadRequest
            Core.<$> (o Core..:? "addLabelIds")
            Core.<*> (o Core..:? "removeLabelIds")
      )

instance Core.ToJSON ModifyThreadRequest where
  toJSON ModifyThreadRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("addLabelIds" Core..=) Core.<$> addLabelIds,
            ("removeLabelIds" Core..=) Core.<$> removeLabelIds
          ]
      )

-- | Request to obliterate a CSE key pair.
--
-- /See:/ 'newObliterateCseKeyPairRequest' smart constructor.
data ObliterateCseKeyPairRequest = ObliterateCseKeyPairRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ObliterateCseKeyPairRequest' with the minimum fields required to make a request.
newObliterateCseKeyPairRequest ::
  ObliterateCseKeyPairRequest
newObliterateCseKeyPairRequest = ObliterateCseKeyPairRequest

instance Core.FromJSON ObliterateCseKeyPairRequest where
  parseJSON =
    Core.withObject
      "ObliterateCseKeyPairRequest"
      (\o -> Core.pure ObliterateCseKeyPairRequest)

instance Core.ToJSON ObliterateCseKeyPairRequest where
  toJSON = Core.const Core.emptyObject

-- | POP settings for an account.
--
-- /See:/ 'newPopSettings' smart constructor.
data PopSettings = PopSettings
  { -- | The range of messages which are accessible via POP.
    accessWindow :: (Core.Maybe PopSettings_AccessWindow),
    -- | The action that will be executed on a message after it has been fetched via POP.
    disposition :: (Core.Maybe PopSettings_Disposition)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PopSettings' with the minimum fields required to make a request.
newPopSettings ::
  PopSettings
newPopSettings =
  PopSettings
    { accessWindow = Core.Nothing,
      disposition = Core.Nothing
    }

instance Core.FromJSON PopSettings where
  parseJSON =
    Core.withObject
      "PopSettings"
      ( \o ->
          PopSettings
            Core.<$> (o Core..:? "accessWindow")
            Core.<*> (o Core..:? "disposition")
      )

instance Core.ToJSON PopSettings where
  toJSON PopSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessWindow" Core..=) Core.<$> accessWindow,
            ("disposition" Core..=) Core.<$> disposition
          ]
      )

-- | Profile for a Gmail user.
--
-- /See:/ 'newProfile' smart constructor.
data Profile = Profile
  { -- | The user\'s email address.
    emailAddress :: (Core.Maybe Core.Text),
    -- | The ID of the mailbox\'s current history record.
    historyId :: (Core.Maybe Core.Word64),
    -- | The total number of messages in the mailbox.
    messagesTotal :: (Core.Maybe Core.Int32),
    -- | The total number of threads in the mailbox.
    threadsTotal :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Profile' with the minimum fields required to make a request.
newProfile ::
  Profile
newProfile =
  Profile
    { emailAddress = Core.Nothing,
      historyId = Core.Nothing,
      messagesTotal = Core.Nothing,
      threadsTotal = Core.Nothing
    }

instance Core.FromJSON Profile where
  parseJSON =
    Core.withObject
      "Profile"
      ( \o ->
          Profile
            Core.<$> (o Core..:? "emailAddress")
            Core.<*> (o Core..:? "historyId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "messagesTotal")
            Core.<*> (o Core..:? "threadsTotal")
      )

instance Core.ToJSON Profile where
  toJSON Profile {..} =
    Core.object
      ( Core.catMaybes
          [ ("emailAddress" Core..=) Core.<$> emailAddress,
            ("historyId" Core..=) Core.. Core.AsText Core.<$> historyId,
            ("messagesTotal" Core..=) Core.<$> messagesTotal,
            ("threadsTotal" Core..=) Core.<$> threadsTotal
          ]
      )

-- | Settings associated with a send-as alias, which can be either the primary login address associated with the account or a custom \"from\" address. Send-as aliases correspond to the \"Send Mail As\" feature in the web interface.
--
-- /See:/ 'newSendAs' smart constructor.
data SendAs = SendAs
  { -- | A name that appears in the \"From:\" header for mail sent using this alias. For custom \"from\" addresses, when this is empty, Gmail will populate the \"From:\" header with the name that is used for the primary address associated with the account. If the admin has disabled the ability for users to update their name format, requests to update this field for the primary login will silently fail.
    displayName :: (Core.Maybe Core.Text),
    -- | Whether this address is selected as the default \"From:\" address in situations such as composing a new message or sending a vacation auto-reply. Every Gmail account has exactly one default send-as address, so the only legal value that clients may write to this field is @true@. Changing this from @false@ to @true@ for an address will result in this field becoming @false@ for the other previous default address.
    isDefault :: (Core.Maybe Core.Bool),
    -- | Whether this address is the primary address used to login to the account. Every Gmail account has exactly one primary address, and it cannot be deleted from the collection of send-as aliases. This field is read-only.
    isPrimary :: (Core.Maybe Core.Bool),
    -- | An optional email address that is included in a \"Reply-To:\" header for mail sent using this alias. If this is empty, Gmail will not generate a \"Reply-To:\" header.
    replyToAddress :: (Core.Maybe Core.Text),
    -- | The email address that appears in the \"From:\" header for mail sent using this alias. This is read-only for all operations except create.
    sendAsEmail :: (Core.Maybe Core.Text),
    -- | An optional HTML signature that is included in messages composed with this alias in the Gmail web UI. This signature is added to new emails only.
    signature :: (Core.Maybe Core.Text),
    -- | An optional SMTP service that will be used as an outbound relay for mail sent using this alias. If this is empty, outbound mail will be sent directly from Gmail\'s servers to the destination SMTP service. This setting only applies to custom \"from\" aliases.
    smtpMsa :: (Core.Maybe SmtpMsa),
    -- | Whether Gmail should treat this address as an alias for the user\'s primary email address. This setting only applies to custom \"from\" aliases.
    treatAsAlias :: (Core.Maybe Core.Bool),
    -- | Indicates whether this address has been verified for use as a send-as alias. Read-only. This setting only applies to custom \"from\" aliases.
    verificationStatus :: (Core.Maybe SendAs_VerificationStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SendAs' with the minimum fields required to make a request.
newSendAs ::
  SendAs
newSendAs =
  SendAs
    { displayName = Core.Nothing,
      isDefault = Core.Nothing,
      isPrimary = Core.Nothing,
      replyToAddress = Core.Nothing,
      sendAsEmail = Core.Nothing,
      signature = Core.Nothing,
      smtpMsa = Core.Nothing,
      treatAsAlias = Core.Nothing,
      verificationStatus = Core.Nothing
    }

instance Core.FromJSON SendAs where
  parseJSON =
    Core.withObject
      "SendAs"
      ( \o ->
          SendAs
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "isDefault")
            Core.<*> (o Core..:? "isPrimary")
            Core.<*> (o Core..:? "replyToAddress")
            Core.<*> (o Core..:? "sendAsEmail")
            Core.<*> (o Core..:? "signature")
            Core.<*> (o Core..:? "smtpMsa")
            Core.<*> (o Core..:? "treatAsAlias")
            Core.<*> (o Core..:? "verificationStatus")
      )

instance Core.ToJSON SendAs where
  toJSON SendAs {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("isDefault" Core..=) Core.<$> isDefault,
            ("isPrimary" Core..=) Core.<$> isPrimary,
            ("replyToAddress" Core..=) Core.<$> replyToAddress,
            ("sendAsEmail" Core..=) Core.<$> sendAsEmail,
            ("signature" Core..=) Core.<$> signature,
            ("smtpMsa" Core..=) Core.<$> smtpMsa,
            ("treatAsAlias" Core..=) Core.<$> treatAsAlias,
            ("verificationStatus" Core..=) Core.<$> verificationStatus
          ]
      )

-- | The configuration of a CSE identity that uses different key pairs for signing and encryption.
--
-- /See:/ 'newSignAndEncryptKeyPairs' smart constructor.
data SignAndEncryptKeyPairs = SignAndEncryptKeyPairs
  { -- | The ID of the CseKeyPair that encrypts signed outgoing mail.
    encryptionKeyPairId :: (Core.Maybe Core.Text),
    -- | The ID of the CseKeyPair that signs outgoing mail.
    signingKeyPairId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignAndEncryptKeyPairs' with the minimum fields required to make a request.
newSignAndEncryptKeyPairs ::
  SignAndEncryptKeyPairs
newSignAndEncryptKeyPairs =
  SignAndEncryptKeyPairs
    { encryptionKeyPairId = Core.Nothing,
      signingKeyPairId = Core.Nothing
    }

instance Core.FromJSON SignAndEncryptKeyPairs where
  parseJSON =
    Core.withObject
      "SignAndEncryptKeyPairs"
      ( \o ->
          SignAndEncryptKeyPairs
            Core.<$> (o Core..:? "encryptionKeyPairId")
            Core.<*> (o Core..:? "signingKeyPairId")
      )

instance Core.ToJSON SignAndEncryptKeyPairs where
  toJSON SignAndEncryptKeyPairs {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptionKeyPairId" Core..=) Core.<$> encryptionKeyPairId,
            ("signingKeyPairId" Core..=) Core.<$> signingKeyPairId
          ]
      )

-- | An S\/MIME email config.
--
-- /See:/ 'newSmimeInfo' smart constructor.
data SmimeInfo = SmimeInfo
  { -- | Encrypted key password, when key is encrypted.
    encryptedKeyPassword :: (Core.Maybe Core.Text),
    -- | When the certificate expires (in milliseconds since epoch).
    expiration :: (Core.Maybe Core.Int64),
    -- | The immutable ID for the SmimeInfo.
    id :: (Core.Maybe Core.Text),
    -- | Whether this SmimeInfo is the default one for this user\'s send-as address.
    isDefault :: (Core.Maybe Core.Bool),
    -- | The S\/MIME certificate issuer\'s common name.
    issuerCn :: (Core.Maybe Core.Text),
    -- | PEM formatted X509 concatenated certificate string (standard base64 encoding). Format used for returning key, which includes public key as well as certificate chain (not private key).
    pem :: (Core.Maybe Core.Text),
    -- | PKCS#12 format containing a single private\/public key pair and certificate chain. This format is only accepted from client for creating a new SmimeInfo and is never returned, because the private key is not intended to be exported. PKCS#12 may be encrypted, in which case encryptedKeyPassword should be set appropriately.
    pkcs12 :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SmimeInfo' with the minimum fields required to make a request.
newSmimeInfo ::
  SmimeInfo
newSmimeInfo =
  SmimeInfo
    { encryptedKeyPassword = Core.Nothing,
      expiration = Core.Nothing,
      id = Core.Nothing,
      isDefault = Core.Nothing,
      issuerCn = Core.Nothing,
      pem = Core.Nothing,
      pkcs12 = Core.Nothing
    }

instance Core.FromJSON SmimeInfo where
  parseJSON =
    Core.withObject
      "SmimeInfo"
      ( \o ->
          SmimeInfo
            Core.<$> (o Core..:? "encryptedKeyPassword")
            Core.<*> (o Core..:? "expiration" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "isDefault")
            Core.<*> (o Core..:? "issuerCn")
            Core.<*> (o Core..:? "pem")
            Core.<*> (o Core..:? "pkcs12")
      )

instance Core.ToJSON SmimeInfo where
  toJSON SmimeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("encryptedKeyPassword" Core..=) Core.<$> encryptedKeyPassword,
            ("expiration" Core..=) Core.. Core.AsText Core.<$> expiration,
            ("id" Core..=) Core.<$> id,
            ("isDefault" Core..=) Core.<$> isDefault,
            ("issuerCn" Core..=) Core.<$> issuerCn,
            ("pem" Core..=) Core.<$> pem,
            ("pkcs12" Core..=) Core.<$> pkcs12
          ]
      )

-- | Configuration for communication with an SMTP service.
--
-- /See:/ 'newSmtpMsa' smart constructor.
data SmtpMsa = SmtpMsa
  { -- | The hostname of the SMTP service. Required.
    host :: (Core.Maybe Core.Text),
    -- | The password that will be used for authentication with the SMTP service. This is a write-only field that can be specified in requests to create or update SendAs settings; it is never populated in responses.
    password :: (Core.Maybe Core.Text),
    -- | The port of the SMTP service. Required.
    port :: (Core.Maybe Core.Int32),
    -- | The protocol that will be used to secure communication with the SMTP service. Required.
    securityMode :: (Core.Maybe SmtpMsa_SecurityMode),
    -- | The username that will be used for authentication with the SMTP service. This is a write-only field that can be specified in requests to create or update SendAs settings; it is never populated in responses.
    username :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SmtpMsa' with the minimum fields required to make a request.
newSmtpMsa ::
  SmtpMsa
newSmtpMsa =
  SmtpMsa
    { host = Core.Nothing,
      password = Core.Nothing,
      port = Core.Nothing,
      securityMode = Core.Nothing,
      username = Core.Nothing
    }

instance Core.FromJSON SmtpMsa where
  parseJSON =
    Core.withObject
      "SmtpMsa"
      ( \o ->
          SmtpMsa
            Core.<$> (o Core..:? "host")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "port")
            Core.<*> (o Core..:? "securityMode")
            Core.<*> (o Core..:? "username")
      )

instance Core.ToJSON SmtpMsa where
  toJSON SmtpMsa {..} =
    Core.object
      ( Core.catMaybes
          [ ("host" Core..=) Core.<$> host,
            ("password" Core..=) Core.<$> password,
            ("port" Core..=) Core.<$> port,
            ("securityMode" Core..=) Core.<$> securityMode,
            ("username" Core..=) Core.<$> username
          ]
      )

-- | A collection of messages representing a conversation.
--
-- /See:/ 'newThread' smart constructor.
data Thread = Thread
  { -- | The ID of the last history record that modified this thread.
    historyId :: (Core.Maybe Core.Word64),
    -- | The unique ID of the thread.
    id :: (Core.Maybe Core.Text),
    -- | The list of messages in the thread.
    messages :: (Core.Maybe [Message]),
    -- | A short part of the message text.
    snippet :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Thread' with the minimum fields required to make a request.
newThread ::
  Thread
newThread =
  Thread
    { historyId = Core.Nothing,
      id = Core.Nothing,
      messages = Core.Nothing,
      snippet = Core.Nothing
    }

instance Core.FromJSON Thread where
  parseJSON =
    Core.withObject
      "Thread"
      ( \o ->
          Thread
            Core.<$> (o Core..:? "historyId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "messages")
            Core.<*> (o Core..:? "snippet")
      )

instance Core.ToJSON Thread where
  toJSON Thread {..} =
    Core.object
      ( Core.catMaybes
          [ ("historyId" Core..=) Core.. Core.AsText Core.<$> historyId,
            ("id" Core..=) Core.<$> id,
            ("messages" Core..=) Core.<$> messages,
            ("snippet" Core..=) Core.<$> snippet
          ]
      )

-- | Vacation auto-reply settings for an account. These settings correspond to the \"Vacation responder\" feature in the web interface.
--
-- /See:/ 'newVacationSettings' smart constructor.
data VacationSettings = VacationSettings
  { -- | Flag that controls whether Gmail automatically replies to messages.
    enableAutoReply :: (Core.Maybe Core.Bool),
    -- | An optional end time for sending auto-replies (epoch ms). When this is specified, Gmail will automatically reply only to messages that it receives before the end time. If both @startTime@ and @endTime@ are specified, @startTime@ must precede @endTime@.
    endTime :: (Core.Maybe Core.Int64),
    -- | Response body in HTML format. Gmail will sanitize the HTML before storing it. If both @response_body_plain_text@ and @response_body_html@ are specified, @response_body_html@ will be used.
    responseBodyHtml :: (Core.Maybe Core.Text),
    -- | Response body in plain text format. If both @response_body_plain_text@ and @response_body_html@ are specified, @response_body_html@ will be used.
    responseBodyPlainText :: (Core.Maybe Core.Text),
    -- | Optional text to prepend to the subject line in vacation responses. In order to enable auto-replies, either the response subject or the response body must be nonempty.
    responseSubject :: (Core.Maybe Core.Text),
    -- | Flag that determines whether responses are sent to recipients who are not in the user\'s list of contacts.
    restrictToContacts :: (Core.Maybe Core.Bool),
    -- | Flag that determines whether responses are sent to recipients who are outside of the user\'s domain. This feature is only available for Google Workspace users.
    restrictToDomain :: (Core.Maybe Core.Bool),
    -- | An optional start time for sending auto-replies (epoch ms). When this is specified, Gmail will automatically reply only to messages that it receives after the start time. If both @startTime@ and @endTime@ are specified, @startTime@ must precede @endTime@.
    startTime :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VacationSettings' with the minimum fields required to make a request.
newVacationSettings ::
  VacationSettings
newVacationSettings =
  VacationSettings
    { enableAutoReply = Core.Nothing,
      endTime = Core.Nothing,
      responseBodyHtml = Core.Nothing,
      responseBodyPlainText = Core.Nothing,
      responseSubject = Core.Nothing,
      restrictToContacts = Core.Nothing,
      restrictToDomain = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON VacationSettings where
  parseJSON =
    Core.withObject
      "VacationSettings"
      ( \o ->
          VacationSettings
            Core.<$> (o Core..:? "enableAutoReply")
            Core.<*> (o Core..:? "endTime" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "responseBodyHtml")
            Core.<*> (o Core..:? "responseBodyPlainText")
            Core.<*> (o Core..:? "responseSubject")
            Core.<*> (o Core..:? "restrictToContacts")
            Core.<*> (o Core..:? "restrictToDomain")
            Core.<*> (o Core..:? "startTime" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON VacationSettings where
  toJSON VacationSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("enableAutoReply" Core..=) Core.<$> enableAutoReply,
            ("endTime" Core..=) Core.. Core.AsText Core.<$> endTime,
            ("responseBodyHtml" Core..=) Core.<$> responseBodyHtml,
            ("responseBodyPlainText" Core..=) Core.<$> responseBodyPlainText,
            ("responseSubject" Core..=) Core.<$> responseSubject,
            ("restrictToContacts" Core..=) Core.<$> restrictToContacts,
            ("restrictToDomain" Core..=) Core.<$> restrictToDomain,
            ("startTime" Core..=) Core.. Core.AsText Core.<$> startTime
          ]
      )

-- | Set up or update a new push notification watch on this user\'s mailbox.
--
-- /See:/ 'newWatchRequest' smart constructor.
data WatchRequest = WatchRequest
  { -- | Filtering behavior of @labelIds list@ specified. This field is deprecated because it caused incorrect behavior in some cases; use @label_filter_behavior@ instead.
    labelFilterAction :: (Core.Maybe WatchRequest_LabelFilterAction),
    -- | Filtering behavior of @labelIds list@ specified. This field replaces @label_filter_action@; if set, @label_filter_action@ is ignored.
    labelFilterBehavior :: (Core.Maybe WatchRequest_LabelFilterBehavior),
    -- | List of label_ids to restrict notifications about. By default, if unspecified, all changes are pushed out. If specified then dictates which labels are required for a push notification to be generated.
    labelIds :: (Core.Maybe [Core.Text]),
    -- | A fully qualified Google Cloud Pub\/Sub API topic name to publish the events to. This topic name __must__ already exist in Cloud Pub\/Sub and you __must__ have already granted gmail \"publish\" permission on it. For example, \"projects\/my-project-identifier\/topics\/my-topic-name\" (using the Cloud Pub\/Sub \"v1\" topic naming format). Note that the \"my-project-identifier\" portion must exactly match your Google developer project id (the one executing this watch request).
    topicName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WatchRequest' with the minimum fields required to make a request.
newWatchRequest ::
  WatchRequest
newWatchRequest =
  WatchRequest
    { labelFilterAction = Core.Nothing,
      labelFilterBehavior = Core.Nothing,
      labelIds = Core.Nothing,
      topicName = Core.Nothing
    }

instance Core.FromJSON WatchRequest where
  parseJSON =
    Core.withObject
      "WatchRequest"
      ( \o ->
          WatchRequest
            Core.<$> (o Core..:? "labelFilterAction")
            Core.<*> (o Core..:? "labelFilterBehavior")
            Core.<*> (o Core..:? "labelIds")
            Core.<*> (o Core..:? "topicName")
      )

instance Core.ToJSON WatchRequest where
  toJSON WatchRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("labelFilterAction" Core..=) Core.<$> labelFilterAction,
            ("labelFilterBehavior" Core..=) Core.<$> labelFilterBehavior,
            ("labelIds" Core..=) Core.<$> labelIds,
            ("topicName" Core..=) Core.<$> topicName
          ]
      )

-- | Push notification watch response.
--
-- /See:/ 'newWatchResponse' smart constructor.
data WatchResponse = WatchResponse
  { -- | When Gmail will stop sending notifications for mailbox updates (epoch millis). Call @watch@ again before this time to renew the watch.
    expiration :: (Core.Maybe Core.Int64),
    -- | The ID of the mailbox\'s current history record.
    historyId :: (Core.Maybe Core.Word64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WatchResponse' with the minimum fields required to make a request.
newWatchResponse ::
  WatchResponse
newWatchResponse =
  WatchResponse
    { expiration = Core.Nothing,
      historyId = Core.Nothing
    }

instance Core.FromJSON WatchResponse where
  parseJSON =
    Core.withObject
      "WatchResponse"
      ( \o ->
          WatchResponse
            Core.<$> (o Core..:? "expiration" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "historyId" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON WatchResponse where
  toJSON WatchResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("expiration" Core..=) Core.. Core.AsText Core.<$> expiration,
            ("historyId" Core..=) Core.. Core.AsText Core.<$> historyId
          ]
      )
