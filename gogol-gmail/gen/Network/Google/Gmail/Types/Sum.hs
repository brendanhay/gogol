{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Gmail.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Gmail.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | How the message size in bytes should be in relation to the size field.
data FilterCriteriaSizeComparison
    = Unspecified
      -- ^ @unspecified@
    | Smaller
      -- ^ @smaller@
      -- Find messages smaller than the given size.
    | Larger
      -- ^ @larger@
      -- Find messages larger than the given size.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable FilterCriteriaSizeComparison

instance FromHttpApiData FilterCriteriaSizeComparison where
    parseQueryParam = \case
        "unspecified" -> Right Unspecified
        "smaller" -> Right Smaller
        "larger" -> Right Larger
        x -> Left ("Unable to parse FilterCriteriaSizeComparison from: " <> x)

instance ToHttpApiData FilterCriteriaSizeComparison where
    toQueryParam = \case
        Unspecified -> "unspecified"
        Smaller -> "smaller"
        Larger -> "larger"

instance FromJSON FilterCriteriaSizeComparison where
    parseJSON = parseJSONText "FilterCriteriaSizeComparison"

instance ToJSON FilterCriteriaSizeComparison where
    toJSON = toJSONText

-- | The format to return the message in.
data UsersMessagesGetFormat
    = Minimal
      -- ^ @minimal@
      -- Returns only email message ID and labels; does not return the email
      -- headers, body, or payload.
    | Full
      -- ^ @full@
      -- Returns the full email message data with body content parsed in the
      -- \`payload\` field; the \`raw\` field is not used. Format cannot be used
      -- when accessing the api using the gmail.metadata scope.
    | Raw
      -- ^ @raw@
      -- Returns the full email message data with body content in the \`raw\`
      -- field as a base64url encoded string; the \`payload\` field is not used.
      -- Format cannot be used when accessing the api using the gmail.metadata
      -- scope.
    | Metadata
      -- ^ @metadata@
      -- Returns only email message ID, labels, and email headers.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersMessagesGetFormat

instance FromHttpApiData UsersMessagesGetFormat where
    parseQueryParam = \case
        "minimal" -> Right Minimal
        "full" -> Right Full
        "raw" -> Right Raw
        "metadata" -> Right Metadata
        x -> Left ("Unable to parse UsersMessagesGetFormat from: " <> x)

instance ToHttpApiData UsersMessagesGetFormat where
    toQueryParam = \case
        Minimal -> "minimal"
        Full -> "full"
        Raw -> "raw"
        Metadata -> "metadata"

instance FromJSON UsersMessagesGetFormat where
    parseJSON = parseJSONText "UsersMessagesGetFormat"

instance ToJSON UsersMessagesGetFormat where
    toJSON = toJSONText

-- | The range of messages which are accessible via POP.
data PopSettingsAccessWindow
    = AccessWindowUnspecified
      -- ^ @accessWindowUnspecified@
      -- Unspecified range.
    | Disabled
      -- ^ @disabled@
      -- Indicates that no messages are accessible via POP.
    | FromNowOn
      -- ^ @fromNowOn@
      -- Indicates that unfetched messages received after some past point in time
      -- are accessible via POP.
    | AllMail
      -- ^ @allMail@
      -- Indicates that all unfetched messages are accessible via POP.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PopSettingsAccessWindow

instance FromHttpApiData PopSettingsAccessWindow where
    parseQueryParam = \case
        "accessWindowUnspecified" -> Right AccessWindowUnspecified
        "disabled" -> Right Disabled
        "fromNowOn" -> Right FromNowOn
        "allMail" -> Right AllMail
        x -> Left ("Unable to parse PopSettingsAccessWindow from: " <> x)

instance ToHttpApiData PopSettingsAccessWindow where
    toQueryParam = \case
        AccessWindowUnspecified -> "accessWindowUnspecified"
        Disabled -> "disabled"
        FromNowOn -> "fromNowOn"
        AllMail -> "allMail"

instance FromJSON PopSettingsAccessWindow where
    parseJSON = parseJSONText "PopSettingsAccessWindow"

instance ToJSON PopSettingsAccessWindow where
    toJSON = toJSONText

-- | Indicates whether this address has been verified and is usable for
-- forwarding. Read-only.
data ForwardingAddressVerificationStatus
    = VerificationStatusUnspecified
      -- ^ @verificationStatusUnspecified@
      -- Unspecified verification status.
    | Accepted
      -- ^ @accepted@
      -- The address is ready to use for forwarding.
    | Pending
      -- ^ @pending@
      -- The address is awaiting verification by the owner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ForwardingAddressVerificationStatus

instance FromHttpApiData ForwardingAddressVerificationStatus where
    parseQueryParam = \case
        "verificationStatusUnspecified" -> Right VerificationStatusUnspecified
        "accepted" -> Right Accepted
        "pending" -> Right Pending
        x -> Left ("Unable to parse ForwardingAddressVerificationStatus from: " <> x)

instance ToHttpApiData ForwardingAddressVerificationStatus where
    toQueryParam = \case
        VerificationStatusUnspecified -> "verificationStatusUnspecified"
        Accepted -> "accepted"
        Pending -> "pending"

instance FromJSON ForwardingAddressVerificationStatus where
    parseJSON = parseJSONText "ForwardingAddressVerificationStatus"

instance ToJSON ForwardingAddressVerificationStatus where
    toJSON = toJSONText

-- | The state that a message should be left in after it has been forwarded.
data AutoForwardingDisPosition
    = DisPositionUnspecified
      -- ^ @dispositionUnspecified@
      -- Unspecified disposition.
    | LeaveInInbox
      -- ^ @leaveInInbox@
      -- Leave the message in the \`INBOX\`.
    | Archive
      -- ^ @archive@
      -- Archive the message.
    | Trash
      -- ^ @trash@
      -- Move the message to the \`TRASH\`.
    | MarkRead
      -- ^ @markRead@
      -- Leave the message in the \`INBOX\` and mark it as read.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AutoForwardingDisPosition

instance FromHttpApiData AutoForwardingDisPosition where
    parseQueryParam = \case
        "dispositionUnspecified" -> Right DisPositionUnspecified
        "leaveInInbox" -> Right LeaveInInbox
        "archive" -> Right Archive
        "trash" -> Right Trash
        "markRead" -> Right MarkRead
        x -> Left ("Unable to parse AutoForwardingDisPosition from: " <> x)

instance ToHttpApiData AutoForwardingDisPosition where
    toQueryParam = \case
        DisPositionUnspecified -> "dispositionUnspecified"
        LeaveInInbox -> "leaveInInbox"
        Archive -> "archive"
        Trash -> "trash"
        MarkRead -> "markRead"

instance FromJSON AutoForwardingDisPosition where
    parseJSON = parseJSONText "AutoForwardingDisPosition"

instance ToJSON AutoForwardingDisPosition where
    toJSON = toJSONText

-- | History types to be returned by the function
data UsersHistoryListHistoryTypes
    = MessageAdded
      -- ^ @messageAdded@
    | MessageDeleted
      -- ^ @messageDeleted@
    | LabelAdded
      -- ^ @labelAdded@
    | LabelRemoved
      -- ^ @labelRemoved@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersHistoryListHistoryTypes

instance FromHttpApiData UsersHistoryListHistoryTypes where
    parseQueryParam = \case
        "messageAdded" -> Right MessageAdded
        "messageDeleted" -> Right MessageDeleted
        "labelAdded" -> Right LabelAdded
        "labelRemoved" -> Right LabelRemoved
        x -> Left ("Unable to parse UsersHistoryListHistoryTypes from: " <> x)

instance ToHttpApiData UsersHistoryListHistoryTypes where
    toQueryParam = \case
        MessageAdded -> "messageAdded"
        MessageDeleted -> "messageDeleted"
        LabelAdded -> "labelAdded"
        LabelRemoved -> "labelRemoved"

instance FromJSON UsersHistoryListHistoryTypes where
    parseJSON = parseJSONText "UsersHistoryListHistoryTypes"

instance ToJSON UsersHistoryListHistoryTypes where
    toJSON = toJSONText

-- | Indicates whether this address has been verified for use as a send-as
-- alias. Read-only. This setting only applies to custom \"from\" aliases.
data SendAsVerificationStatus
    = SAVSVerificationStatusUnspecified
      -- ^ @verificationStatusUnspecified@
      -- Unspecified verification status.
    | SAVSAccepted
      -- ^ @accepted@
      -- The address is ready to use as a send-as alias.
    | SAVSPending
      -- ^ @pending@
      -- The address is awaiting verification by the owner.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SendAsVerificationStatus

instance FromHttpApiData SendAsVerificationStatus where
    parseQueryParam = \case
        "verificationStatusUnspecified" -> Right SAVSVerificationStatusUnspecified
        "accepted" -> Right SAVSAccepted
        "pending" -> Right SAVSPending
        x -> Left ("Unable to parse SendAsVerificationStatus from: " <> x)

instance ToHttpApiData SendAsVerificationStatus where
    toQueryParam = \case
        SAVSVerificationStatusUnspecified -> "verificationStatusUnspecified"
        SAVSAccepted -> "accepted"
        SAVSPending -> "pending"

instance FromJSON SendAsVerificationStatus where
    parseJSON = parseJSONText "SendAsVerificationStatus"

instance ToJSON SendAsVerificationStatus where
    toJSON = toJSONText

-- | The owner type for the label. User labels are created by the user and
-- can be modified and deleted by the user and can be applied to any
-- message or thread. System labels are internally created and cannot be
-- added, modified, or deleted. System labels may be able to be applied to
-- or removed from messages and threads under some circumstances but this
-- is not guaranteed. For example, users can apply and remove the \`INBOX\`
-- and \`UNREAD\` labels from messages and threads, but cannot apply or
-- remove the \`DRAFTS\` or \`SENT\` labels from messages or threads.
data LabelType
    = System
      -- ^ @system@
      -- Labels created by Gmail.
    | User
      -- ^ @user@
      -- Custom labels created by the user or application.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LabelType

instance FromHttpApiData LabelType where
    parseQueryParam = \case
        "system" -> Right System
        "user" -> Right User
        x -> Left ("Unable to parse LabelType from: " <> x)

instance ToHttpApiData LabelType where
    toQueryParam = \case
        System -> "system"
        User -> "user"

instance FromJSON LabelType where
    parseJSON = parseJSONText "LabelType"

instance ToJSON LabelType where
    toJSON = toJSONText

-- | The format to return the draft in.
data UsersDraftsGetFormat
    = UDGFMinimal
      -- ^ @minimal@
      -- Returns only email message ID and labels; does not return the email
      -- headers, body, or payload.
    | UDGFFull
      -- ^ @full@
      -- Returns the full email message data with body content parsed in the
      -- \`payload\` field; the \`raw\` field is not used. Format cannot be used
      -- when accessing the api using the gmail.metadata scope.
    | UDGFRaw
      -- ^ @raw@
      -- Returns the full email message data with body content in the \`raw\`
      -- field as a base64url encoded string; the \`payload\` field is not used.
      -- Format cannot be used when accessing the api using the gmail.metadata
      -- scope.
    | UDGFMetadata
      -- ^ @metadata@
      -- Returns only email message ID, labels, and email headers.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersDraftsGetFormat

instance FromHttpApiData UsersDraftsGetFormat where
    parseQueryParam = \case
        "minimal" -> Right UDGFMinimal
        "full" -> Right UDGFFull
        "raw" -> Right UDGFRaw
        "metadata" -> Right UDGFMetadata
        x -> Left ("Unable to parse UsersDraftsGetFormat from: " <> x)

instance ToHttpApiData UsersDraftsGetFormat where
    toQueryParam = \case
        UDGFMinimal -> "minimal"
        UDGFFull -> "full"
        UDGFRaw -> "raw"
        UDGFMetadata -> "metadata"

instance FromJSON UsersDraftsGetFormat where
    parseJSON = parseJSONText "UsersDraftsGetFormat"

instance ToJSON UsersDraftsGetFormat where
    toJSON = toJSONText

-- | Source for Gmail\'s internal date of the message.
data UsersMessagesImportInternalDateSource
    = ReceivedTime
      -- ^ @receivedTime@
      -- Internal message date set to current time when received by Gmail.
    | DateHeader
      -- ^ @dateHeader@
      -- Internal message time based on \'Date\' header in email, when valid.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersMessagesImportInternalDateSource

instance FromHttpApiData UsersMessagesImportInternalDateSource where
    parseQueryParam = \case
        "receivedTime" -> Right ReceivedTime
        "dateHeader" -> Right DateHeader
        x -> Left ("Unable to parse UsersMessagesImportInternalDateSource from: " <> x)

instance ToHttpApiData UsersMessagesImportInternalDateSource where
    toQueryParam = \case
        ReceivedTime -> "receivedTime"
        DateHeader -> "dateHeader"

instance FromJSON UsersMessagesImportInternalDateSource where
    parseJSON = parseJSONText "UsersMessagesImportInternalDateSource"

instance ToJSON UsersMessagesImportInternalDateSource where
    toJSON = toJSONText

-- | The visibility of messages with this label in the message list in the
-- Gmail web interface.
data LabelMessageListVisibility
    = Show
      -- ^ @show@
      -- Show the label in the message list.
    | Hide
      -- ^ @hide@
      -- Do not show the label in the message list.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LabelMessageListVisibility

instance FromHttpApiData LabelMessageListVisibility where
    parseQueryParam = \case
        "show" -> Right Show
        "hide" -> Right Hide
        x -> Left ("Unable to parse LabelMessageListVisibility from: " <> x)

instance ToHttpApiData LabelMessageListVisibility where
    toQueryParam = \case
        Show -> "show"
        Hide -> "hide"

instance FromJSON LabelMessageListVisibility where
    parseJSON = parseJSONText "LabelMessageListVisibility"

instance ToJSON LabelMessageListVisibility where
    toJSON = toJSONText

-- | The visibility of the label in the label list in the Gmail web
-- interface.
data LabelLabelListVisibility
    = LabelShow
      -- ^ @labelShow@
      -- Show the label in the label list.
    | LabelShowIfUnread
      -- ^ @labelShowIfUnread@
      -- Show the label if there are any unread messages with that label.
    | LabelHide
      -- ^ @labelHide@
      -- Do not show the label in the label list.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LabelLabelListVisibility

instance FromHttpApiData LabelLabelListVisibility where
    parseQueryParam = \case
        "labelShow" -> Right LabelShow
        "labelShowIfUnread" -> Right LabelShowIfUnread
        "labelHide" -> Right LabelHide
        x -> Left ("Unable to parse LabelLabelListVisibility from: " <> x)

instance ToHttpApiData LabelLabelListVisibility where
    toQueryParam = \case
        LabelShow -> "labelShow"
        LabelShowIfUnread -> "labelShowIfUnread"
        LabelHide -> "labelHide"

instance FromJSON LabelLabelListVisibility where
    parseJSON = parseJSONText "LabelLabelListVisibility"

instance ToJSON LabelLabelListVisibility where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Indicates whether this address has been verified and can act as a
-- delegate for the account. Read-only.
data DelegateVerificationStatus
    = DVSVerificationStatusUnspecified
      -- ^ @verificationStatusUnspecified@
      -- Unspecified verification status.
    | DVSAccepted
      -- ^ @accepted@
      -- The address can act a delegate for the account.
    | DVSPending
      -- ^ @pending@
      -- A verification request was mailed to the address, and the owner has not
      -- yet accepted it.
    | DVSRejected
      -- ^ @rejected@
      -- A verification request was mailed to the address, and the owner rejected
      -- it.
    | DVSExpired
      -- ^ @expired@
      -- A verification request was mailed to the address, and it expired without
      -- verification.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DelegateVerificationStatus

instance FromHttpApiData DelegateVerificationStatus where
    parseQueryParam = \case
        "verificationStatusUnspecified" -> Right DVSVerificationStatusUnspecified
        "accepted" -> Right DVSAccepted
        "pending" -> Right DVSPending
        "rejected" -> Right DVSRejected
        "expired" -> Right DVSExpired
        x -> Left ("Unable to parse DelegateVerificationStatus from: " <> x)

instance ToHttpApiData DelegateVerificationStatus where
    toQueryParam = \case
        DVSVerificationStatusUnspecified -> "verificationStatusUnspecified"
        DVSAccepted -> "accepted"
        DVSPending -> "pending"
        DVSRejected -> "rejected"
        DVSExpired -> "expired"

instance FromJSON DelegateVerificationStatus where
    parseJSON = parseJSONText "DelegateVerificationStatus"

instance ToJSON DelegateVerificationStatus where
    toJSON = toJSONText

-- | The format to return the messages in.
data UsersThreadsGetFormat
    = UTGFFull
      -- ^ @full@
      -- Returns the full email message data with body content parsed in the
      -- \`payload\` field; the \`raw\` field is not used. Format cannot be used
      -- when accessing the api using the gmail.metadata scope.
    | UTGFMetadata
      -- ^ @metadata@
      -- Returns only email message IDs, labels, and email headers.
    | UTGFMinimal
      -- ^ @minimal@
      -- Returns only email message IDs and labels; does not return the email
      -- headers, body, or payload.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersThreadsGetFormat

instance FromHttpApiData UsersThreadsGetFormat where
    parseQueryParam = \case
        "full" -> Right UTGFFull
        "metadata" -> Right UTGFMetadata
        "minimal" -> Right UTGFMinimal
        x -> Left ("Unable to parse UsersThreadsGetFormat from: " <> x)

instance ToHttpApiData UsersThreadsGetFormat where
    toQueryParam = \case
        UTGFFull -> "full"
        UTGFMetadata -> "metadata"
        UTGFMinimal -> "minimal"

instance FromJSON UsersThreadsGetFormat where
    parseJSON = parseJSONText "UsersThreadsGetFormat"

instance ToJSON UsersThreadsGetFormat where
    toJSON = toJSONText

-- | The action that will be executed on a message after it has been fetched
-- via POP.
data PopSettingsDisPosition
    = PSDPDisPositionUnspecified
      -- ^ @dispositionUnspecified@
      -- Unspecified disposition.
    | PSDPLeaveInInbox
      -- ^ @leaveInInbox@
      -- Leave the message in the \`INBOX\`.
    | PSDPArchive
      -- ^ @archive@
      -- Archive the message.
    | PSDPTrash
      -- ^ @trash@
      -- Move the message to the \`TRASH\`.
    | PSDPMarkRead
      -- ^ @markRead@
      -- Leave the message in the \`INBOX\` and mark it as read.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PopSettingsDisPosition

instance FromHttpApiData PopSettingsDisPosition where
    parseQueryParam = \case
        "dispositionUnspecified" -> Right PSDPDisPositionUnspecified
        "leaveInInbox" -> Right PSDPLeaveInInbox
        "archive" -> Right PSDPArchive
        "trash" -> Right PSDPTrash
        "markRead" -> Right PSDPMarkRead
        x -> Left ("Unable to parse PopSettingsDisPosition from: " <> x)

instance ToHttpApiData PopSettingsDisPosition where
    toQueryParam = \case
        PSDPDisPositionUnspecified -> "dispositionUnspecified"
        PSDPLeaveInInbox -> "leaveInInbox"
        PSDPArchive -> "archive"
        PSDPTrash -> "trash"
        PSDPMarkRead -> "markRead"

instance FromJSON PopSettingsDisPosition where
    parseJSON = parseJSONText "PopSettingsDisPosition"

instance ToJSON PopSettingsDisPosition where
    toJSON = toJSONText

-- | Filtering behavior of labelIds list specified.
data WatchRequestLabelFilterAction
    = Include
      -- ^ @include@
      -- Only get push notifications for message changes relating to labelIds
      -- specified.
    | Exclude
      -- ^ @exclude@
      -- Get push notifications for all message changes except those relating to
      -- labelIds specified.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WatchRequestLabelFilterAction

instance FromHttpApiData WatchRequestLabelFilterAction where
    parseQueryParam = \case
        "include" -> Right Include
        "exclude" -> Right Exclude
        x -> Left ("Unable to parse WatchRequestLabelFilterAction from: " <> x)

instance ToHttpApiData WatchRequestLabelFilterAction where
    toQueryParam = \case
        Include -> "include"
        Exclude -> "exclude"

instance FromJSON WatchRequestLabelFilterAction where
    parseJSON = parseJSONText "WatchRequestLabelFilterAction"

instance ToJSON WatchRequestLabelFilterAction where
    toJSON = toJSONText

-- | The action that will be executed on a message when it is marked as
-- deleted and expunged from the last visible IMAP folder.
data ImapSettingsExpungeBehavior
    = ISEBExpungeBehaviorUnspecified
      -- ^ @expungeBehaviorUnspecified@
      -- Unspecified behavior.
    | ISEBArchive
      -- ^ @archive@
      -- Archive messages marked as deleted.
    | ISEBTrash
      -- ^ @trash@
      -- Move messages marked as deleted to the trash.
    | ISEBDeleteForever
      -- ^ @deleteForever@
      -- Immediately and permanently delete messages marked as deleted. The
      -- expunged messages cannot be recovered.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImapSettingsExpungeBehavior

instance FromHttpApiData ImapSettingsExpungeBehavior where
    parseQueryParam = \case
        "expungeBehaviorUnspecified" -> Right ISEBExpungeBehaviorUnspecified
        "archive" -> Right ISEBArchive
        "trash" -> Right ISEBTrash
        "deleteForever" -> Right ISEBDeleteForever
        x -> Left ("Unable to parse ImapSettingsExpungeBehavior from: " <> x)

instance ToHttpApiData ImapSettingsExpungeBehavior where
    toQueryParam = \case
        ISEBExpungeBehaviorUnspecified -> "expungeBehaviorUnspecified"
        ISEBArchive -> "archive"
        ISEBTrash -> "trash"
        ISEBDeleteForever -> "deleteForever"

instance FromJSON ImapSettingsExpungeBehavior where
    parseJSON = parseJSONText "ImapSettingsExpungeBehavior"

instance ToJSON ImapSettingsExpungeBehavior where
    toJSON = toJSONText

-- | The protocol that will be used to secure communication with the SMTP
-- service. Required.
data SmtpMsaSecurityMode
    = SecurityModeUnspecified
      -- ^ @securityModeUnspecified@
      -- Unspecified security mode.
    | None
      -- ^ @none@
      -- Communication with the remote SMTP service is unsecured. Requires port
      -- 25.
    | SSL
      -- ^ @ssl@
      -- Communication with the remote SMTP service is secured using SSL.
    | Starttls
      -- ^ @starttls@
      -- Communication with the remote SMTP service is secured using STARTTLS.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SmtpMsaSecurityMode

instance FromHttpApiData SmtpMsaSecurityMode where
    parseQueryParam = \case
        "securityModeUnspecified" -> Right SecurityModeUnspecified
        "none" -> Right None
        "ssl" -> Right SSL
        "starttls" -> Right Starttls
        x -> Left ("Unable to parse SmtpMsaSecurityMode from: " <> x)

instance ToHttpApiData SmtpMsaSecurityMode where
    toQueryParam = \case
        SecurityModeUnspecified -> "securityModeUnspecified"
        None -> "none"
        SSL -> "ssl"
        Starttls -> "starttls"

instance FromJSON SmtpMsaSecurityMode where
    parseJSON = parseJSONText "SmtpMsaSecurityMode"

instance ToJSON SmtpMsaSecurityMode where
    toJSON = toJSONText

-- | Source for Gmail\'s internal date of the message.
data UsersMessagesInsertInternalDateSource
    = UMIIDSReceivedTime
      -- ^ @receivedTime@
      -- Internal message date set to current time when received by Gmail.
    | UMIIDSDateHeader
      -- ^ @dateHeader@
      -- Internal message time based on \'Date\' header in email, when valid.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable UsersMessagesInsertInternalDateSource

instance FromHttpApiData UsersMessagesInsertInternalDateSource where
    parseQueryParam = \case
        "receivedTime" -> Right UMIIDSReceivedTime
        "dateHeader" -> Right UMIIDSDateHeader
        x -> Left ("Unable to parse UsersMessagesInsertInternalDateSource from: " <> x)

instance ToHttpApiData UsersMessagesInsertInternalDateSource where
    toQueryParam = \case
        UMIIDSReceivedTime -> "receivedTime"
        UMIIDSDateHeader -> "dateHeader"

instance FromJSON UsersMessagesInsertInternalDateSource where
    parseJSON = parseJSONText "UsersMessagesInsertInternalDateSource"

instance ToJSON UsersMessagesInsertInternalDateSource where
    toJSON = toJSONText
