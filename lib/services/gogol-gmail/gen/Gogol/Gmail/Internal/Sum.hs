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
-- Module      : Gogol.Gmail.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Gmail.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AutoForwarding_Disposition
    AutoForwarding_Disposition
      ( AutoForwarding_Disposition_DispositionUnspecified,
        AutoForwarding_Disposition_LeaveInInbox,
        AutoForwarding_Disposition_Archive,
        AutoForwarding_Disposition_Trash,
        AutoForwarding_Disposition_MarkRead,
        ..
      ),

    -- * CseKeyPair_EnablementState
    CseKeyPair_EnablementState
      ( CseKeyPair_EnablementState_StateUnspecified,
        CseKeyPair_EnablementState_Enabled,
        CseKeyPair_EnablementState_Disabled,
        ..
      ),

    -- * Delegate_VerificationStatus
    Delegate_VerificationStatus
      ( Delegate_VerificationStatus_VerificationStatusUnspecified,
        Delegate_VerificationStatus_Accepted,
        Delegate_VerificationStatus_Pending,
        Delegate_VerificationStatus_Rejected,
        Delegate_VerificationStatus_Expired,
        ..
      ),

    -- * FilterCriteria_SizeComparison
    FilterCriteria_SizeComparison
      ( FilterCriteria_SizeComparison_Unspecified,
        FilterCriteria_SizeComparison_Smaller,
        FilterCriteria_SizeComparison_Larger,
        ..
      ),

    -- * ForwardingAddress_VerificationStatus
    ForwardingAddress_VerificationStatus
      ( ForwardingAddress_VerificationStatus_VerificationStatusUnspecified,
        ForwardingAddress_VerificationStatus_Accepted,
        ForwardingAddress_VerificationStatus_Pending,
        ..
      ),

    -- * ImapSettings_ExpungeBehavior
    ImapSettings_ExpungeBehavior
      ( ImapSettings_ExpungeBehavior_ExpungeBehaviorUnspecified,
        ImapSettings_ExpungeBehavior_Archive,
        ImapSettings_ExpungeBehavior_Trash,
        ImapSettings_ExpungeBehavior_DeleteForever,
        ..
      ),

    -- * Label_LabelListVisibility
    Label_LabelListVisibility
      ( Label_LabelListVisibility_LabelShow,
        Label_LabelListVisibility_LabelShowIfUnread,
        Label_LabelListVisibility_LabelHide,
        ..
      ),

    -- * Label_MessageListVisibility
    Label_MessageListVisibility
      ( Label_MessageListVisibility_Show,
        Label_MessageListVisibility_Hide,
        ..
      ),

    -- * Label_Type
    Label_Type
      ( Label_Type_System,
        Label_Type_User,
        ..
      ),

    -- * PopSettings_AccessWindow
    PopSettings_AccessWindow
      ( PopSettings_AccessWindow_AccessWindowUnspecified,
        PopSettings_AccessWindow_Disabled,
        PopSettings_AccessWindow_FromNowOn,
        PopSettings_AccessWindow_AllMail,
        ..
      ),

    -- * PopSettings_Disposition
    PopSettings_Disposition
      ( PopSettings_Disposition_DispositionUnspecified,
        PopSettings_Disposition_LeaveInInbox,
        PopSettings_Disposition_Archive,
        PopSettings_Disposition_Trash,
        PopSettings_Disposition_MarkRead,
        ..
      ),

    -- * SendAs_VerificationStatus
    SendAs_VerificationStatus
      ( SendAs_VerificationStatus_VerificationStatusUnspecified,
        SendAs_VerificationStatus_Accepted,
        SendAs_VerificationStatus_Pending,
        ..
      ),

    -- * SmtpMsa_SecurityMode
    SmtpMsa_SecurityMode
      ( SmtpMsa_SecurityMode_SecurityModeUnspecified,
        SmtpMsa_SecurityMode_None,
        SmtpMsa_SecurityMode_Ssl,
        SmtpMsa_SecurityMode_Starttls,
        ..
      ),

    -- * WatchRequest_LabelFilterAction
    WatchRequest_LabelFilterAction
      ( WatchRequest_LabelFilterAction_Include,
        WatchRequest_LabelFilterAction_Exclude,
        ..
      ),

    -- * WatchRequest_LabelFilterBehavior
    WatchRequest_LabelFilterBehavior
      ( WatchRequest_LabelFilterBehavior_Include,
        WatchRequest_LabelFilterBehavior_Exclude,
        ..
      ),

    -- * UsersDraftsGetFormat
    UsersDraftsGetFormat
      ( UsersDraftsGetFormat_Minimal,
        UsersDraftsGetFormat_Full,
        UsersDraftsGetFormat_Raw,
        UsersDraftsGetFormat_Metadata,
        ..
      ),

    -- * UsersHistoryListHistoryTypes
    UsersHistoryListHistoryTypes
      ( UsersHistoryListHistoryTypes_MessageAdded,
        UsersHistoryListHistoryTypes_MessageDeleted,
        UsersHistoryListHistoryTypes_LabelAdded,
        UsersHistoryListHistoryTypes_LabelRemoved,
        ..
      ),

    -- * UsersMessagesGetFormat
    UsersMessagesGetFormat
      ( UsersMessagesGetFormat_Minimal,
        UsersMessagesGetFormat_Full,
        UsersMessagesGetFormat_Raw,
        UsersMessagesGetFormat_Metadata,
        ..
      ),

    -- * UsersMessagesImportInternalDateSource
    UsersMessagesImportInternalDateSource
      ( UsersMessagesImportInternalDateSource_ReceivedTime,
        UsersMessagesImportInternalDateSource_DateHeader,
        ..
      ),

    -- * UsersMessagesInsertInternalDateSource
    UsersMessagesInsertInternalDateSource
      ( UsersMessagesInsertInternalDateSource_ReceivedTime,
        UsersMessagesInsertInternalDateSource_DateHeader,
        ..
      ),

    -- * UsersThreadsGetFormat
    UsersThreadsGetFormat
      ( UsersThreadsGetFormat_Full,
        UsersThreadsGetFormat_Metadata,
        UsersThreadsGetFormat_Minimal,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The state that a message should be left in after it has been forwarded.
newtype AutoForwarding_Disposition = AutoForwarding_Disposition {fromAutoForwarding_Disposition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified disposition.
pattern AutoForwarding_Disposition_DispositionUnspecified :: AutoForwarding_Disposition
pattern AutoForwarding_Disposition_DispositionUnspecified = AutoForwarding_Disposition "dispositionUnspecified"

-- | Leave the message in the @INBOX@.
pattern AutoForwarding_Disposition_LeaveInInbox :: AutoForwarding_Disposition
pattern AutoForwarding_Disposition_LeaveInInbox = AutoForwarding_Disposition "leaveInInbox"

-- | Archive the message.
pattern AutoForwarding_Disposition_Archive :: AutoForwarding_Disposition
pattern AutoForwarding_Disposition_Archive = AutoForwarding_Disposition "archive"

-- | Move the message to the @TRASH@.
pattern AutoForwarding_Disposition_Trash :: AutoForwarding_Disposition
pattern AutoForwarding_Disposition_Trash = AutoForwarding_Disposition "trash"

-- | Leave the message in the @INBOX@ and mark it as read.
pattern AutoForwarding_Disposition_MarkRead :: AutoForwarding_Disposition
pattern AutoForwarding_Disposition_MarkRead = AutoForwarding_Disposition "markRead"

{-# COMPLETE
  AutoForwarding_Disposition_DispositionUnspecified,
  AutoForwarding_Disposition_LeaveInInbox,
  AutoForwarding_Disposition_Archive,
  AutoForwarding_Disposition_Trash,
  AutoForwarding_Disposition_MarkRead,
  AutoForwarding_Disposition
  #-}

-- | Output only. The current state of the key pair.
newtype CseKeyPair_EnablementState = CseKeyPair_EnablementState {fromCseKeyPair_EnablementState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The current state of the key pair is not set. The key pair is neither turned on nor turned off.
pattern CseKeyPair_EnablementState_StateUnspecified :: CseKeyPair_EnablementState
pattern CseKeyPair_EnablementState_StateUnspecified = CseKeyPair_EnablementState "stateUnspecified"

-- | The key pair is turned on. For any email messages that this key pair encrypts, Gmail decrypts the messages and signs any outgoing mail with the private key. To turn on a key pair, use the EnableCseKeyPair method.
pattern CseKeyPair_EnablementState_Enabled :: CseKeyPair_EnablementState
pattern CseKeyPair_EnablementState_Enabled = CseKeyPair_EnablementState "enabled"

-- | The key pair is turned off. Authenticated users cannot decrypt email messages nor sign outgoing messages. If a key pair is turned off for more than 30 days, you can permanently delete it. To turn off a key pair, use the DisableCseKeyPair method.
pattern CseKeyPair_EnablementState_Disabled :: CseKeyPair_EnablementState
pattern CseKeyPair_EnablementState_Disabled = CseKeyPair_EnablementState "disabled"

{-# COMPLETE
  CseKeyPair_EnablementState_StateUnspecified,
  CseKeyPair_EnablementState_Enabled,
  CseKeyPair_EnablementState_Disabled,
  CseKeyPair_EnablementState
  #-}

-- | Indicates whether this address has been verified and can act as a delegate for the account. Read-only.
newtype Delegate_VerificationStatus = Delegate_VerificationStatus {fromDelegate_VerificationStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified verification status.
pattern Delegate_VerificationStatus_VerificationStatusUnspecified :: Delegate_VerificationStatus
pattern Delegate_VerificationStatus_VerificationStatusUnspecified = Delegate_VerificationStatus "verificationStatusUnspecified"

-- | The address can act a delegate for the account.
pattern Delegate_VerificationStatus_Accepted :: Delegate_VerificationStatus
pattern Delegate_VerificationStatus_Accepted = Delegate_VerificationStatus "accepted"

-- | A verification request was mailed to the address, and the owner has not yet accepted it.
pattern Delegate_VerificationStatus_Pending :: Delegate_VerificationStatus
pattern Delegate_VerificationStatus_Pending = Delegate_VerificationStatus "pending"

-- | A verification request was mailed to the address, and the owner rejected it.
pattern Delegate_VerificationStatus_Rejected :: Delegate_VerificationStatus
pattern Delegate_VerificationStatus_Rejected = Delegate_VerificationStatus "rejected"

-- | A verification request was mailed to the address, and it expired without verification.
pattern Delegate_VerificationStatus_Expired :: Delegate_VerificationStatus
pattern Delegate_VerificationStatus_Expired = Delegate_VerificationStatus "expired"

{-# COMPLETE
  Delegate_VerificationStatus_VerificationStatusUnspecified,
  Delegate_VerificationStatus_Accepted,
  Delegate_VerificationStatus_Pending,
  Delegate_VerificationStatus_Rejected,
  Delegate_VerificationStatus_Expired,
  Delegate_VerificationStatus
  #-}

-- | How the message size in bytes should be in relation to the size field.
newtype FilterCriteria_SizeComparison = FilterCriteria_SizeComparison {fromFilterCriteria_SizeComparison :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern FilterCriteria_SizeComparison_Unspecified :: FilterCriteria_SizeComparison
pattern FilterCriteria_SizeComparison_Unspecified = FilterCriteria_SizeComparison "unspecified"

-- | Find messages smaller than the given size.
pattern FilterCriteria_SizeComparison_Smaller :: FilterCriteria_SizeComparison
pattern FilterCriteria_SizeComparison_Smaller = FilterCriteria_SizeComparison "smaller"

-- | Find messages larger than the given size.
pattern FilterCriteria_SizeComparison_Larger :: FilterCriteria_SizeComparison
pattern FilterCriteria_SizeComparison_Larger = FilterCriteria_SizeComparison "larger"

{-# COMPLETE
  FilterCriteria_SizeComparison_Unspecified,
  FilterCriteria_SizeComparison_Smaller,
  FilterCriteria_SizeComparison_Larger,
  FilterCriteria_SizeComparison
  #-}

-- | Indicates whether this address has been verified and is usable for forwarding. Read-only.
newtype ForwardingAddress_VerificationStatus = ForwardingAddress_VerificationStatus {fromForwardingAddress_VerificationStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified verification status.
pattern ForwardingAddress_VerificationStatus_VerificationStatusUnspecified :: ForwardingAddress_VerificationStatus
pattern ForwardingAddress_VerificationStatus_VerificationStatusUnspecified = ForwardingAddress_VerificationStatus "verificationStatusUnspecified"

-- | The address is ready to use for forwarding.
pattern ForwardingAddress_VerificationStatus_Accepted :: ForwardingAddress_VerificationStatus
pattern ForwardingAddress_VerificationStatus_Accepted = ForwardingAddress_VerificationStatus "accepted"

-- | The address is awaiting verification by the owner.
pattern ForwardingAddress_VerificationStatus_Pending :: ForwardingAddress_VerificationStatus
pattern ForwardingAddress_VerificationStatus_Pending = ForwardingAddress_VerificationStatus "pending"

{-# COMPLETE
  ForwardingAddress_VerificationStatus_VerificationStatusUnspecified,
  ForwardingAddress_VerificationStatus_Accepted,
  ForwardingAddress_VerificationStatus_Pending,
  ForwardingAddress_VerificationStatus
  #-}

-- | The action that will be executed on a message when it is marked as deleted and expunged from the last visible IMAP folder.
newtype ImapSettings_ExpungeBehavior = ImapSettings_ExpungeBehavior {fromImapSettings_ExpungeBehavior :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified behavior.
pattern ImapSettings_ExpungeBehavior_ExpungeBehaviorUnspecified :: ImapSettings_ExpungeBehavior
pattern ImapSettings_ExpungeBehavior_ExpungeBehaviorUnspecified = ImapSettings_ExpungeBehavior "expungeBehaviorUnspecified"

-- | Archive messages marked as deleted.
pattern ImapSettings_ExpungeBehavior_Archive :: ImapSettings_ExpungeBehavior
pattern ImapSettings_ExpungeBehavior_Archive = ImapSettings_ExpungeBehavior "archive"

-- | Move messages marked as deleted to the trash.
pattern ImapSettings_ExpungeBehavior_Trash :: ImapSettings_ExpungeBehavior
pattern ImapSettings_ExpungeBehavior_Trash = ImapSettings_ExpungeBehavior "trash"

-- | Immediately and permanently delete messages marked as deleted. The expunged messages cannot be recovered.
pattern ImapSettings_ExpungeBehavior_DeleteForever :: ImapSettings_ExpungeBehavior
pattern ImapSettings_ExpungeBehavior_DeleteForever = ImapSettings_ExpungeBehavior "deleteForever"

{-# COMPLETE
  ImapSettings_ExpungeBehavior_ExpungeBehaviorUnspecified,
  ImapSettings_ExpungeBehavior_Archive,
  ImapSettings_ExpungeBehavior_Trash,
  ImapSettings_ExpungeBehavior_DeleteForever,
  ImapSettings_ExpungeBehavior
  #-}

-- | The visibility of the label in the label list in the Gmail web interface.
newtype Label_LabelListVisibility = Label_LabelListVisibility {fromLabel_LabelListVisibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Show the label in the label list.
pattern Label_LabelListVisibility_LabelShow :: Label_LabelListVisibility
pattern Label_LabelListVisibility_LabelShow = Label_LabelListVisibility "labelShow"

-- | Show the label if there are any unread messages with that label.
pattern Label_LabelListVisibility_LabelShowIfUnread :: Label_LabelListVisibility
pattern Label_LabelListVisibility_LabelShowIfUnread = Label_LabelListVisibility "labelShowIfUnread"

-- | Do not show the label in the label list.
pattern Label_LabelListVisibility_LabelHide :: Label_LabelListVisibility
pattern Label_LabelListVisibility_LabelHide = Label_LabelListVisibility "labelHide"

{-# COMPLETE
  Label_LabelListVisibility_LabelShow,
  Label_LabelListVisibility_LabelShowIfUnread,
  Label_LabelListVisibility_LabelHide,
  Label_LabelListVisibility
  #-}

-- | The visibility of messages with this label in the message list in the Gmail web interface.
newtype Label_MessageListVisibility = Label_MessageListVisibility {fromLabel_MessageListVisibility :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Show the label in the message list.
pattern Label_MessageListVisibility_Show :: Label_MessageListVisibility
pattern Label_MessageListVisibility_Show = Label_MessageListVisibility "show"

-- | Do not show the label in the message list.
pattern Label_MessageListVisibility_Hide :: Label_MessageListVisibility
pattern Label_MessageListVisibility_Hide = Label_MessageListVisibility "hide"

{-# COMPLETE
  Label_MessageListVisibility_Show,
  Label_MessageListVisibility_Hide,
  Label_MessageListVisibility
  #-}

-- | The owner type for the label. User labels are created by the user and can be modified and deleted by the user and can be applied to any message or thread. System labels are internally created and cannot be added, modified, or deleted. System labels may be able to be applied to or removed from messages and threads under some circumstances but this is not guaranteed. For example, users can apply and remove the @INBOX@ and @UNREAD@ labels from messages and threads, but cannot apply or remove the @DRAFTS@ or @SENT@ labels from messages or threads.
newtype Label_Type = Label_Type {fromLabel_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Labels created by Gmail.
pattern Label_Type_System :: Label_Type
pattern Label_Type_System = Label_Type "system"

-- | Custom labels created by the user or application.
pattern Label_Type_User :: Label_Type
pattern Label_Type_User = Label_Type "user"

{-# COMPLETE
  Label_Type_System,
  Label_Type_User,
  Label_Type
  #-}

-- | The range of messages which are accessible via POP.
newtype PopSettings_AccessWindow = PopSettings_AccessWindow {fromPopSettings_AccessWindow :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified range.
pattern PopSettings_AccessWindow_AccessWindowUnspecified :: PopSettings_AccessWindow
pattern PopSettings_AccessWindow_AccessWindowUnspecified = PopSettings_AccessWindow "accessWindowUnspecified"

-- | Indicates that no messages are accessible via POP.
pattern PopSettings_AccessWindow_Disabled :: PopSettings_AccessWindow
pattern PopSettings_AccessWindow_Disabled = PopSettings_AccessWindow "disabled"

-- | Indicates that unfetched messages received after some past point in time are accessible via POP.
pattern PopSettings_AccessWindow_FromNowOn :: PopSettings_AccessWindow
pattern PopSettings_AccessWindow_FromNowOn = PopSettings_AccessWindow "fromNowOn"

-- | Indicates that all unfetched messages are accessible via POP.
pattern PopSettings_AccessWindow_AllMail :: PopSettings_AccessWindow
pattern PopSettings_AccessWindow_AllMail = PopSettings_AccessWindow "allMail"

{-# COMPLETE
  PopSettings_AccessWindow_AccessWindowUnspecified,
  PopSettings_AccessWindow_Disabled,
  PopSettings_AccessWindow_FromNowOn,
  PopSettings_AccessWindow_AllMail,
  PopSettings_AccessWindow
  #-}

-- | The action that will be executed on a message after it has been fetched via POP.
newtype PopSettings_Disposition = PopSettings_Disposition {fromPopSettings_Disposition :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified disposition.
pattern PopSettings_Disposition_DispositionUnspecified :: PopSettings_Disposition
pattern PopSettings_Disposition_DispositionUnspecified = PopSettings_Disposition "dispositionUnspecified"

-- | Leave the message in the @INBOX@.
pattern PopSettings_Disposition_LeaveInInbox :: PopSettings_Disposition
pattern PopSettings_Disposition_LeaveInInbox = PopSettings_Disposition "leaveInInbox"

-- | Archive the message.
pattern PopSettings_Disposition_Archive :: PopSettings_Disposition
pattern PopSettings_Disposition_Archive = PopSettings_Disposition "archive"

-- | Move the message to the @TRASH@.
pattern PopSettings_Disposition_Trash :: PopSettings_Disposition
pattern PopSettings_Disposition_Trash = PopSettings_Disposition "trash"

-- | Leave the message in the @INBOX@ and mark it as read.
pattern PopSettings_Disposition_MarkRead :: PopSettings_Disposition
pattern PopSettings_Disposition_MarkRead = PopSettings_Disposition "markRead"

{-# COMPLETE
  PopSettings_Disposition_DispositionUnspecified,
  PopSettings_Disposition_LeaveInInbox,
  PopSettings_Disposition_Archive,
  PopSettings_Disposition_Trash,
  PopSettings_Disposition_MarkRead,
  PopSettings_Disposition
  #-}

-- | Indicates whether this address has been verified for use as a send-as alias. Read-only. This setting only applies to custom \"from\" aliases.
newtype SendAs_VerificationStatus = SendAs_VerificationStatus {fromSendAs_VerificationStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified verification status.
pattern SendAs_VerificationStatus_VerificationStatusUnspecified :: SendAs_VerificationStatus
pattern SendAs_VerificationStatus_VerificationStatusUnspecified = SendAs_VerificationStatus "verificationStatusUnspecified"

-- | The address is ready to use as a send-as alias.
pattern SendAs_VerificationStatus_Accepted :: SendAs_VerificationStatus
pattern SendAs_VerificationStatus_Accepted = SendAs_VerificationStatus "accepted"

-- | The address is awaiting verification by the owner.
pattern SendAs_VerificationStatus_Pending :: SendAs_VerificationStatus
pattern SendAs_VerificationStatus_Pending = SendAs_VerificationStatus "pending"

{-# COMPLETE
  SendAs_VerificationStatus_VerificationStatusUnspecified,
  SendAs_VerificationStatus_Accepted,
  SendAs_VerificationStatus_Pending,
  SendAs_VerificationStatus
  #-}

-- | The protocol that will be used to secure communication with the SMTP service. Required.
newtype SmtpMsa_SecurityMode = SmtpMsa_SecurityMode {fromSmtpMsa_SecurityMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unspecified security mode.
pattern SmtpMsa_SecurityMode_SecurityModeUnspecified :: SmtpMsa_SecurityMode
pattern SmtpMsa_SecurityMode_SecurityModeUnspecified = SmtpMsa_SecurityMode "securityModeUnspecified"

-- | Communication with the remote SMTP service is unsecured. Requires port 25.
pattern SmtpMsa_SecurityMode_None :: SmtpMsa_SecurityMode
pattern SmtpMsa_SecurityMode_None = SmtpMsa_SecurityMode "none"

-- | Communication with the remote SMTP service is secured using SSL.
pattern SmtpMsa_SecurityMode_Ssl :: SmtpMsa_SecurityMode
pattern SmtpMsa_SecurityMode_Ssl = SmtpMsa_SecurityMode "ssl"

-- | Communication with the remote SMTP service is secured using STARTTLS.
pattern SmtpMsa_SecurityMode_Starttls :: SmtpMsa_SecurityMode
pattern SmtpMsa_SecurityMode_Starttls = SmtpMsa_SecurityMode "starttls"

{-# COMPLETE
  SmtpMsa_SecurityMode_SecurityModeUnspecified,
  SmtpMsa_SecurityMode_None,
  SmtpMsa_SecurityMode_Ssl,
  SmtpMsa_SecurityMode_Starttls,
  SmtpMsa_SecurityMode
  #-}

-- | Filtering behavior of @labelIds list@ specified. This field is deprecated because it caused incorrect behavior in some cases; use @label_filter_behavior@ instead.
newtype WatchRequest_LabelFilterAction = WatchRequest_LabelFilterAction {fromWatchRequest_LabelFilterAction :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Only get push notifications for message changes relating to labelIds specified.
pattern WatchRequest_LabelFilterAction_Include :: WatchRequest_LabelFilterAction
pattern WatchRequest_LabelFilterAction_Include = WatchRequest_LabelFilterAction "include"

-- | Get push notifications for all message changes except those relating to labelIds specified.
pattern WatchRequest_LabelFilterAction_Exclude :: WatchRequest_LabelFilterAction
pattern WatchRequest_LabelFilterAction_Exclude = WatchRequest_LabelFilterAction "exclude"

{-# COMPLETE
  WatchRequest_LabelFilterAction_Include,
  WatchRequest_LabelFilterAction_Exclude,
  WatchRequest_LabelFilterAction
  #-}

-- | Filtering behavior of @labelIds list@ specified. This field replaces @label_filter_action@; if set, @label_filter_action@ is ignored.
newtype WatchRequest_LabelFilterBehavior = WatchRequest_LabelFilterBehavior {fromWatchRequest_LabelFilterBehavior :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Only get push notifications for message changes relating to labelIds specified.
pattern WatchRequest_LabelFilterBehavior_Include :: WatchRequest_LabelFilterBehavior
pattern WatchRequest_LabelFilterBehavior_Include = WatchRequest_LabelFilterBehavior "include"

-- | Get push notifications for all message changes except those relating to labelIds specified.
pattern WatchRequest_LabelFilterBehavior_Exclude :: WatchRequest_LabelFilterBehavior
pattern WatchRequest_LabelFilterBehavior_Exclude = WatchRequest_LabelFilterBehavior "exclude"

{-# COMPLETE
  WatchRequest_LabelFilterBehavior_Include,
  WatchRequest_LabelFilterBehavior_Exclude,
  WatchRequest_LabelFilterBehavior
  #-}

-- | The format to return the draft in.
newtype UsersDraftsGetFormat = UsersDraftsGetFormat {fromUsersDraftsGetFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Returns only email message ID and labels; does not return the email headers, body, or payload.
pattern UsersDraftsGetFormat_Minimal :: UsersDraftsGetFormat
pattern UsersDraftsGetFormat_Minimal = UsersDraftsGetFormat "minimal"

-- | Returns the full email message data with body content parsed in the @payload@ field; the @raw@ field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.
pattern UsersDraftsGetFormat_Full :: UsersDraftsGetFormat
pattern UsersDraftsGetFormat_Full = UsersDraftsGetFormat "full"

-- | Returns the full email message data with body content in the @raw@ field as a base64url encoded string; the @payload@ field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.
pattern UsersDraftsGetFormat_Raw :: UsersDraftsGetFormat
pattern UsersDraftsGetFormat_Raw = UsersDraftsGetFormat "raw"

-- | Returns only email message ID, labels, and email headers.
pattern UsersDraftsGetFormat_Metadata :: UsersDraftsGetFormat
pattern UsersDraftsGetFormat_Metadata = UsersDraftsGetFormat "metadata"

{-# COMPLETE
  UsersDraftsGetFormat_Minimal,
  UsersDraftsGetFormat_Full,
  UsersDraftsGetFormat_Raw,
  UsersDraftsGetFormat_Metadata,
  UsersDraftsGetFormat
  #-}

-- | History types to be returned by the function
newtype UsersHistoryListHistoryTypes = UsersHistoryListHistoryTypes {fromUsersHistoryListHistoryTypes :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

pattern UsersHistoryListHistoryTypes_MessageAdded :: UsersHistoryListHistoryTypes
pattern UsersHistoryListHistoryTypes_MessageAdded = UsersHistoryListHistoryTypes "messageAdded"

pattern UsersHistoryListHistoryTypes_MessageDeleted :: UsersHistoryListHistoryTypes
pattern UsersHistoryListHistoryTypes_MessageDeleted = UsersHistoryListHistoryTypes "messageDeleted"

pattern UsersHistoryListHistoryTypes_LabelAdded :: UsersHistoryListHistoryTypes
pattern UsersHistoryListHistoryTypes_LabelAdded = UsersHistoryListHistoryTypes "labelAdded"

pattern UsersHistoryListHistoryTypes_LabelRemoved :: UsersHistoryListHistoryTypes
pattern UsersHistoryListHistoryTypes_LabelRemoved = UsersHistoryListHistoryTypes "labelRemoved"

{-# COMPLETE
  UsersHistoryListHistoryTypes_MessageAdded,
  UsersHistoryListHistoryTypes_MessageDeleted,
  UsersHistoryListHistoryTypes_LabelAdded,
  UsersHistoryListHistoryTypes_LabelRemoved,
  UsersHistoryListHistoryTypes
  #-}

-- | The format to return the message in.
newtype UsersMessagesGetFormat = UsersMessagesGetFormat {fromUsersMessagesGetFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Returns only email message ID and labels; does not return the email headers, body, or payload.
pattern UsersMessagesGetFormat_Minimal :: UsersMessagesGetFormat
pattern UsersMessagesGetFormat_Minimal = UsersMessagesGetFormat "minimal"

-- | Returns the full email message data with body content parsed in the @payload@ field; the @raw@ field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.
pattern UsersMessagesGetFormat_Full :: UsersMessagesGetFormat
pattern UsersMessagesGetFormat_Full = UsersMessagesGetFormat "full"

-- | Returns the full email message data with body content in the @raw@ field as a base64url encoded string; the @payload@ field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.
pattern UsersMessagesGetFormat_Raw :: UsersMessagesGetFormat
pattern UsersMessagesGetFormat_Raw = UsersMessagesGetFormat "raw"

-- | Returns only email message ID, labels, and email headers.
pattern UsersMessagesGetFormat_Metadata :: UsersMessagesGetFormat
pattern UsersMessagesGetFormat_Metadata = UsersMessagesGetFormat "metadata"

{-# COMPLETE
  UsersMessagesGetFormat_Minimal,
  UsersMessagesGetFormat_Full,
  UsersMessagesGetFormat_Raw,
  UsersMessagesGetFormat_Metadata,
  UsersMessagesGetFormat
  #-}

-- | Source for Gmail\'s internal date of the message.
newtype UsersMessagesImportInternalDateSource = UsersMessagesImportInternalDateSource {fromUsersMessagesImportInternalDateSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Internal message date set to current time when received by Gmail.
pattern UsersMessagesImportInternalDateSource_ReceivedTime :: UsersMessagesImportInternalDateSource
pattern UsersMessagesImportInternalDateSource_ReceivedTime = UsersMessagesImportInternalDateSource "receivedTime"

-- | Internal message time based on \'Date\' header in email, when valid.
pattern UsersMessagesImportInternalDateSource_DateHeader :: UsersMessagesImportInternalDateSource
pattern UsersMessagesImportInternalDateSource_DateHeader = UsersMessagesImportInternalDateSource "dateHeader"

{-# COMPLETE
  UsersMessagesImportInternalDateSource_ReceivedTime,
  UsersMessagesImportInternalDateSource_DateHeader,
  UsersMessagesImportInternalDateSource
  #-}

-- | Source for Gmail\'s internal date of the message.
newtype UsersMessagesInsertInternalDateSource = UsersMessagesInsertInternalDateSource {fromUsersMessagesInsertInternalDateSource :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Internal message date set to current time when received by Gmail.
pattern UsersMessagesInsertInternalDateSource_ReceivedTime :: UsersMessagesInsertInternalDateSource
pattern UsersMessagesInsertInternalDateSource_ReceivedTime = UsersMessagesInsertInternalDateSource "receivedTime"

-- | Internal message time based on \'Date\' header in email, when valid.
pattern UsersMessagesInsertInternalDateSource_DateHeader :: UsersMessagesInsertInternalDateSource
pattern UsersMessagesInsertInternalDateSource_DateHeader = UsersMessagesInsertInternalDateSource "dateHeader"

{-# COMPLETE
  UsersMessagesInsertInternalDateSource_ReceivedTime,
  UsersMessagesInsertInternalDateSource_DateHeader,
  UsersMessagesInsertInternalDateSource
  #-}

-- | The format to return the messages in.
newtype UsersThreadsGetFormat = UsersThreadsGetFormat {fromUsersThreadsGetFormat :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Returns the full email message data with body content parsed in the @payload@ field; the @raw@ field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.
pattern UsersThreadsGetFormat_Full :: UsersThreadsGetFormat
pattern UsersThreadsGetFormat_Full = UsersThreadsGetFormat "full"

-- | Returns only email message IDs, labels, and email headers.
pattern UsersThreadsGetFormat_Metadata :: UsersThreadsGetFormat
pattern UsersThreadsGetFormat_Metadata = UsersThreadsGetFormat "metadata"

-- | Returns only email message IDs and labels; does not return the email headers, body, or payload.
pattern UsersThreadsGetFormat_Minimal :: UsersThreadsGetFormat
pattern UsersThreadsGetFormat_Minimal = UsersThreadsGetFormat "minimal"

{-# COMPLETE
  UsersThreadsGetFormat_Full,
  UsersThreadsGetFormat_Metadata,
  UsersThreadsGetFormat_Minimal,
  UsersThreadsGetFormat
  #-}
