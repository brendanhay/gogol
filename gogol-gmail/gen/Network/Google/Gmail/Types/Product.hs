{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Gmail.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Gmail.Types.Product where

import           Network.Google.Gmail.Types.Sum
import           Network.Google.Prelude

-- | A draft email in the user\'s mailbox.
--
-- /See:/ 'draft' smart constructor.
data Draft = Draft
    { _dId      :: !(Maybe Text)
    , _dMessage :: !(Maybe (Maybe Message))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Draft' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dId'
--
-- * 'dMessage'
draft
    :: Draft
draft =
    Draft
    { _dId = Nothing
    , _dMessage = Nothing
    }

-- | The immutable ID of the draft.
dId :: Lens' Draft (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

-- | The message content of the draft.
dMessage :: Lens' Draft (Maybe (Maybe Message))
dMessage = lens _dMessage (\ s a -> s{_dMessage = a})

-- | A record of a change to the user\'s mailbox. Each history change may
-- affect multiple messages in multiple ways.
--
-- /See:/ 'history' smart constructor.
data History = History
    { _hLabelsRemoved   :: !(Maybe [Maybe HistoryLabelRemoved])
    , _hMessagesDeleted :: !(Maybe [Maybe HistoryMessageDeleted])
    , _hMessagesAdded   :: !(Maybe [Maybe HistoryMessageAdded])
    , _hLabelsAdded     :: !(Maybe [Maybe HistoryLabelAdded])
    , _hId              :: !(Maybe Word64)
    , _hMessages        :: !(Maybe [Maybe Message])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'History' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hLabelsRemoved'
--
-- * 'hMessagesDeleted'
--
-- * 'hMessagesAdded'
--
-- * 'hLabelsAdded'
--
-- * 'hId'
--
-- * 'hMessages'
history
    :: History
history =
    History
    { _hLabelsRemoved = Nothing
    , _hMessagesDeleted = Nothing
    , _hMessagesAdded = Nothing
    , _hLabelsAdded = Nothing
    , _hId = Nothing
    , _hMessages = Nothing
    }

-- | Labels removed from messages in this history record.
hLabelsRemoved :: Lens' History [Maybe HistoryLabelRemoved]
hLabelsRemoved
  = lens _hLabelsRemoved
      (\ s a -> s{_hLabelsRemoved = a})
      . _Default
      . _Coerce

-- | Messages deleted (not Trashed) from the mailbox in this history record.
hMessagesDeleted :: Lens' History [Maybe HistoryMessageDeleted]
hMessagesDeleted
  = lens _hMessagesDeleted
      (\ s a -> s{_hMessagesDeleted = a})
      . _Default
      . _Coerce

-- | Messages added to the mailbox in this history record.
hMessagesAdded :: Lens' History [Maybe HistoryMessageAdded]
hMessagesAdded
  = lens _hMessagesAdded
      (\ s a -> s{_hMessagesAdded = a})
      . _Default
      . _Coerce

-- | Labels added to messages in this history record.
hLabelsAdded :: Lens' History [Maybe HistoryLabelAdded]
hLabelsAdded
  = lens _hLabelsAdded (\ s a -> s{_hLabelsAdded = a})
      . _Default
      . _Coerce

-- | The mailbox sequence ID.
hId :: Lens' History (Maybe Word64)
hId = lens _hId (\ s a -> s{_hId = a})

-- | List of messages changed in this history record. The fields for specific
-- change types, such as messagesAdded may duplicate messages in this
-- field. We recommend using the specific change-type fields instead of
-- this.
hMessages :: Lens' History [Maybe Message]
hMessages
  = lens _hMessages (\ s a -> s{_hMessages = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'historyLabelAdded' smart constructor.
data HistoryLabelAdded = HistoryLabelAdded
    { _hlaLabelIds :: !(Maybe [Text])
    , _hlaMessage  :: !(Maybe (Maybe Message))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HistoryLabelAdded' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hlaLabelIds'
--
-- * 'hlaMessage'
historyLabelAdded
    :: HistoryLabelAdded
historyLabelAdded =
    HistoryLabelAdded
    { _hlaLabelIds = Nothing
    , _hlaMessage = Nothing
    }

-- | Label IDs added to the message.
hlaLabelIds :: Lens' HistoryLabelAdded [Text]
hlaLabelIds
  = lens _hlaLabelIds (\ s a -> s{_hlaLabelIds = a}) .
      _Default
      . _Coerce

hlaMessage :: Lens' HistoryLabelAdded (Maybe (Maybe Message))
hlaMessage
  = lens _hlaMessage (\ s a -> s{_hlaMessage = a})

--
-- /See:/ 'historyLabelRemoved' smart constructor.
data HistoryLabelRemoved = HistoryLabelRemoved
    { _hlrLabelIds :: !(Maybe [Text])
    , _hlrMessage  :: !(Maybe (Maybe Message))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HistoryLabelRemoved' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hlrLabelIds'
--
-- * 'hlrMessage'
historyLabelRemoved
    :: HistoryLabelRemoved
historyLabelRemoved =
    HistoryLabelRemoved
    { _hlrLabelIds = Nothing
    , _hlrMessage = Nothing
    }

-- | Label IDs removed from the message.
hlrLabelIds :: Lens' HistoryLabelRemoved [Text]
hlrLabelIds
  = lens _hlrLabelIds (\ s a -> s{_hlrLabelIds = a}) .
      _Default
      . _Coerce

hlrMessage :: Lens' HistoryLabelRemoved (Maybe (Maybe Message))
hlrMessage
  = lens _hlrMessage (\ s a -> s{_hlrMessage = a})

--
-- /See:/ 'historyMessageAdded' smart constructor.
newtype HistoryMessageAdded = HistoryMessageAdded
    { _hmaMessage :: Maybe (Maybe Message)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HistoryMessageAdded' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmaMessage'
historyMessageAdded
    :: HistoryMessageAdded
historyMessageAdded =
    HistoryMessageAdded
    { _hmaMessage = Nothing
    }

hmaMessage :: Lens' HistoryMessageAdded (Maybe (Maybe Message))
hmaMessage
  = lens _hmaMessage (\ s a -> s{_hmaMessage = a})

--
-- /See:/ 'historyMessageDeleted' smart constructor.
newtype HistoryMessageDeleted = HistoryMessageDeleted
    { _hmdMessage :: Maybe (Maybe Message)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'HistoryMessageDeleted' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmdMessage'
historyMessageDeleted
    :: HistoryMessageDeleted
historyMessageDeleted =
    HistoryMessageDeleted
    { _hmdMessage = Nothing
    }

hmdMessage :: Lens' HistoryMessageDeleted (Maybe (Maybe Message))
hmdMessage
  = lens _hmdMessage (\ s a -> s{_hmdMessage = a})

-- | Labels are used to categorize messages and threads within the user\'s
-- mailbox.
--
-- /See:/ 'label' smart constructor.
data Label = Label
    { _lThreadsUnread         :: !(Maybe Int32)
    , _lMessageListVisibility :: !(Maybe LabelMessageListVisibility)
    , _lMessagesTotal         :: !(Maybe Int32)
    , _lMessagesUnread        :: !(Maybe Int32)
    , _lName                  :: !(Maybe Text)
    , _lThreadsTotal          :: !(Maybe Int32)
    , _lLabelListVisibility   :: !(Maybe LabelLabelListVisibility)
    , _lId                    :: !(Maybe Text)
    , _lType                  :: !(Maybe LabelType)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Label' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lThreadsUnread'
--
-- * 'lMessageListVisibility'
--
-- * 'lMessagesTotal'
--
-- * 'lMessagesUnread'
--
-- * 'lName'
--
-- * 'lThreadsTotal'
--
-- * 'lLabelListVisibility'
--
-- * 'lId'
--
-- * 'lType'
label
    :: Label
label =
    Label
    { _lThreadsUnread = Nothing
    , _lMessageListVisibility = Nothing
    , _lMessagesTotal = Nothing
    , _lMessagesUnread = Nothing
    , _lName = Nothing
    , _lThreadsTotal = Nothing
    , _lLabelListVisibility = Nothing
    , _lId = Nothing
    , _lType = Nothing
    }

-- | The number of unread threads with the label.
lThreadsUnread :: Lens' Label (Maybe Int32)
lThreadsUnread
  = lens _lThreadsUnread
      (\ s a -> s{_lThreadsUnread = a})

-- | The visibility of the label in the message list in the Gmail web
-- interface.
lMessageListVisibility :: Lens' Label (Maybe LabelMessageListVisibility)
lMessageListVisibility
  = lens _lMessageListVisibility
      (\ s a -> s{_lMessageListVisibility = a})

-- | The total number of messages with the label.
lMessagesTotal :: Lens' Label (Maybe Int32)
lMessagesTotal
  = lens _lMessagesTotal
      (\ s a -> s{_lMessagesTotal = a})

-- | The number of unread messages with the label.
lMessagesUnread :: Lens' Label (Maybe Int32)
lMessagesUnread
  = lens _lMessagesUnread
      (\ s a -> s{_lMessagesUnread = a})

-- | The display name of the label.
lName :: Lens' Label (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | The total number of threads with the label.
lThreadsTotal :: Lens' Label (Maybe Int32)
lThreadsTotal
  = lens _lThreadsTotal
      (\ s a -> s{_lThreadsTotal = a})

-- | The visibility of the label in the label list in the Gmail web
-- interface.
lLabelListVisibility :: Lens' Label (Maybe LabelLabelListVisibility)
lLabelListVisibility
  = lens _lLabelListVisibility
      (\ s a -> s{_lLabelListVisibility = a})

-- | The immutable ID of the label.
lId :: Lens' Label (Maybe Text)
lId = lens _lId (\ s a -> s{_lId = a})

-- | The owner type for the label. User labels are created by the user and
-- can be modified and deleted by the user and can be applied to any
-- message or thread. System labels are internally created and cannot be
-- added, modified, or deleted. System labels may be able to be applied to
-- or removed from messages and threads under some circumstances but this
-- is not guaranteed. For example, users can apply and remove the INBOX and
-- UNREAD labels from messages and threads, but cannot apply or remove the
-- DRAFTS or SENT labels from messages or threads.
lType :: Lens' Label (Maybe LabelType)
lType = lens _lType (\ s a -> s{_lType = a})

--
-- /See:/ 'listDraftsResponse' smart constructor.
data ListDraftsResponse = ListDraftsResponse
    { _ldrNextPageToken      :: !(Maybe Text)
    , _ldrResultSizeEstimate :: !(Maybe Word32)
    , _ldrDrafts             :: !(Maybe [Maybe Draft])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListDraftsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrNextPageToken'
--
-- * 'ldrResultSizeEstimate'
--
-- * 'ldrDrafts'
listDraftsResponse
    :: ListDraftsResponse
listDraftsResponse =
    ListDraftsResponse
    { _ldrNextPageToken = Nothing
    , _ldrResultSizeEstimate = Nothing
    , _ldrDrafts = Nothing
    }

-- | Token to retrieve the next page of results in the list.
ldrNextPageToken :: Lens' ListDraftsResponse (Maybe Text)
ldrNextPageToken
  = lens _ldrNextPageToken
      (\ s a -> s{_ldrNextPageToken = a})

-- | Estimated total number of results.
ldrResultSizeEstimate :: Lens' ListDraftsResponse (Maybe Word32)
ldrResultSizeEstimate
  = lens _ldrResultSizeEstimate
      (\ s a -> s{_ldrResultSizeEstimate = a})

-- | List of drafts.
ldrDrafts :: Lens' ListDraftsResponse [Maybe Draft]
ldrDrafts
  = lens _ldrDrafts (\ s a -> s{_ldrDrafts = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'listHistoryResponse' smart constructor.
data ListHistoryResponse = ListHistoryResponse
    { _lhrNextPageToken :: !(Maybe Text)
    , _lhrHistory       :: !(Maybe [Maybe History])
    , _lhrHistoryId     :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhrNextPageToken'
--
-- * 'lhrHistory'
--
-- * 'lhrHistoryId'
listHistoryResponse
    :: ListHistoryResponse
listHistoryResponse =
    ListHistoryResponse
    { _lhrNextPageToken = Nothing
    , _lhrHistory = Nothing
    , _lhrHistoryId = Nothing
    }

-- | Page token to retrieve the next page of results in the list.
lhrNextPageToken :: Lens' ListHistoryResponse (Maybe Text)
lhrNextPageToken
  = lens _lhrNextPageToken
      (\ s a -> s{_lhrNextPageToken = a})

-- | List of history records. Any messages contained in the response will
-- typically only have id and threadId fields populated.
lhrHistory :: Lens' ListHistoryResponse [Maybe History]
lhrHistory
  = lens _lhrHistory (\ s a -> s{_lhrHistory = a}) .
      _Default
      . _Coerce

-- | The ID of the mailbox\'s current history record.
lhrHistoryId :: Lens' ListHistoryResponse (Maybe Word64)
lhrHistoryId
  = lens _lhrHistoryId (\ s a -> s{_lhrHistoryId = a})

--
-- /See:/ 'listLabelsResponse' smart constructor.
newtype ListLabelsResponse = ListLabelsResponse
    { _llrLabels :: Maybe [Maybe Label]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLabelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrLabels'
listLabelsResponse
    :: ListLabelsResponse
listLabelsResponse =
    ListLabelsResponse
    { _llrLabels = Nothing
    }

-- | List of labels.
llrLabels :: Lens' ListLabelsResponse [Maybe Label]
llrLabels
  = lens _llrLabels (\ s a -> s{_llrLabels = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'listMessagesResponse' smart constructor.
data ListMessagesResponse = ListMessagesResponse
    { _lmrNextPageToken      :: !(Maybe Text)
    , _lmrResultSizeEstimate :: !(Maybe Word32)
    , _lmrMessages           :: !(Maybe [Maybe Message])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMessagesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrResultSizeEstimate'
--
-- * 'lmrMessages'
listMessagesResponse
    :: ListMessagesResponse
listMessagesResponse =
    ListMessagesResponse
    { _lmrNextPageToken = Nothing
    , _lmrResultSizeEstimate = Nothing
    , _lmrMessages = Nothing
    }

-- | Token to retrieve the next page of results in the list.
lmrNextPageToken :: Lens' ListMessagesResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | Estimated total number of results.
lmrResultSizeEstimate :: Lens' ListMessagesResponse (Maybe Word32)
lmrResultSizeEstimate
  = lens _lmrResultSizeEstimate
      (\ s a -> s{_lmrResultSizeEstimate = a})

-- | List of messages.
lmrMessages :: Lens' ListMessagesResponse [Maybe Message]
lmrMessages
  = lens _lmrMessages (\ s a -> s{_lmrMessages = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'listThreadsResponse' smart constructor.
data ListThreadsResponse = ListThreadsResponse
    { _ltrNextPageToken      :: !(Maybe Text)
    , _ltrResultSizeEstimate :: !(Maybe Word32)
    , _ltrThreads            :: !(Maybe [Maybe Thread])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListThreadsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrNextPageToken'
--
-- * 'ltrResultSizeEstimate'
--
-- * 'ltrThreads'
listThreadsResponse
    :: ListThreadsResponse
listThreadsResponse =
    ListThreadsResponse
    { _ltrNextPageToken = Nothing
    , _ltrResultSizeEstimate = Nothing
    , _ltrThreads = Nothing
    }

-- | Page token to retrieve the next page of results in the list.
ltrNextPageToken :: Lens' ListThreadsResponse (Maybe Text)
ltrNextPageToken
  = lens _ltrNextPageToken
      (\ s a -> s{_ltrNextPageToken = a})

-- | Estimated total number of results.
ltrResultSizeEstimate :: Lens' ListThreadsResponse (Maybe Word32)
ltrResultSizeEstimate
  = lens _ltrResultSizeEstimate
      (\ s a -> s{_ltrResultSizeEstimate = a})

-- | List of threads.
ltrThreads :: Lens' ListThreadsResponse [Maybe Thread]
ltrThreads
  = lens _ltrThreads (\ s a -> s{_ltrThreads = a}) .
      _Default
      . _Coerce

-- | An email message.
--
-- /See:/ 'message' smart constructor.
data Message = Message
    { _mRaw          :: !(Maybe Word8)
    , _mSnippet      :: !(Maybe Text)
    , _mSizeEstimate :: !(Maybe Int32)
    , _mPayload      :: !(Maybe (Maybe MessagePart))
    , _mHistoryId    :: !(Maybe Word64)
    , _mId           :: !(Maybe Text)
    , _mLabelIds     :: !(Maybe [Text])
    , _mThreadId     :: !(Maybe Text)
    , _mInternalDate :: !(Maybe Int64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mRaw'
--
-- * 'mSnippet'
--
-- * 'mSizeEstimate'
--
-- * 'mPayload'
--
-- * 'mHistoryId'
--
-- * 'mId'
--
-- * 'mLabelIds'
--
-- * 'mThreadId'
--
-- * 'mInternalDate'
message
    :: Message
message =
    Message
    { _mRaw = Nothing
    , _mSnippet = Nothing
    , _mSizeEstimate = Nothing
    , _mPayload = Nothing
    , _mHistoryId = Nothing
    , _mId = Nothing
    , _mLabelIds = Nothing
    , _mThreadId = Nothing
    , _mInternalDate = Nothing
    }

-- | The entire email message in an RFC 2822 formatted and base64url encoded
-- string. Returned in messages.get and drafts.get responses when the
-- format=RAW parameter is supplied.
mRaw :: Lens' Message (Maybe Word8)
mRaw = lens _mRaw (\ s a -> s{_mRaw = a})

-- | A short part of the message text.
mSnippet :: Lens' Message (Maybe Text)
mSnippet = lens _mSnippet (\ s a -> s{_mSnippet = a})

-- | Estimated size in bytes of the message.
mSizeEstimate :: Lens' Message (Maybe Int32)
mSizeEstimate
  = lens _mSizeEstimate
      (\ s a -> s{_mSizeEstimate = a})

-- | The parsed email structure in the message parts.
mPayload :: Lens' Message (Maybe (Maybe MessagePart))
mPayload = lens _mPayload (\ s a -> s{_mPayload = a})

-- | The ID of the last history record that modified this message.
mHistoryId :: Lens' Message (Maybe Word64)
mHistoryId
  = lens _mHistoryId (\ s a -> s{_mHistoryId = a})

-- | The immutable ID of the message.
mId :: Lens' Message (Maybe Text)
mId = lens _mId (\ s a -> s{_mId = a})

-- | List of IDs of labels applied to this message.
mLabelIds :: Lens' Message [Text]
mLabelIds
  = lens _mLabelIds (\ s a -> s{_mLabelIds = a}) .
      _Default
      . _Coerce

-- | The ID of the thread the message belongs to. To add a message or draft
-- to a thread, the following criteria must be met: - The requested
-- threadId must be specified on the Message or Draft.Message you supply
-- with your request. - The References and In-Reply-To headers must be set
-- in compliance with the RFC 2822 standard. - The Subject headers must
-- match.
mThreadId :: Lens' Message (Maybe Text)
mThreadId
  = lens _mThreadId (\ s a -> s{_mThreadId = a})

-- | The internal message creation timestamp (epoch ms), which determines
-- ordering in the inbox. For normal SMTP-received email, this represents
-- the time the message was originally accepted by Google, which is more
-- reliable than the Date header. However, for API-migrated mail, it can be
-- configured by client to be based on the Date header.
mInternalDate :: Lens' Message (Maybe Int64)
mInternalDate
  = lens _mInternalDate
      (\ s a -> s{_mInternalDate = a})

-- | A single MIME message part.
--
-- /See:/ 'messagePart' smart constructor.
data MessagePart = MessagePart
    { _mpParts    :: !(Maybe [Maybe MessagePart])
    , _mpBody     :: !(Maybe (Maybe MessagePartBody))
    , _mpMimeType :: !(Maybe Text)
    , _mpHeaders  :: !(Maybe [Maybe MessagePartHeader])
    , _mpPartId   :: !(Maybe Text)
    , _mpFilename :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MessagePart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpParts'
--
-- * 'mpBody'
--
-- * 'mpMimeType'
--
-- * 'mpHeaders'
--
-- * 'mpPartId'
--
-- * 'mpFilename'
messagePart
    :: MessagePart
messagePart =
    MessagePart
    { _mpParts = Nothing
    , _mpBody = Nothing
    , _mpMimeType = Nothing
    , _mpHeaders = Nothing
    , _mpPartId = Nothing
    , _mpFilename = Nothing
    }

-- | The child MIME message parts of this part. This only applies to
-- container MIME message parts, for example multipart\/*. For non-
-- container MIME message part types, such as text\/plain, this field is
-- empty. For more information, see RFC 1521.
mpParts :: Lens' MessagePart [Maybe MessagePart]
mpParts
  = lens _mpParts (\ s a -> s{_mpParts = a}) . _Default
      . _Coerce

-- | The message part body for this part, which may be empty for container
-- MIME message parts.
mpBody :: Lens' MessagePart (Maybe (Maybe MessagePartBody))
mpBody = lens _mpBody (\ s a -> s{_mpBody = a})

-- | The MIME type of the message part.
mpMimeType :: Lens' MessagePart (Maybe Text)
mpMimeType
  = lens _mpMimeType (\ s a -> s{_mpMimeType = a})

-- | List of headers on this message part. For the top-level message part,
-- representing the entire message payload, it will contain the standard
-- RFC 2822 email headers such as To, From, and Subject.
mpHeaders :: Lens' MessagePart [Maybe MessagePartHeader]
mpHeaders
  = lens _mpHeaders (\ s a -> s{_mpHeaders = a}) .
      _Default
      . _Coerce

-- | The immutable ID of the message part.
mpPartId :: Lens' MessagePart (Maybe Text)
mpPartId = lens _mpPartId (\ s a -> s{_mpPartId = a})

-- | The filename of the attachment. Only present if this message part
-- represents an attachment.
mpFilename :: Lens' MessagePart (Maybe Text)
mpFilename
  = lens _mpFilename (\ s a -> s{_mpFilename = a})

-- | The body of a single MIME message part.
--
-- /See:/ 'messagePartBody' smart constructor.
data MessagePartBody = MessagePartBody
    { _mpbSize         :: !(Maybe Int32)
    , _mpbData         :: !(Maybe Word8)
    , _mpbAttachmentId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MessagePartBody' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpbSize'
--
-- * 'mpbData'
--
-- * 'mpbAttachmentId'
messagePartBody
    :: MessagePartBody
messagePartBody =
    MessagePartBody
    { _mpbSize = Nothing
    , _mpbData = Nothing
    , _mpbAttachmentId = Nothing
    }

-- | Total number of bytes in the body of the message part.
mpbSize :: Lens' MessagePartBody (Maybe Int32)
mpbSize = lens _mpbSize (\ s a -> s{_mpbSize = a})

-- | The body data of a MIME message part. May be empty for MIME container
-- types that have no message body or when the body data is sent as a
-- separate attachment. An attachment ID is present if the body data is
-- contained in a separate attachment.
mpbData :: Lens' MessagePartBody (Maybe Word8)
mpbData = lens _mpbData (\ s a -> s{_mpbData = a})

-- | When present, contains the ID of an external attachment that can be
-- retrieved in a separate messages.attachments.get request. When not
-- present, the entire content of the message part body is contained in the
-- data field.
mpbAttachmentId :: Lens' MessagePartBody (Maybe Text)
mpbAttachmentId
  = lens _mpbAttachmentId
      (\ s a -> s{_mpbAttachmentId = a})

--
-- /See:/ 'messagePartHeader' smart constructor.
data MessagePartHeader = MessagePartHeader
    { _mphValue :: !(Maybe Text)
    , _mphName  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MessagePartHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mphValue'
--
-- * 'mphName'
messagePartHeader
    :: MessagePartHeader
messagePartHeader =
    MessagePartHeader
    { _mphValue = Nothing
    , _mphName = Nothing
    }

-- | The value of the header after the : separator. For example,
-- someuser\'example.com.
mphValue :: Lens' MessagePartHeader (Maybe Text)
mphValue = lens _mphValue (\ s a -> s{_mphValue = a})

-- | The name of the header before the : separator. For example, To.
mphName :: Lens' MessagePartHeader (Maybe Text)
mphName = lens _mphName (\ s a -> s{_mphName = a})

--
-- /See:/ 'modifyMessageRequest' smart constructor.
data ModifyMessageRequest = ModifyMessageRequest
    { _mmrRemoveLabelIds :: !(Maybe [Text])
    , _mmrAddLabelIds    :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ModifyMessageRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mmrRemoveLabelIds'
--
-- * 'mmrAddLabelIds'
modifyMessageRequest
    :: ModifyMessageRequest
modifyMessageRequest =
    ModifyMessageRequest
    { _mmrRemoveLabelIds = Nothing
    , _mmrAddLabelIds = Nothing
    }

-- | A list IDs of labels to remove from this message.
mmrRemoveLabelIds :: Lens' ModifyMessageRequest [Text]
mmrRemoveLabelIds
  = lens _mmrRemoveLabelIds
      (\ s a -> s{_mmrRemoveLabelIds = a})
      . _Default
      . _Coerce

-- | A list of IDs of labels to add to this message.
mmrAddLabelIds :: Lens' ModifyMessageRequest [Text]
mmrAddLabelIds
  = lens _mmrAddLabelIds
      (\ s a -> s{_mmrAddLabelIds = a})
      . _Default
      . _Coerce

--
-- /See:/ 'modifyThreadRequest' smart constructor.
data ModifyThreadRequest = ModifyThreadRequest
    { _mtrRemoveLabelIds :: !(Maybe [Text])
    , _mtrAddLabelIds    :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ModifyThreadRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtrRemoveLabelIds'
--
-- * 'mtrAddLabelIds'
modifyThreadRequest
    :: ModifyThreadRequest
modifyThreadRequest =
    ModifyThreadRequest
    { _mtrRemoveLabelIds = Nothing
    , _mtrAddLabelIds = Nothing
    }

-- | A list of IDs of labels to remove from this thread.
mtrRemoveLabelIds :: Lens' ModifyThreadRequest [Text]
mtrRemoveLabelIds
  = lens _mtrRemoveLabelIds
      (\ s a -> s{_mtrRemoveLabelIds = a})
      . _Default
      . _Coerce

-- | A list of IDs of labels to add to this thread.
mtrAddLabelIds :: Lens' ModifyThreadRequest [Text]
mtrAddLabelIds
  = lens _mtrAddLabelIds
      (\ s a -> s{_mtrAddLabelIds = a})
      . _Default
      . _Coerce

-- | Profile for a Gmail user.
--
-- /See:/ 'profile' smart constructor.
data Profile = Profile
    { _pMessagesTotal :: !(Maybe Int32)
    , _pThreadsTotal  :: !(Maybe Int32)
    , _pHistoryId     :: !(Maybe Word64)
    , _pEmailAddress  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Profile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pMessagesTotal'
--
-- * 'pThreadsTotal'
--
-- * 'pHistoryId'
--
-- * 'pEmailAddress'
profile
    :: Profile
profile =
    Profile
    { _pMessagesTotal = Nothing
    , _pThreadsTotal = Nothing
    , _pHistoryId = Nothing
    , _pEmailAddress = Nothing
    }

-- | The total number of messages in the mailbox.
pMessagesTotal :: Lens' Profile (Maybe Int32)
pMessagesTotal
  = lens _pMessagesTotal
      (\ s a -> s{_pMessagesTotal = a})

-- | The total number of threads in the mailbox.
pThreadsTotal :: Lens' Profile (Maybe Int32)
pThreadsTotal
  = lens _pThreadsTotal
      (\ s a -> s{_pThreadsTotal = a})

-- | The ID of the mailbox\'s current history record.
pHistoryId :: Lens' Profile (Maybe Word64)
pHistoryId
  = lens _pHistoryId (\ s a -> s{_pHistoryId = a})

-- | The user\'s email address.
pEmailAddress :: Lens' Profile (Maybe Text)
pEmailAddress
  = lens _pEmailAddress
      (\ s a -> s{_pEmailAddress = a})

-- | A collection of messages representing a conversation.
--
-- /See:/ 'thread' smart constructor.
data Thread = Thread
    { _tSnippet   :: !(Maybe Text)
    , _tHistoryId :: !(Maybe Word64)
    , _tId        :: !(Maybe Text)
    , _tMessages  :: !(Maybe [Maybe Message])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Thread' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tSnippet'
--
-- * 'tHistoryId'
--
-- * 'tId'
--
-- * 'tMessages'
thread
    :: Thread
thread =
    Thread
    { _tSnippet = Nothing
    , _tHistoryId = Nothing
    , _tId = Nothing
    , _tMessages = Nothing
    }

-- | A short part of the message text.
tSnippet :: Lens' Thread (Maybe Text)
tSnippet = lens _tSnippet (\ s a -> s{_tSnippet = a})

-- | The ID of the last history record that modified this thread.
tHistoryId :: Lens' Thread (Maybe Word64)
tHistoryId
  = lens _tHistoryId (\ s a -> s{_tHistoryId = a})

-- | The unique ID of the thread.
tId :: Lens' Thread (Maybe Text)
tId = lens _tId (\ s a -> s{_tId = a})

-- | The list of messages in the thread.
tMessages :: Lens' Thread [Maybe Message]
tMessages
  = lens _tMessages (\ s a -> s{_tMessages = a}) .
      _Default
      . _Coerce

-- | Set up or update a new push notification watch on this user\'s mailbox.
--
-- /See:/ 'watchRequest' smart constructor.
data WatchRequest = WatchRequest
    { _wrLabelFilterAction :: !(Maybe WatchRequestLabelFilterAction)
    , _wrTopicName         :: !(Maybe Text)
    , _wrLabelIds          :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrLabelFilterAction'
--
-- * 'wrTopicName'
--
-- * 'wrLabelIds'
watchRequest
    :: WatchRequest
watchRequest =
    WatchRequest
    { _wrLabelFilterAction = Nothing
    , _wrTopicName = Nothing
    , _wrLabelIds = Nothing
    }

-- | Filtering behavior of labelIds list specified.
wrLabelFilterAction :: Lens' WatchRequest (Maybe WatchRequestLabelFilterAction)
wrLabelFilterAction
  = lens _wrLabelFilterAction
      (\ s a -> s{_wrLabelFilterAction = a})

-- | A fully qualified Google Cloud Pub\/Sub API topic name to publish the
-- events to. This topic name **must** already exist in Cloud Pub\/Sub and
-- you **must** have already granted gmail \"publish\" permission on it.
-- For example, \"projects\/my-project-identifier\/topics\/my-topic-name\"
-- (using the new Cloud Pub\/Sub \"v1beta2\" topic naming format). Note
-- that the \"my-project-identifier\" portion must exactly match your
-- Google developer project id (the one executing this watch request).
wrTopicName :: Lens' WatchRequest (Maybe Text)
wrTopicName
  = lens _wrTopicName (\ s a -> s{_wrTopicName = a})

-- | List of label_ids to restrict notifications about. By default, if
-- unspecified, all changes are pushed out. If specified then dictates
-- which labels are required for a push notification to be generated.
wrLabelIds :: Lens' WatchRequest [Text]
wrLabelIds
  = lens _wrLabelIds (\ s a -> s{_wrLabelIds = a}) .
      _Default
      . _Coerce

-- | Push notification watch response.
--
-- /See:/ 'watchResponse' smart constructor.
data WatchResponse = WatchResponse
    { _wrExpiration :: !(Maybe Int64)
    , _wrHistoryId  :: !(Maybe Word64)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrExpiration'
--
-- * 'wrHistoryId'
watchResponse
    :: WatchResponse
watchResponse =
    WatchResponse
    { _wrExpiration = Nothing
    , _wrHistoryId = Nothing
    }

-- | When Gmail will stop sending notifications for mailbox updates (epoch
-- millis). Call watch again before this time to renew the watch.
wrExpiration :: Lens' WatchResponse (Maybe Int64)
wrExpiration
  = lens _wrExpiration (\ s a -> s{_wrExpiration = a})

-- | The ID of the mailbox\'s current history record.
wrHistoryId :: Lens' WatchResponse (Maybe Word64)
wrHistoryId
  = lens _wrHistoryId (\ s a -> s{_wrHistoryId = a})
