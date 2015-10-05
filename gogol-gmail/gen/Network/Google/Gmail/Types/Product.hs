{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
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

--
-- /See:/ 'modifyThreadRequest' smart constructor.
data ModifyThreadRequest = ModifyThreadRequest
    { _mtrRemoveLabelIds :: !(Maybe [Text])
    , _mtrAddLabelIds    :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON ModifyThreadRequest where
        parseJSON
          = withObject "ModifyThreadRequest"
              (\ o ->
                 ModifyThreadRequest <$>
                   (o .:? "removeLabelIds" .!= mempty) <*>
                     (o .:? "addLabelIds" .!= mempty))

instance ToJSON ModifyThreadRequest where
        toJSON ModifyThreadRequest{..}
          = object
              (catMaybes
                 [("removeLabelIds" .=) <$> _mtrRemoveLabelIds,
                  ("addLabelIds" .=) <$> _mtrAddLabelIds])

--
-- /See:/ 'modifyMessageRequest' smart constructor.
data ModifyMessageRequest = ModifyMessageRequest
    { _mmrRemoveLabelIds :: !(Maybe [Text])
    , _mmrAddLabelIds    :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON ModifyMessageRequest where
        parseJSON
          = withObject "ModifyMessageRequest"
              (\ o ->
                 ModifyMessageRequest <$>
                   (o .:? "removeLabelIds" .!= mempty) <*>
                     (o .:? "addLabelIds" .!= mempty))

instance ToJSON ModifyMessageRequest where
        toJSON ModifyMessageRequest{..}
          = object
              (catMaybes
                 [("removeLabelIds" .=) <$> _mmrRemoveLabelIds,
                  ("addLabelIds" .=) <$> _mmrAddLabelIds])

-- | A record of a change to the user\'s mailbox. Each history change may
-- affect multiple messages in multiple ways.
--
-- /See:/ 'history' smart constructor.
data History = History
    { _hLabelsRemoved   :: !(Maybe [HistoryLabelRemoved])
    , _hMessagesDeleted :: !(Maybe [HistoryMessageDeleted])
    , _hMessagesAdded   :: !(Maybe [HistoryMessageAdded])
    , _hLabelsAdded     :: !(Maybe [HistoryLabelAdded])
    , _hId              :: !(Maybe Word64)
    , _hMessages        :: !(Maybe [Message])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
hLabelsRemoved :: Lens' History [HistoryLabelRemoved]
hLabelsRemoved
  = lens _hLabelsRemoved
      (\ s a -> s{_hLabelsRemoved = a})
      . _Default
      . _Coerce

-- | Messages deleted (not Trashed) from the mailbox in this history record.
hMessagesDeleted :: Lens' History [HistoryMessageDeleted]
hMessagesDeleted
  = lens _hMessagesDeleted
      (\ s a -> s{_hMessagesDeleted = a})
      . _Default
      . _Coerce

-- | Messages added to the mailbox in this history record.
hMessagesAdded :: Lens' History [HistoryMessageAdded]
hMessagesAdded
  = lens _hMessagesAdded
      (\ s a -> s{_hMessagesAdded = a})
      . _Default
      . _Coerce

-- | Labels added to messages in this history record.
hLabelsAdded :: Lens' History [HistoryLabelAdded]
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
hMessages :: Lens' History [Message]
hMessages
  = lens _hMessages (\ s a -> s{_hMessages = a}) .
      _Default
      . _Coerce

instance FromJSON History where
        parseJSON
          = withObject "History"
              (\ o ->
                 History <$>
                   (o .:? "labelsRemoved" .!= mempty) <*>
                     (o .:? "messagesDeleted" .!= mempty)
                     <*> (o .:? "messagesAdded" .!= mempty)
                     <*> (o .:? "labelsAdded" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "messages" .!= mempty))

instance ToJSON History where
        toJSON History{..}
          = object
              (catMaybes
                 [("labelsRemoved" .=) <$> _hLabelsRemoved,
                  ("messagesDeleted" .=) <$> _hMessagesDeleted,
                  ("messagesAdded" .=) <$> _hMessagesAdded,
                  ("labelsAdded" .=) <$> _hLabelsAdded,
                  ("id" .=) <$> _hId, ("messages" .=) <$> _hMessages])

-- | Profile for a Gmail user.
--
-- /See:/ 'proFile' smart constructor.
data ProFile = ProFile
    { _pfMessagesTotal :: !(Maybe Int32)
    , _pfThreadsTotal  :: !(Maybe Int32)
    , _pfHistoryId     :: !(Maybe Word64)
    , _pfEmailAddress  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfMessagesTotal'
--
-- * 'pfThreadsTotal'
--
-- * 'pfHistoryId'
--
-- * 'pfEmailAddress'
proFile
    :: ProFile
proFile =
    ProFile
    { _pfMessagesTotal = Nothing
    , _pfThreadsTotal = Nothing
    , _pfHistoryId = Nothing
    , _pfEmailAddress = Nothing
    }

-- | The total number of messages in the mailbox.
pfMessagesTotal :: Lens' ProFile (Maybe Int32)
pfMessagesTotal
  = lens _pfMessagesTotal
      (\ s a -> s{_pfMessagesTotal = a})

-- | The total number of threads in the mailbox.
pfThreadsTotal :: Lens' ProFile (Maybe Int32)
pfThreadsTotal
  = lens _pfThreadsTotal
      (\ s a -> s{_pfThreadsTotal = a})

-- | The ID of the mailbox\'s current history record.
pfHistoryId :: Lens' ProFile (Maybe Word64)
pfHistoryId
  = lens _pfHistoryId (\ s a -> s{_pfHistoryId = a})

-- | The user\'s email address.
pfEmailAddress :: Lens' ProFile (Maybe Text)
pfEmailAddress
  = lens _pfEmailAddress
      (\ s a -> s{_pfEmailAddress = a})

instance FromJSON ProFile where
        parseJSON
          = withObject "ProFile"
              (\ o ->
                 ProFile <$>
                   (o .:? "messagesTotal") <*> (o .:? "threadsTotal")
                     <*> (o .:? "historyId")
                     <*> (o .:? "emailAddress"))

instance ToJSON ProFile where
        toJSON ProFile{..}
          = object
              (catMaybes
                 [("messagesTotal" .=) <$> _pfMessagesTotal,
                  ("threadsTotal" .=) <$> _pfThreadsTotal,
                  ("historyId" .=) <$> _pfHistoryId,
                  ("emailAddress" .=) <$> _pfEmailAddress])

--
-- /See:/ 'messagePartHeader' smart constructor.
data MessagePartHeader = MessagePartHeader
    { _mphValue :: !(Maybe Text)
    , _mphName  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON MessagePartHeader where
        parseJSON
          = withObject "MessagePartHeader"
              (\ o ->
                 MessagePartHeader <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON MessagePartHeader where
        toJSON MessagePartHeader{..}
          = object
              (catMaybes
                 [("value" .=) <$> _mphValue,
                  ("name" .=) <$> _mphName])

--
-- /See:/ 'listHistoryResponse' smart constructor.
data ListHistoryResponse = ListHistoryResponse
    { _lhrNextPageToken :: !(Maybe Text)
    , _lhrHistory       :: !(Maybe [History])
    , _lhrHistoryId     :: !(Maybe Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
lhrHistory :: Lens' ListHistoryResponse [History]
lhrHistory
  = lens _lhrHistory (\ s a -> s{_lhrHistory = a}) .
      _Default
      . _Coerce

-- | The ID of the mailbox\'s current history record.
lhrHistoryId :: Lens' ListHistoryResponse (Maybe Word64)
lhrHistoryId
  = lens _lhrHistoryId (\ s a -> s{_lhrHistoryId = a})

instance FromJSON ListHistoryResponse where
        parseJSON
          = withObject "ListHistoryResponse"
              (\ o ->
                 ListHistoryResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "history" .!= mempty)
                     <*> (o .:? "historyId"))

instance ToJSON ListHistoryResponse where
        toJSON ListHistoryResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lhrNextPageToken,
                  ("history" .=) <$> _lhrHistory,
                  ("historyId" .=) <$> _lhrHistoryId])

--
-- /See:/ 'listThreadsResponse' smart constructor.
data ListThreadsResponse = ListThreadsResponse
    { _ltrNextPageToken      :: !(Maybe Text)
    , _ltrResultSizeEstimate :: !(Maybe Word32)
    , _ltrThreads            :: !(Maybe [Thread])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
ltrThreads :: Lens' ListThreadsResponse [Thread]
ltrThreads
  = lens _ltrThreads (\ s a -> s{_ltrThreads = a}) .
      _Default
      . _Coerce

instance FromJSON ListThreadsResponse where
        parseJSON
          = withObject "ListThreadsResponse"
              (\ o ->
                 ListThreadsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resultSizeEstimate")
                     <*> (o .:? "threads" .!= mempty))

instance ToJSON ListThreadsResponse where
        toJSON ListThreadsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("resultSizeEstimate" .=) <$> _ltrResultSizeEstimate,
                  ("threads" .=) <$> _ltrThreads])

-- | A single MIME message part.
--
-- /See:/ 'messagePart' smart constructor.
data MessagePart = MessagePart
    { _mpParts    :: !(Maybe [MessagePart])
    , _mpBody     :: !(Maybe MessagePartBody)
    , _mpMimeType :: !(Maybe Text)
    , _mpHeaders  :: !(Maybe [MessagePartHeader])
    , _mpPartId   :: !(Maybe Text)
    , _mpFilename :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
mpParts :: Lens' MessagePart [MessagePart]
mpParts
  = lens _mpParts (\ s a -> s{_mpParts = a}) . _Default
      . _Coerce

-- | The message part body for this part, which may be empty for container
-- MIME message parts.
mpBody :: Lens' MessagePart (Maybe MessagePartBody)
mpBody = lens _mpBody (\ s a -> s{_mpBody = a})

-- | The MIME type of the message part.
mpMimeType :: Lens' MessagePart (Maybe Text)
mpMimeType
  = lens _mpMimeType (\ s a -> s{_mpMimeType = a})

-- | List of headers on this message part. For the top-level message part,
-- representing the entire message payload, it will contain the standard
-- RFC 2822 email headers such as To, From, and Subject.
mpHeaders :: Lens' MessagePart [MessagePartHeader]
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

instance FromJSON MessagePart where
        parseJSON
          = withObject "MessagePart"
              (\ o ->
                 MessagePart <$>
                   (o .:? "parts" .!= mempty) <*> (o .:? "body") <*>
                     (o .:? "mimeType")
                     <*> (o .:? "headers" .!= mempty)
                     <*> (o .:? "partId")
                     <*> (o .:? "filename"))

instance ToJSON MessagePart where
        toJSON MessagePart{..}
          = object
              (catMaybes
                 [("parts" .=) <$> _mpParts, ("body" .=) <$> _mpBody,
                  ("mimeType" .=) <$> _mpMimeType,
                  ("headers" .=) <$> _mpHeaders,
                  ("partId" .=) <$> _mpPartId,
                  ("filename" .=) <$> _mpFilename])

--
-- /See:/ 'historyLabelAdded' smart constructor.
data HistoryLabelAdded = HistoryLabelAdded
    { _hlaLabelIds :: !(Maybe [Text])
    , _hlaMessage  :: !(Maybe Message)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

hlaMessage :: Lens' HistoryLabelAdded (Maybe Message)
hlaMessage
  = lens _hlaMessage (\ s a -> s{_hlaMessage = a})

instance FromJSON HistoryLabelAdded where
        parseJSON
          = withObject "HistoryLabelAdded"
              (\ o ->
                 HistoryLabelAdded <$>
                   (o .:? "labelIds" .!= mempty) <*> (o .:? "message"))

instance ToJSON HistoryLabelAdded where
        toJSON HistoryLabelAdded{..}
          = object
              (catMaybes
                 [("labelIds" .=) <$> _hlaLabelIds,
                  ("message" .=) <$> _hlaMessage])

--
-- /See:/ 'listLabelsResponse' smart constructor.
newtype ListLabelsResponse = ListLabelsResponse
    { _llrLabels :: Maybe [Label]
    } deriving (Eq,Show,Data,Typeable,Generic)

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
llrLabels :: Lens' ListLabelsResponse [Label]
llrLabels
  = lens _llrLabels (\ s a -> s{_llrLabels = a}) .
      _Default
      . _Coerce

instance FromJSON ListLabelsResponse where
        parseJSON
          = withObject "ListLabelsResponse"
              (\ o ->
                 ListLabelsResponse <$> (o .:? "labels" .!= mempty))

instance ToJSON ListLabelsResponse where
        toJSON ListLabelsResponse{..}
          = object (catMaybes [("labels" .=) <$> _llrLabels])

--
-- /See:/ 'historyMessageDeleted' smart constructor.
newtype HistoryMessageDeleted = HistoryMessageDeleted
    { _hmdMessage :: Maybe Message
    } deriving (Eq,Show,Data,Typeable,Generic)

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

hmdMessage :: Lens' HistoryMessageDeleted (Maybe Message)
hmdMessage
  = lens _hmdMessage (\ s a -> s{_hmdMessage = a})

instance FromJSON HistoryMessageDeleted where
        parseJSON
          = withObject "HistoryMessageDeleted"
              (\ o -> HistoryMessageDeleted <$> (o .:? "message"))

instance ToJSON HistoryMessageDeleted where
        toJSON HistoryMessageDeleted{..}
          = object (catMaybes [("message" .=) <$> _hmdMessage])

-- | The body of a single MIME message part.
--
-- /See:/ 'messagePartBody' smart constructor.
data MessagePartBody = MessagePartBody
    { _mpbSize         :: !(Maybe Int32)
    , _mpbData         :: !(Maybe Word8)
    , _mpbAttachmentId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON MessagePartBody where
        parseJSON
          = withObject "MessagePartBody"
              (\ o ->
                 MessagePartBody <$>
                   (o .:? "size") <*> (o .:? "data") <*>
                     (o .:? "attachmentId"))

instance ToJSON MessagePartBody where
        toJSON MessagePartBody{..}
          = object
              (catMaybes
                 [("size" .=) <$> _mpbSize, ("data" .=) <$> _mpbData,
                  ("attachmentId" .=) <$> _mpbAttachmentId])

--
-- /See:/ 'listDraftsResponse' smart constructor.
data ListDraftsResponse = ListDraftsResponse
    { _ldrNextPageToken      :: !(Maybe Text)
    , _ldrResultSizeEstimate :: !(Maybe Word32)
    , _ldrDrafts             :: !(Maybe [Draft])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
ldrDrafts :: Lens' ListDraftsResponse [Draft]
ldrDrafts
  = lens _ldrDrafts (\ s a -> s{_ldrDrafts = a}) .
      _Default
      . _Coerce

instance FromJSON ListDraftsResponse where
        parseJSON
          = withObject "ListDraftsResponse"
              (\ o ->
                 ListDraftsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resultSizeEstimate")
                     <*> (o .:? "drafts" .!= mempty))

instance ToJSON ListDraftsResponse where
        toJSON ListDraftsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("resultSizeEstimate" .=) <$> _ldrResultSizeEstimate,
                  ("drafts" .=) <$> _ldrDrafts])

-- | Push notification watch response.
--
-- /See:/ 'watchResponse' smart constructor.
data WatchResponse = WatchResponse
    { _wrExpiration :: !(Maybe Int64)
    , _wrHistoryId  :: !(Maybe Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON WatchResponse where
        parseJSON
          = withObject "WatchResponse"
              (\ o ->
                 WatchResponse <$>
                   (o .:? "expiration") <*> (o .:? "historyId"))

instance ToJSON WatchResponse where
        toJSON WatchResponse{..}
          = object
              (catMaybes
                 [("expiration" .=) <$> _wrExpiration,
                  ("historyId" .=) <$> _wrHistoryId])

-- | A draft email in the user\'s mailbox.
--
-- /See:/ 'draft' smart constructor.
data Draft = Draft
    { _dId      :: !(Maybe Text)
    , _dMessage :: !(Maybe Message)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
dMessage :: Lens' Draft (Maybe Message)
dMessage = lens _dMessage (\ s a -> s{_dMessage = a})

instance FromJSON Draft where
        parseJSON
          = withObject "Draft"
              (\ o -> Draft <$> (o .:? "id") <*> (o .:? "message"))

instance ToJSON Draft where
        toJSON Draft{..}
          = object
              (catMaybes
                 [("id" .=) <$> _dId, ("message" .=) <$> _dMessage])

-- | Set up or update a new push notification watch on this user\'s mailbox.
--
-- /See:/ 'watchRequest' smart constructor.
data WatchRequest = WatchRequest
    { _wrLabelFilterAction :: !(Maybe WatchRequestLabelFilterAction)
    , _wrTopicName         :: !(Maybe Text)
    , _wrLabelIds          :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON WatchRequest where
        parseJSON
          = withObject "WatchRequest"
              (\ o ->
                 WatchRequest <$>
                   (o .:? "labelFilterAction") <*> (o .:? "topicName")
                     <*> (o .:? "labelIds" .!= mempty))

instance ToJSON WatchRequest where
        toJSON WatchRequest{..}
          = object
              (catMaybes
                 [("labelFilterAction" .=) <$> _wrLabelFilterAction,
                  ("topicName" .=) <$> _wrTopicName,
                  ("labelIds" .=) <$> _wrLabelIds])

-- | An email message.
--
-- /See:/ 'message' smart constructor.
data Message = Message
    { _mRaw          :: !(Maybe Word8)
    , _mSnippet      :: !(Maybe Text)
    , _mSizeEstimate :: !(Maybe Int32)
    , _mPayload      :: !(Maybe MessagePart)
    , _mHistoryId    :: !(Maybe Word64)
    , _mId           :: !(Maybe Text)
    , _mLabelIds     :: !(Maybe [Text])
    , _mThreadId     :: !(Maybe Text)
    , _mInternalDate :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
mPayload :: Lens' Message (Maybe MessagePart)
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

instance FromJSON Message where
        parseJSON
          = withObject "Message"
              (\ o ->
                 Message <$>
                   (o .:? "raw") <*> (o .:? "snippet") <*>
                     (o .:? "sizeEstimate")
                     <*> (o .:? "payload")
                     <*> (o .:? "historyId")
                     <*> (o .:? "id")
                     <*> (o .:? "labelIds" .!= mempty)
                     <*> (o .:? "threadId")
                     <*> (o .:? "internalDate"))

instance ToJSON Message where
        toJSON Message{..}
          = object
              (catMaybes
                 [("raw" .=) <$> _mRaw, ("snippet" .=) <$> _mSnippet,
                  ("sizeEstimate" .=) <$> _mSizeEstimate,
                  ("payload" .=) <$> _mPayload,
                  ("historyId" .=) <$> _mHistoryId, ("id" .=) <$> _mId,
                  ("labelIds" .=) <$> _mLabelIds,
                  ("threadId" .=) <$> _mThreadId,
                  ("internalDate" .=) <$> _mInternalDate])

--
-- /See:/ 'historyLabelRemoved' smart constructor.
data HistoryLabelRemoved = HistoryLabelRemoved
    { _hlrLabelIds :: !(Maybe [Text])
    , _hlrMessage  :: !(Maybe Message)
    } deriving (Eq,Show,Data,Typeable,Generic)

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

hlrMessage :: Lens' HistoryLabelRemoved (Maybe Message)
hlrMessage
  = lens _hlrMessage (\ s a -> s{_hlrMessage = a})

instance FromJSON HistoryLabelRemoved where
        parseJSON
          = withObject "HistoryLabelRemoved"
              (\ o ->
                 HistoryLabelRemoved <$>
                   (o .:? "labelIds" .!= mempty) <*> (o .:? "message"))

instance ToJSON HistoryLabelRemoved where
        toJSON HistoryLabelRemoved{..}
          = object
              (catMaybes
                 [("labelIds" .=) <$> _hlrLabelIds,
                  ("message" .=) <$> _hlrMessage])

-- | A collection of messages representing a conversation.
--
-- /See:/ 'thread' smart constructor.
data Thread = Thread
    { _tSnippet   :: !(Maybe Text)
    , _tHistoryId :: !(Maybe Word64)
    , _tId        :: !(Maybe Text)
    , _tMessages  :: !(Maybe [Message])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
tMessages :: Lens' Thread [Message]
tMessages
  = lens _tMessages (\ s a -> s{_tMessages = a}) .
      _Default
      . _Coerce

instance FromJSON Thread where
        parseJSON
          = withObject "Thread"
              (\ o ->
                 Thread <$>
                   (o .:? "snippet") <*> (o .:? "historyId") <*>
                     (o .:? "id")
                     <*> (o .:? "messages" .!= mempty))

instance ToJSON Thread where
        toJSON Thread{..}
          = object
              (catMaybes
                 [("snippet" .=) <$> _tSnippet,
                  ("historyId" .=) <$> _tHistoryId, ("id" .=) <$> _tId,
                  ("messages" .=) <$> _tMessages])

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
    } deriving (Eq,Show,Data,Typeable,Generic)

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

instance FromJSON Label where
        parseJSON
          = withObject "Label"
              (\ o ->
                 Label <$>
                   (o .:? "threadsUnread") <*>
                     (o .:? "messageListVisibility")
                     <*> (o .:? "messagesTotal")
                     <*> (o .:? "messagesUnread")
                     <*> (o .:? "name")
                     <*> (o .:? "threadsTotal")
                     <*> (o .:? "labelListVisibility")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Label where
        toJSON Label{..}
          = object
              (catMaybes
                 [("threadsUnread" .=) <$> _lThreadsUnread,
                  ("messageListVisibility" .=) <$>
                    _lMessageListVisibility,
                  ("messagesTotal" .=) <$> _lMessagesTotal,
                  ("messagesUnread" .=) <$> _lMessagesUnread,
                  ("name" .=) <$> _lName,
                  ("threadsTotal" .=) <$> _lThreadsTotal,
                  ("labelListVisibility" .=) <$> _lLabelListVisibility,
                  ("id" .=) <$> _lId, ("type" .=) <$> _lType])

--
-- /See:/ 'listMessagesResponse' smart constructor.
data ListMessagesResponse = ListMessagesResponse
    { _lmrNextPageToken      :: !(Maybe Text)
    , _lmrResultSizeEstimate :: !(Maybe Word32)
    , _lmrMessages           :: !(Maybe [Message])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
lmrMessages :: Lens' ListMessagesResponse [Message]
lmrMessages
  = lens _lmrMessages (\ s a -> s{_lmrMessages = a}) .
      _Default
      . _Coerce

instance FromJSON ListMessagesResponse where
        parseJSON
          = withObject "ListMessagesResponse"
              (\ o ->
                 ListMessagesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resultSizeEstimate")
                     <*> (o .:? "messages" .!= mempty))

instance ToJSON ListMessagesResponse where
        toJSON ListMessagesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("resultSizeEstimate" .=) <$> _lmrResultSizeEstimate,
                  ("messages" .=) <$> _lmrMessages])

--
-- /See:/ 'historyMessageAdded' smart constructor.
newtype HistoryMessageAdded = HistoryMessageAdded
    { _hmaMessage :: Maybe Message
    } deriving (Eq,Show,Data,Typeable,Generic)

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

hmaMessage :: Lens' HistoryMessageAdded (Maybe Message)
hmaMessage
  = lens _hmaMessage (\ s a -> s{_hmaMessage = a})

instance FromJSON HistoryMessageAdded where
        parseJSON
          = withObject "HistoryMessageAdded"
              (\ o -> HistoryMessageAdded <$> (o .:? "message"))

instance ToJSON HistoryMessageAdded where
        toJSON HistoryMessageAdded{..}
          = object (catMaybes [("message" .=) <$> _hmaMessage])
