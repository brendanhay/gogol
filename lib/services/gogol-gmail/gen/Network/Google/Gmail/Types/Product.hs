{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Gmail.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Gmail.Types.Product where

import Network.Google.Gmail.Types.Sum
import Network.Google.Prelude

--
-- /See:/ 'batchDeleteMessagesRequest' smart constructor.
newtype BatchDeleteMessagesRequest =
  BatchDeleteMessagesRequest'
    { _bdmrIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchDeleteMessagesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdmrIds'
batchDeleteMessagesRequest
    :: BatchDeleteMessagesRequest
batchDeleteMessagesRequest = BatchDeleteMessagesRequest' {_bdmrIds = Nothing}


-- | The IDs of the messages to delete.
bdmrIds :: Lens' BatchDeleteMessagesRequest [Text]
bdmrIds
  = lens _bdmrIds (\ s a -> s{_bdmrIds = a}) . _Default
      . _Coerce

instance FromJSON BatchDeleteMessagesRequest where
        parseJSON
          = withObject "BatchDeleteMessagesRequest"
              (\ o ->
                 BatchDeleteMessagesRequest' <$>
                   (o .:? "ids" .!= mempty))

instance ToJSON BatchDeleteMessagesRequest where
        toJSON BatchDeleteMessagesRequest'{..}
          = object (catMaybes [("ids" .=) <$> _bdmrIds])

-- | Settings for a delegate. Delegates can read, send, and delete messages,
-- as well as view and add contacts, for the delegator\'s account. See
-- \"Set up mail delegation\" for more information about delegates.
--
-- /See:/ 'delegate' smart constructor.
data Delegate =
  Delegate'
    { _dVerificationStatus :: !(Maybe DelegateVerificationStatus)
    , _dDelegateEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Delegate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dVerificationStatus'
--
-- * 'dDelegateEmail'
delegate
    :: Delegate
delegate = Delegate' {_dVerificationStatus = Nothing, _dDelegateEmail = Nothing}


-- | Indicates whether this address has been verified and can act as a
-- delegate for the account. Read-only.
dVerificationStatus :: Lens' Delegate (Maybe DelegateVerificationStatus)
dVerificationStatus
  = lens _dVerificationStatus
      (\ s a -> s{_dVerificationStatus = a})

-- | The email address of the delegate.
dDelegateEmail :: Lens' Delegate (Maybe Text)
dDelegateEmail
  = lens _dDelegateEmail
      (\ s a -> s{_dDelegateEmail = a})

instance FromJSON Delegate where
        parseJSON
          = withObject "Delegate"
              (\ o ->
                 Delegate' <$>
                   (o .:? "verificationStatus") <*>
                     (o .:? "delegateEmail"))

instance ToJSON Delegate where
        toJSON Delegate'{..}
          = object
              (catMaybes
                 [("verificationStatus" .=) <$> _dVerificationStatus,
                  ("delegateEmail" .=) <$> _dDelegateEmail])

--
-- /See:/ 'modifyThreadRequest' smart constructor.
data ModifyThreadRequest =
  ModifyThreadRequest'
    { _mtrRemoveLabelIds :: !(Maybe [Text])
    , _mtrAddLabelIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ModifyThreadRequest' {_mtrRemoveLabelIds = Nothing, _mtrAddLabelIds = Nothing}


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
                 ModifyThreadRequest' <$>
                   (o .:? "removeLabelIds" .!= mempty) <*>
                     (o .:? "addLabelIds" .!= mempty))

instance ToJSON ModifyThreadRequest where
        toJSON ModifyThreadRequest'{..}
          = object
              (catMaybes
                 [("removeLabelIds" .=) <$> _mtrRemoveLabelIds,
                  ("addLabelIds" .=) <$> _mtrAddLabelIds])

-- | Response for the ListFilters method.
--
-- /See:/ 'listFiltersResponse' smart constructor.
newtype ListFiltersResponse =
  ListFiltersResponse'
    { _lfrFilter :: Maybe [Filter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListFiltersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfrFilter'
listFiltersResponse
    :: ListFiltersResponse
listFiltersResponse = ListFiltersResponse' {_lfrFilter = Nothing}


-- | List of a user\'s filters.
lfrFilter :: Lens' ListFiltersResponse [Filter]
lfrFilter
  = lens _lfrFilter (\ s a -> s{_lfrFilter = a}) .
      _Default
      . _Coerce

instance FromJSON ListFiltersResponse where
        parseJSON
          = withObject "ListFiltersResponse"
              (\ o ->
                 ListFiltersResponse' <$> (o .:? "filter" .!= mempty))

instance ToJSON ListFiltersResponse where
        toJSON ListFiltersResponse'{..}
          = object (catMaybes [("filter" .=) <$> _lfrFilter])

--
-- /See:/ 'modifyMessageRequest' smart constructor.
data ModifyMessageRequest =
  ModifyMessageRequest'
    { _mmrRemoveLabelIds :: !(Maybe [Text])
    , _mmrAddLabelIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ModifyMessageRequest'
    {_mmrRemoveLabelIds = Nothing, _mmrAddLabelIds = Nothing}


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
                 ModifyMessageRequest' <$>
                   (o .:? "removeLabelIds" .!= mempty) <*>
                     (o .:? "addLabelIds" .!= mempty))

instance ToJSON ModifyMessageRequest where
        toJSON ModifyMessageRequest'{..}
          = object
              (catMaybes
                 [("removeLabelIds" .=) <$> _mmrRemoveLabelIds,
                  ("addLabelIds" .=) <$> _mmrAddLabelIds])

-- | Response for the ListForwardingAddresses method.
--
-- /See:/ 'listForwardingAddressesResponse' smart constructor.
newtype ListForwardingAddressesResponse =
  ListForwardingAddressesResponse'
    { _lfarForwardingAddresses :: Maybe [ForwardingAddress]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListForwardingAddressesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lfarForwardingAddresses'
listForwardingAddressesResponse
    :: ListForwardingAddressesResponse
listForwardingAddressesResponse =
  ListForwardingAddressesResponse' {_lfarForwardingAddresses = Nothing}


-- | List of addresses that may be used for forwarding.
lfarForwardingAddresses :: Lens' ListForwardingAddressesResponse [ForwardingAddress]
lfarForwardingAddresses
  = lens _lfarForwardingAddresses
      (\ s a -> s{_lfarForwardingAddresses = a})
      . _Default
      . _Coerce

instance FromJSON ListForwardingAddressesResponse
         where
        parseJSON
          = withObject "ListForwardingAddressesResponse"
              (\ o ->
                 ListForwardingAddressesResponse' <$>
                   (o .:? "forwardingAddresses" .!= mempty))

instance ToJSON ListForwardingAddressesResponse where
        toJSON ListForwardingAddressesResponse'{..}
          = object
              (catMaybes
                 [("forwardingAddresses" .=) <$>
                    _lfarForwardingAddresses])

-- | POP settings for an account.
--
-- /See:/ 'popSettings' smart constructor.
data PopSettings =
  PopSettings'
    { _psAccessWindow :: !(Maybe PopSettingsAccessWindow)
    , _psDisPosition :: !(Maybe PopSettingsDisPosition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PopSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psAccessWindow'
--
-- * 'psDisPosition'
popSettings
    :: PopSettings
popSettings = PopSettings' {_psAccessWindow = Nothing, _psDisPosition = Nothing}


-- | The range of messages which are accessible via POP.
psAccessWindow :: Lens' PopSettings (Maybe PopSettingsAccessWindow)
psAccessWindow
  = lens _psAccessWindow
      (\ s a -> s{_psAccessWindow = a})

-- | The action that will be executed on a message after it has been fetched
-- via POP.
psDisPosition :: Lens' PopSettings (Maybe PopSettingsDisPosition)
psDisPosition
  = lens _psDisPosition
      (\ s a -> s{_psDisPosition = a})

instance FromJSON PopSettings where
        parseJSON
          = withObject "PopSettings"
              (\ o ->
                 PopSettings' <$>
                   (o .:? "accessWindow") <*> (o .:? "disposition"))

instance ToJSON PopSettings where
        toJSON PopSettings'{..}
          = object
              (catMaybes
                 [("accessWindow" .=) <$> _psAccessWindow,
                  ("disposition" .=) <$> _psDisPosition])

-- | A record of a change to the user\'s mailbox. Each history change may
-- affect multiple messages in multiple ways.
--
-- /See:/ 'history' smart constructor.
data History =
  History'
    { _hLabelsRemoved :: !(Maybe [HistoryLabelRemoved])
    , _hMessagesDeleted :: !(Maybe [HistoryMessageDeleted])
    , _hMessagesAdded :: !(Maybe [HistoryMessageAdded])
    , _hLabelsAdded :: !(Maybe [HistoryLabelAdded])
    , _hId :: !(Maybe (Textual Word64))
    , _hMessages :: !(Maybe [Message])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  History'
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
hId
  = lens _hId (\ s a -> s{_hId = a}) . mapping _Coerce

-- | List of messages changed in this history record. The fields for specific
-- change types, such as \`messagesAdded\` may duplicate messages in this
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
                 History' <$>
                   (o .:? "labelsRemoved" .!= mempty) <*>
                     (o .:? "messagesDeleted" .!= mempty)
                     <*> (o .:? "messagesAdded" .!= mempty)
                     <*> (o .:? "labelsAdded" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "messages" .!= mempty))

instance ToJSON History where
        toJSON History'{..}
          = object
              (catMaybes
                 [("labelsRemoved" .=) <$> _hLabelsRemoved,
                  ("messagesDeleted" .=) <$> _hMessagesDeleted,
                  ("messagesAdded" .=) <$> _hMessagesAdded,
                  ("labelsAdded" .=) <$> _hLabelsAdded,
                  ("id" .=) <$> _hId, ("messages" .=) <$> _hMessages])

-- | Response for the ListDelegates method.
--
-- /See:/ 'listDelegatesResponse' smart constructor.
newtype ListDelegatesResponse =
  ListDelegatesResponse'
    { _ldrDelegates :: Maybe [Delegate]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListDelegatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldrDelegates'
listDelegatesResponse
    :: ListDelegatesResponse
listDelegatesResponse = ListDelegatesResponse' {_ldrDelegates = Nothing}


-- | List of the user\'s delegates (with any verification status). If an
-- account doesn\'t have delegates, this field doesn\'t appear.
ldrDelegates :: Lens' ListDelegatesResponse [Delegate]
ldrDelegates
  = lens _ldrDelegates (\ s a -> s{_ldrDelegates = a})
      . _Default
      . _Coerce

instance FromJSON ListDelegatesResponse where
        parseJSON
          = withObject "ListDelegatesResponse"
              (\ o ->
                 ListDelegatesResponse' <$>
                   (o .:? "delegates" .!= mempty))

instance ToJSON ListDelegatesResponse where
        toJSON ListDelegatesResponse'{..}
          = object
              (catMaybes [("delegates" .=) <$> _ldrDelegates])

--
-- /See:/ 'labelColor' smart constructor.
data LabelColor =
  LabelColor'
    { _lcBackgRoundColor :: !(Maybe Text)
    , _lcTextColor :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LabelColor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcBackgRoundColor'
--
-- * 'lcTextColor'
labelColor
    :: LabelColor
labelColor = LabelColor' {_lcBackgRoundColor = Nothing, _lcTextColor = Nothing}


-- | The background color represented as hex string #RRGGBB (ex #000000).
-- This field is required in order to set the color of a label. Only the
-- following predefined set of color values are allowed: \\#000000,
-- #434343, #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff,
-- \\#fb4c2f, #ffad47, #fad165, #16a766, #43d692, #4a86e8, #a479e2,
-- #f691b3, \\#f6c5be, #ffe6c7, #fef1d1, #b9e4d0, #c6f3de, #c9daf8,
-- #e4d7f5, #fcdee8, \\#efa093, #ffd6a2, #fce8b3, #89d3b2, #a0eac9,
-- #a4c2f4, #d0bcf1, #fbc8d9, \\#e66550, #ffbc6b, #fcda83, #44b984,
-- #68dfa9, #6d9eeb, #b694e8, #f7a7c0, \\#cc3a21, #eaa041, #f2c960,
-- #149e60, #3dc789, #3c78d8, #8e63ce, #e07798, \\#ac2b16, #cf8933,
-- #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775, \\#822111,
-- #a46a21, #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c \\#464646,
-- #e7e7e7, #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff,
-- \\#711a36, #fbd3e0, #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706,
-- #ffdeb5, \\#594c05, #fbe983, #684e07, #fdedc1, #0b4f30, #b3efd3,
-- #04502e, #a2dcc1, \\#c2c2c2, #4986e7, #2da2bb, #b99aff, #994a64,
-- #f691b2, #ff7537, #ffad46, \\#662e37, #ebdbde, #cca6ac, #094228,
-- #42d692, #16a765
lcBackgRoundColor :: Lens' LabelColor (Maybe Text)
lcBackgRoundColor
  = lens _lcBackgRoundColor
      (\ s a -> s{_lcBackgRoundColor = a})

-- | The text color of the label, represented as hex string. This field is
-- required in order to set the color of a label. Only the following
-- predefined set of color values are allowed: \\#000000, #434343, #666666,
-- #999999, #cccccc, #efefef, #f3f3f3, #ffffff, \\#fb4c2f, #ffad47,
-- #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3, \\#f6c5be,
-- #ffe6c7, #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8,
-- \\#efa093, #ffd6a2, #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1,
-- #fbc8d9, \\#e66550, #ffbc6b, #fcda83, #44b984, #68dfa9, #6d9eeb,
-- #b694e8, #f7a7c0, \\#cc3a21, #eaa041, #f2c960, #149e60, #3dc789,
-- #3c78d8, #8e63ce, #e07798, \\#ac2b16, #cf8933, #d5ae49, #0b804b,
-- #2a9c68, #285bac, #653e9b, #b65775, \\#822111, #a46a21, #aa8831,
-- #076239, #1a764d, #1c4587, #41236d, #83334c \\#464646, #e7e7e7, #0d3472,
-- #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff, \\#711a36, #fbd3e0,
-- #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5, \\#594c05,
-- #fbe983, #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1,
-- \\#c2c2c2, #4986e7, #2da2bb, #b99aff, #994a64, #f691b2, #ff7537,
-- #ffad46, \\#662e37, #ebdbde, #cca6ac, #094228, #42d692, #16a765
lcTextColor :: Lens' LabelColor (Maybe Text)
lcTextColor
  = lens _lcTextColor (\ s a -> s{_lcTextColor = a})

instance FromJSON LabelColor where
        parseJSON
          = withObject "LabelColor"
              (\ o ->
                 LabelColor' <$>
                   (o .:? "backgroundColor") <*> (o .:? "textColor"))

instance ToJSON LabelColor where
        toJSON LabelColor'{..}
          = object
              (catMaybes
                 [("backgroundColor" .=) <$> _lcBackgRoundColor,
                  ("textColor" .=) <$> _lcTextColor])

-- | Message matching criteria.
--
-- /See:/ 'filterCriteria' smart constructor.
data FilterCriteria =
  FilterCriteria'
    { _fcSizeComparison :: !(Maybe FilterCriteriaSizeComparison)
    , _fcSubject :: !(Maybe Text)
    , _fcSize :: !(Maybe (Textual Int32))
    , _fcExcludeChats :: !(Maybe Bool)
    , _fcTo :: !(Maybe Text)
    , _fcFrom :: !(Maybe Text)
    , _fcQuery :: !(Maybe Text)
    , _fcNegatedQuery :: !(Maybe Text)
    , _fcHasAttachment :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilterCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcSizeComparison'
--
-- * 'fcSubject'
--
-- * 'fcSize'
--
-- * 'fcExcludeChats'
--
-- * 'fcTo'
--
-- * 'fcFrom'
--
-- * 'fcQuery'
--
-- * 'fcNegatedQuery'
--
-- * 'fcHasAttachment'
filterCriteria
    :: FilterCriteria
filterCriteria =
  FilterCriteria'
    { _fcSizeComparison = Nothing
    , _fcSubject = Nothing
    , _fcSize = Nothing
    , _fcExcludeChats = Nothing
    , _fcTo = Nothing
    , _fcFrom = Nothing
    , _fcQuery = Nothing
    , _fcNegatedQuery = Nothing
    , _fcHasAttachment = Nothing
    }


-- | How the message size in bytes should be in relation to the size field.
fcSizeComparison :: Lens' FilterCriteria (Maybe FilterCriteriaSizeComparison)
fcSizeComparison
  = lens _fcSizeComparison
      (\ s a -> s{_fcSizeComparison = a})

-- | Case-insensitive phrase found in the message\'s subject. Trailing and
-- leading whitespace are be trimmed and adjacent spaces are collapsed.
fcSubject :: Lens' FilterCriteria (Maybe Text)
fcSubject
  = lens _fcSubject (\ s a -> s{_fcSubject = a})

-- | The size of the entire RFC822 message in bytes, including all headers
-- and attachments.
fcSize :: Lens' FilterCriteria (Maybe Int32)
fcSize
  = lens _fcSize (\ s a -> s{_fcSize = a}) .
      mapping _Coerce

-- | Whether the response should exclude chats.
fcExcludeChats :: Lens' FilterCriteria (Maybe Bool)
fcExcludeChats
  = lens _fcExcludeChats
      (\ s a -> s{_fcExcludeChats = a})

-- | The recipient\'s display name or email address. Includes recipients in
-- the \"to\", \"cc\", and \"bcc\" header fields. You can use simply the
-- local part of the email address. For example, \"example\" and
-- \"example\'\" both match \"example\'gmail.com\". This field is
-- case-insensitive.
fcTo :: Lens' FilterCriteria (Maybe Text)
fcTo = lens _fcTo (\ s a -> s{_fcTo = a})

-- | The sender\'s display name or email address.
fcFrom :: Lens' FilterCriteria (Maybe Text)
fcFrom = lens _fcFrom (\ s a -> s{_fcFrom = a})

-- | Only return messages matching the specified query. Supports the same
-- query format as the Gmail search box. For example,
-- \`\"from:someuser\'example.com rfc822msgid: is:unread\"\`.
fcQuery :: Lens' FilterCriteria (Maybe Text)
fcQuery = lens _fcQuery (\ s a -> s{_fcQuery = a})

-- | Only return messages not matching the specified query. Supports the same
-- query format as the Gmail search box. For example,
-- \`\"from:someuser\'example.com rfc822msgid: is:unread\"\`.
fcNegatedQuery :: Lens' FilterCriteria (Maybe Text)
fcNegatedQuery
  = lens _fcNegatedQuery
      (\ s a -> s{_fcNegatedQuery = a})

-- | Whether the message has any attachment.
fcHasAttachment :: Lens' FilterCriteria (Maybe Bool)
fcHasAttachment
  = lens _fcHasAttachment
      (\ s a -> s{_fcHasAttachment = a})

instance FromJSON FilterCriteria where
        parseJSON
          = withObject "FilterCriteria"
              (\ o ->
                 FilterCriteria' <$>
                   (o .:? "sizeComparison") <*> (o .:? "subject") <*>
                     (o .:? "size")
                     <*> (o .:? "excludeChats")
                     <*> (o .:? "to")
                     <*> (o .:? "from")
                     <*> (o .:? "query")
                     <*> (o .:? "negatedQuery")
                     <*> (o .:? "hasAttachment"))

instance ToJSON FilterCriteria where
        toJSON FilterCriteria'{..}
          = object
              (catMaybes
                 [("sizeComparison" .=) <$> _fcSizeComparison,
                  ("subject" .=) <$> _fcSubject,
                  ("size" .=) <$> _fcSize,
                  ("excludeChats" .=) <$> _fcExcludeChats,
                  ("to" .=) <$> _fcTo, ("from" .=) <$> _fcFrom,
                  ("query" .=) <$> _fcQuery,
                  ("negatedQuery" .=) <$> _fcNegatedQuery,
                  ("hasAttachment" .=) <$> _fcHasAttachment])

-- | Profile for a Gmail user.
--
-- /See:/ 'proFile' smart constructor.
data ProFile =
  ProFile'
    { _pfMessagesTotal :: !(Maybe (Textual Int32))
    , _pfThreadsTotal :: !(Maybe (Textual Int32))
    , _pfHistoryId :: !(Maybe (Textual Word64))
    , _pfEmailAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ProFile'
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
      . mapping _Coerce

-- | The total number of threads in the mailbox.
pfThreadsTotal :: Lens' ProFile (Maybe Int32)
pfThreadsTotal
  = lens _pfThreadsTotal
      (\ s a -> s{_pfThreadsTotal = a})
      . mapping _Coerce

-- | The ID of the mailbox\'s current history record.
pfHistoryId :: Lens' ProFile (Maybe Word64)
pfHistoryId
  = lens _pfHistoryId (\ s a -> s{_pfHistoryId = a}) .
      mapping _Coerce

-- | The user\'s email address.
pfEmailAddress :: Lens' ProFile (Maybe Text)
pfEmailAddress
  = lens _pfEmailAddress
      (\ s a -> s{_pfEmailAddress = a})

instance FromJSON ProFile where
        parseJSON
          = withObject "ProFile"
              (\ o ->
                 ProFile' <$>
                   (o .:? "messagesTotal") <*> (o .:? "threadsTotal")
                     <*> (o .:? "historyId")
                     <*> (o .:? "emailAddress"))

instance ToJSON ProFile where
        toJSON ProFile'{..}
          = object
              (catMaybes
                 [("messagesTotal" .=) <$> _pfMessagesTotal,
                  ("threadsTotal" .=) <$> _pfThreadsTotal,
                  ("historyId" .=) <$> _pfHistoryId,
                  ("emailAddress" .=) <$> _pfEmailAddress])

--
-- /See:/ 'messagePartHeader' smart constructor.
data MessagePartHeader =
  MessagePartHeader'
    { _mphValue :: !(Maybe Text)
    , _mphName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MessagePartHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mphValue'
--
-- * 'mphName'
messagePartHeader
    :: MessagePartHeader
messagePartHeader = MessagePartHeader' {_mphValue = Nothing, _mphName = Nothing}


-- | The value of the header after the \`:\` separator. For example,
-- \`someuser\'example.com\`.
mphValue :: Lens' MessagePartHeader (Maybe Text)
mphValue = lens _mphValue (\ s a -> s{_mphValue = a})

-- | The name of the header before the \`:\` separator. For example, \`To\`.
mphName :: Lens' MessagePartHeader (Maybe Text)
mphName = lens _mphName (\ s a -> s{_mphName = a})

instance FromJSON MessagePartHeader where
        parseJSON
          = withObject "MessagePartHeader"
              (\ o ->
                 MessagePartHeader' <$>
                   (o .:? "value") <*> (o .:? "name"))

instance ToJSON MessagePartHeader where
        toJSON MessagePartHeader'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _mphValue,
                  ("name" .=) <$> _mphName])

--
-- /See:/ 'listHistoryResponse' smart constructor.
data ListHistoryResponse =
  ListHistoryResponse'
    { _lhrNextPageToken :: !(Maybe Text)
    , _lhrHistory :: !(Maybe [History])
    , _lhrHistoryId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListHistoryResponse'
    { _lhrNextPageToken = Nothing
    , _lhrHistory = Nothing
    , _lhrHistoryId = Nothing
    }


-- | Page token to retrieve the next page of results in the list.
lhrNextPageToken :: Lens' ListHistoryResponse (Maybe Text)
lhrNextPageToken
  = lens _lhrNextPageToken
      (\ s a -> s{_lhrNextPageToken = a})

-- | List of history records. Any \`messages\` contained in the response will
-- typically only have \`id\` and \`threadId\` fields populated.
lhrHistory :: Lens' ListHistoryResponse [History]
lhrHistory
  = lens _lhrHistory (\ s a -> s{_lhrHistory = a}) .
      _Default
      . _Coerce

-- | The ID of the mailbox\'s current history record.
lhrHistoryId :: Lens' ListHistoryResponse (Maybe Word64)
lhrHistoryId
  = lens _lhrHistoryId (\ s a -> s{_lhrHistoryId = a})
      . mapping _Coerce

instance FromJSON ListHistoryResponse where
        parseJSON
          = withObject "ListHistoryResponse"
              (\ o ->
                 ListHistoryResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "history" .!= mempty)
                     <*> (o .:? "historyId"))

instance ToJSON ListHistoryResponse where
        toJSON ListHistoryResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lhrNextPageToken,
                  ("history" .=) <$> _lhrHistory,
                  ("historyId" .=) <$> _lhrHistoryId])

-- | Settings associated with a send-as alias, which can be either the
-- primary login address associated with the account or a custom \"from\"
-- address. Send-as aliases correspond to the \"Send Mail As\" feature in
-- the web interface.
--
-- /See:/ 'sendAs' smart constructor.
data SendAs =
  SendAs'
    { _saSignature :: !(Maybe Text)
    , _saReplyToAddress :: !(Maybe Text)
    , _saTreatAsAlias :: !(Maybe Bool)
    , _saSendAsEmail :: !(Maybe Text)
    , _saDisplayName :: !(Maybe Text)
    , _saVerificationStatus :: !(Maybe SendAsVerificationStatus)
    , _saSmtpMsa :: !(Maybe SmtpMsa)
    , _saIsPrimary :: !(Maybe Bool)
    , _saIsDefault :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SendAs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saSignature'
--
-- * 'saReplyToAddress'
--
-- * 'saTreatAsAlias'
--
-- * 'saSendAsEmail'
--
-- * 'saDisplayName'
--
-- * 'saVerificationStatus'
--
-- * 'saSmtpMsa'
--
-- * 'saIsPrimary'
--
-- * 'saIsDefault'
sendAs
    :: SendAs
sendAs =
  SendAs'
    { _saSignature = Nothing
    , _saReplyToAddress = Nothing
    , _saTreatAsAlias = Nothing
    , _saSendAsEmail = Nothing
    , _saDisplayName = Nothing
    , _saVerificationStatus = Nothing
    , _saSmtpMsa = Nothing
    , _saIsPrimary = Nothing
    , _saIsDefault = Nothing
    }


-- | An optional HTML signature that is included in messages composed with
-- this alias in the Gmail web UI. This signature is added to new emails
-- only.
saSignature :: Lens' SendAs (Maybe Text)
saSignature
  = lens _saSignature (\ s a -> s{_saSignature = a})

-- | An optional email address that is included in a \"Reply-To:\" header for
-- mail sent using this alias. If this is empty, Gmail will not generate a
-- \"Reply-To:\" header.
saReplyToAddress :: Lens' SendAs (Maybe Text)
saReplyToAddress
  = lens _saReplyToAddress
      (\ s a -> s{_saReplyToAddress = a})

-- | Whether Gmail should treat this address as an alias for the user\'s
-- primary email address. This setting only applies to custom \"from\"
-- aliases.
saTreatAsAlias :: Lens' SendAs (Maybe Bool)
saTreatAsAlias
  = lens _saTreatAsAlias
      (\ s a -> s{_saTreatAsAlias = a})

-- | The email address that appears in the \"From:\" header for mail sent
-- using this alias. This is read-only for all operations except create.
saSendAsEmail :: Lens' SendAs (Maybe Text)
saSendAsEmail
  = lens _saSendAsEmail
      (\ s a -> s{_saSendAsEmail = a})

-- | A name that appears in the \"From:\" header for mail sent using this
-- alias. For custom \"from\" addresses, when this is empty, Gmail will
-- populate the \"From:\" header with the name that is used for the primary
-- address associated with the account. If the admin has disabled the
-- ability for users to update their name format, requests to update this
-- field for the primary login will silently fail.
saDisplayName :: Lens' SendAs (Maybe Text)
saDisplayName
  = lens _saDisplayName
      (\ s a -> s{_saDisplayName = a})

-- | Indicates whether this address has been verified for use as a send-as
-- alias. Read-only. This setting only applies to custom \"from\" aliases.
saVerificationStatus :: Lens' SendAs (Maybe SendAsVerificationStatus)
saVerificationStatus
  = lens _saVerificationStatus
      (\ s a -> s{_saVerificationStatus = a})

-- | An optional SMTP service that will be used as an outbound relay for mail
-- sent using this alias. If this is empty, outbound mail will be sent
-- directly from Gmail\'s servers to the destination SMTP service. This
-- setting only applies to custom \"from\" aliases.
saSmtpMsa :: Lens' SendAs (Maybe SmtpMsa)
saSmtpMsa
  = lens _saSmtpMsa (\ s a -> s{_saSmtpMsa = a})

-- | Whether this address is the primary address used to login to the
-- account. Every Gmail account has exactly one primary address, and it
-- cannot be deleted from the collection of send-as aliases. This field is
-- read-only.
saIsPrimary :: Lens' SendAs (Maybe Bool)
saIsPrimary
  = lens _saIsPrimary (\ s a -> s{_saIsPrimary = a})

-- | Whether this address is selected as the default \"From:\" address in
-- situations such as composing a new message or sending a vacation
-- auto-reply. Every Gmail account has exactly one default send-as address,
-- so the only legal value that clients may write to this field is
-- \`true\`. Changing this from \`false\` to \`true\` for an address will
-- result in this field becoming \`false\` for the other previous default
-- address.
saIsDefault :: Lens' SendAs (Maybe Bool)
saIsDefault
  = lens _saIsDefault (\ s a -> s{_saIsDefault = a})

instance FromJSON SendAs where
        parseJSON
          = withObject "SendAs"
              (\ o ->
                 SendAs' <$>
                   (o .:? "signature") <*> (o .:? "replyToAddress") <*>
                     (o .:? "treatAsAlias")
                     <*> (o .:? "sendAsEmail")
                     <*> (o .:? "displayName")
                     <*> (o .:? "verificationStatus")
                     <*> (o .:? "smtpMsa")
                     <*> (o .:? "isPrimary")
                     <*> (o .:? "isDefault"))

instance ToJSON SendAs where
        toJSON SendAs'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _saSignature,
                  ("replyToAddress" .=) <$> _saReplyToAddress,
                  ("treatAsAlias" .=) <$> _saTreatAsAlias,
                  ("sendAsEmail" .=) <$> _saSendAsEmail,
                  ("displayName" .=) <$> _saDisplayName,
                  ("verificationStatus" .=) <$> _saVerificationStatus,
                  ("smtpMsa" .=) <$> _saSmtpMsa,
                  ("isPrimary" .=) <$> _saIsPrimary,
                  ("isDefault" .=) <$> _saIsDefault])

--
-- /See:/ 'listThreadsResponse' smart constructor.
data ListThreadsResponse =
  ListThreadsResponse'
    { _ltrNextPageToken :: !(Maybe Text)
    , _ltrResultSizeEstimate :: !(Maybe (Textual Word32))
    , _ltrThreads :: !(Maybe [Thread])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListThreadsResponse'
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
      . mapping _Coerce

-- | List of threads. Note that each thread resource does not contain a list
-- of \`messages\`. The list of \`messages\` for a given thread can be
-- fetched using the threads.get method.
ltrThreads :: Lens' ListThreadsResponse [Thread]
ltrThreads
  = lens _ltrThreads (\ s a -> s{_ltrThreads = a}) .
      _Default
      . _Coerce

instance FromJSON ListThreadsResponse where
        parseJSON
          = withObject "ListThreadsResponse"
              (\ o ->
                 ListThreadsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resultSizeEstimate")
                     <*> (o .:? "threads" .!= mempty))

instance ToJSON ListThreadsResponse where
        toJSON ListThreadsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrNextPageToken,
                  ("resultSizeEstimate" .=) <$> _ltrResultSizeEstimate,
                  ("threads" .=) <$> _ltrThreads])

-- | A single MIME message part.
--
-- /See:/ 'messagePart' smart constructor.
data MessagePart =
  MessagePart'
    { _mpParts :: !(Maybe [MessagePart])
    , _mpBody :: !(Maybe MessagePartBody)
    , _mpMimeType :: !(Maybe Text)
    , _mpHeaders :: !(Maybe [MessagePartHeader])
    , _mpPartId :: !(Maybe Text)
    , _mpFilename :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  MessagePart'
    { _mpParts = Nothing
    , _mpBody = Nothing
    , _mpMimeType = Nothing
    , _mpHeaders = Nothing
    , _mpPartId = Nothing
    , _mpFilename = Nothing
    }


-- | The child MIME message parts of this part. This only applies to
-- container MIME message parts, for example \`multipart\/*\`. For non-
-- container MIME message part types, such as \`text\/plain\`, this field
-- is empty. For more information, see RFC 1521.
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
-- RFC 2822 email headers such as \`To\`, \`From\`, and \`Subject\`.
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
                 MessagePart' <$>
                   (o .:? "parts" .!= mempty) <*> (o .:? "body") <*>
                     (o .:? "mimeType")
                     <*> (o .:? "headers" .!= mempty)
                     <*> (o .:? "partId")
                     <*> (o .:? "filename"))

instance ToJSON MessagePart where
        toJSON MessagePart'{..}
          = object
              (catMaybes
                 [("parts" .=) <$> _mpParts, ("body" .=) <$> _mpBody,
                  ("mimeType" .=) <$> _mpMimeType,
                  ("headers" .=) <$> _mpHeaders,
                  ("partId" .=) <$> _mpPartId,
                  ("filename" .=) <$> _mpFilename])

--
-- /See:/ 'historyLabelAdded' smart constructor.
data HistoryLabelAdded =
  HistoryLabelAdded'
    { _hlaLabelIds :: !(Maybe [Text])
    , _hlaMessage :: !(Maybe Message)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  HistoryLabelAdded' {_hlaLabelIds = Nothing, _hlaMessage = Nothing}


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
                 HistoryLabelAdded' <$>
                   (o .:? "labelIds" .!= mempty) <*> (o .:? "message"))

instance ToJSON HistoryLabelAdded where
        toJSON HistoryLabelAdded'{..}
          = object
              (catMaybes
                 [("labelIds" .=) <$> _hlaLabelIds,
                  ("message" .=) <$> _hlaMessage])

--
-- /See:/ 'listLabelsResponse' smart constructor.
newtype ListLabelsResponse =
  ListLabelsResponse'
    { _llrLabels :: Maybe [Label]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListLabelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrLabels'
listLabelsResponse
    :: ListLabelsResponse
listLabelsResponse = ListLabelsResponse' {_llrLabels = Nothing}


-- | List of labels. Note that each label resource only contains an \`id\`,
-- \`name\`, \`messageListVisibility\`, \`labelListVisibility\`, and
-- \`type\`. The labels.get method can fetch additional label details.
llrLabels :: Lens' ListLabelsResponse [Label]
llrLabels
  = lens _llrLabels (\ s a -> s{_llrLabels = a}) .
      _Default
      . _Coerce

instance FromJSON ListLabelsResponse where
        parseJSON
          = withObject "ListLabelsResponse"
              (\ o ->
                 ListLabelsResponse' <$> (o .:? "labels" .!= mempty))

instance ToJSON ListLabelsResponse where
        toJSON ListLabelsResponse'{..}
          = object (catMaybes [("labels" .=) <$> _llrLabels])

-- | Vacation auto-reply settings for an account. These settings correspond
-- to the \"Vacation responder\" feature in the web interface.
--
-- /See:/ 'vacationSettings' smart constructor.
data VacationSettings =
  VacationSettings'
    { _vsEnableAutoReply :: !(Maybe Bool)
    , _vsResponseBodyPlainText :: !(Maybe Text)
    , _vsRestrictToDomain :: !(Maybe Bool)
    , _vsStartTime :: !(Maybe (Textual Int64))
    , _vsResponseBodyHTML :: !(Maybe Text)
    , _vsRestrictToContacts :: !(Maybe Bool)
    , _vsResponseSubject :: !(Maybe Text)
    , _vsEndTime :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VacationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsEnableAutoReply'
--
-- * 'vsResponseBodyPlainText'
--
-- * 'vsRestrictToDomain'
--
-- * 'vsStartTime'
--
-- * 'vsResponseBodyHTML'
--
-- * 'vsRestrictToContacts'
--
-- * 'vsResponseSubject'
--
-- * 'vsEndTime'
vacationSettings
    :: VacationSettings
vacationSettings =
  VacationSettings'
    { _vsEnableAutoReply = Nothing
    , _vsResponseBodyPlainText = Nothing
    , _vsRestrictToDomain = Nothing
    , _vsStartTime = Nothing
    , _vsResponseBodyHTML = Nothing
    , _vsRestrictToContacts = Nothing
    , _vsResponseSubject = Nothing
    , _vsEndTime = Nothing
    }


-- | Flag that controls whether Gmail automatically replies to messages.
vsEnableAutoReply :: Lens' VacationSettings (Maybe Bool)
vsEnableAutoReply
  = lens _vsEnableAutoReply
      (\ s a -> s{_vsEnableAutoReply = a})

-- | Response body in plain text format. If both \`response_body_plain_text\`
-- and \`response_body_html\` are specified, \`response_body_html\` will be
-- used.
vsResponseBodyPlainText :: Lens' VacationSettings (Maybe Text)
vsResponseBodyPlainText
  = lens _vsResponseBodyPlainText
      (\ s a -> s{_vsResponseBodyPlainText = a})

-- | Flag that determines whether responses are sent to recipients who are
-- outside of the user\'s domain. This feature is only available for G
-- Suite users.
vsRestrictToDomain :: Lens' VacationSettings (Maybe Bool)
vsRestrictToDomain
  = lens _vsRestrictToDomain
      (\ s a -> s{_vsRestrictToDomain = a})

-- | An optional start time for sending auto-replies (epoch ms). When this is
-- specified, Gmail will automatically reply only to messages that it
-- receives after the start time. If both \`startTime\` and \`endTime\` are
-- specified, \`startTime\` must precede \`endTime\`.
vsStartTime :: Lens' VacationSettings (Maybe Int64)
vsStartTime
  = lens _vsStartTime (\ s a -> s{_vsStartTime = a}) .
      mapping _Coerce

-- | Response body in HTML format. Gmail will sanitize the HTML before
-- storing it. If both \`response_body_plain_text\` and
-- \`response_body_html\` are specified, \`response_body_html\` will be
-- used.
vsResponseBodyHTML :: Lens' VacationSettings (Maybe Text)
vsResponseBodyHTML
  = lens _vsResponseBodyHTML
      (\ s a -> s{_vsResponseBodyHTML = a})

-- | Flag that determines whether responses are sent to recipients who are
-- not in the user\'s list of contacts.
vsRestrictToContacts :: Lens' VacationSettings (Maybe Bool)
vsRestrictToContacts
  = lens _vsRestrictToContacts
      (\ s a -> s{_vsRestrictToContacts = a})

-- | Optional text to prepend to the subject line in vacation responses. In
-- order to enable auto-replies, either the response subject or the
-- response body must be nonempty.
vsResponseSubject :: Lens' VacationSettings (Maybe Text)
vsResponseSubject
  = lens _vsResponseSubject
      (\ s a -> s{_vsResponseSubject = a})

-- | An optional end time for sending auto-replies (epoch ms). When this is
-- specified, Gmail will automatically reply only to messages that it
-- receives before the end time. If both \`startTime\` and \`endTime\` are
-- specified, \`startTime\` must precede \`endTime\`.
vsEndTime :: Lens' VacationSettings (Maybe Int64)
vsEndTime
  = lens _vsEndTime (\ s a -> s{_vsEndTime = a}) .
      mapping _Coerce

instance FromJSON VacationSettings where
        parseJSON
          = withObject "VacationSettings"
              (\ o ->
                 VacationSettings' <$>
                   (o .:? "enableAutoReply") <*>
                     (o .:? "responseBodyPlainText")
                     <*> (o .:? "restrictToDomain")
                     <*> (o .:? "startTime")
                     <*> (o .:? "responseBodyHtml")
                     <*> (o .:? "restrictToContacts")
                     <*> (o .:? "responseSubject")
                     <*> (o .:? "endTime"))

instance ToJSON VacationSettings where
        toJSON VacationSettings'{..}
          = object
              (catMaybes
                 [("enableAutoReply" .=) <$> _vsEnableAutoReply,
                  ("responseBodyPlainText" .=) <$>
                    _vsResponseBodyPlainText,
                  ("restrictToDomain" .=) <$> _vsRestrictToDomain,
                  ("startTime" .=) <$> _vsStartTime,
                  ("responseBodyHtml" .=) <$> _vsResponseBodyHTML,
                  ("restrictToContacts" .=) <$> _vsRestrictToContacts,
                  ("responseSubject" .=) <$> _vsResponseSubject,
                  ("endTime" .=) <$> _vsEndTime])

--
-- /See:/ 'historyMessageDeleted' smart constructor.
newtype HistoryMessageDeleted =
  HistoryMessageDeleted'
    { _hmdMessage :: Maybe Message
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistoryMessageDeleted' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmdMessage'
historyMessageDeleted
    :: HistoryMessageDeleted
historyMessageDeleted = HistoryMessageDeleted' {_hmdMessage = Nothing}


hmdMessage :: Lens' HistoryMessageDeleted (Maybe Message)
hmdMessage
  = lens _hmdMessage (\ s a -> s{_hmdMessage = a})

instance FromJSON HistoryMessageDeleted where
        parseJSON
          = withObject "HistoryMessageDeleted"
              (\ o -> HistoryMessageDeleted' <$> (o .:? "message"))

instance ToJSON HistoryMessageDeleted where
        toJSON HistoryMessageDeleted'{..}
          = object (catMaybes [("message" .=) <$> _hmdMessage])

-- | The body of a single MIME message part.
--
-- /See:/ 'messagePartBody' smart constructor.
data MessagePartBody =
  MessagePartBody'
    { _mpbSize :: !(Maybe (Textual Int32))
    , _mpbData :: !(Maybe Bytes)
    , _mpbAttachmentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  MessagePartBody'
    {_mpbSize = Nothing, _mpbData = Nothing, _mpbAttachmentId = Nothing}


-- | Number of bytes for the message part data (encoding notwithstanding).
mpbSize :: Lens' MessagePartBody (Maybe Int32)
mpbSize
  = lens _mpbSize (\ s a -> s{_mpbSize = a}) .
      mapping _Coerce

-- | The body data of a MIME message part as a base64url encoded string. May
-- be empty for MIME container types that have no message body or when the
-- body data is sent as a separate attachment. An attachment ID is present
-- if the body data is contained in a separate attachment.
mpbData :: Lens' MessagePartBody (Maybe ByteString)
mpbData
  = lens _mpbData (\ s a -> s{_mpbData = a}) .
      mapping _Bytes

-- | When present, contains the ID of an external attachment that can be
-- retrieved in a separate \`messages.attachments.get\` request. When not
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
                 MessagePartBody' <$>
                   (o .:? "size") <*> (o .:? "data") <*>
                     (o .:? "attachmentId"))

instance ToJSON MessagePartBody where
        toJSON MessagePartBody'{..}
          = object
              (catMaybes
                 [("size" .=) <$> _mpbSize, ("data" .=) <$> _mpbData,
                  ("attachmentId" .=) <$> _mpbAttachmentId])

-- | Auto-forwarding settings for an account.
--
-- /See:/ 'autoForwarding' smart constructor.
data AutoForwarding =
  AutoForwarding'
    { _afEnabled :: !(Maybe Bool)
    , _afDisPosition :: !(Maybe AutoForwardingDisPosition)
    , _afEmailAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoForwarding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afEnabled'
--
-- * 'afDisPosition'
--
-- * 'afEmailAddress'
autoForwarding
    :: AutoForwarding
autoForwarding =
  AutoForwarding'
    {_afEnabled = Nothing, _afDisPosition = Nothing, _afEmailAddress = Nothing}


-- | Whether all incoming mail is automatically forwarded to another address.
afEnabled :: Lens' AutoForwarding (Maybe Bool)
afEnabled
  = lens _afEnabled (\ s a -> s{_afEnabled = a})

-- | The state that a message should be left in after it has been forwarded.
afDisPosition :: Lens' AutoForwarding (Maybe AutoForwardingDisPosition)
afDisPosition
  = lens _afDisPosition
      (\ s a -> s{_afDisPosition = a})

-- | Email address to which all incoming messages are forwarded. This email
-- address must be a verified member of the forwarding addresses.
afEmailAddress :: Lens' AutoForwarding (Maybe Text)
afEmailAddress
  = lens _afEmailAddress
      (\ s a -> s{_afEmailAddress = a})

instance FromJSON AutoForwarding where
        parseJSON
          = withObject "AutoForwarding"
              (\ o ->
                 AutoForwarding' <$>
                   (o .:? "enabled") <*> (o .:? "disposition") <*>
                     (o .:? "emailAddress"))

instance ToJSON AutoForwarding where
        toJSON AutoForwarding'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _afEnabled,
                  ("disposition" .=) <$> _afDisPosition,
                  ("emailAddress" .=) <$> _afEmailAddress])

--
-- /See:/ 'listDraftsResponse' smart constructor.
data ListDraftsResponse =
  ListDraftsResponse'
    { _ldrNextPageToken :: !(Maybe Text)
    , _ldrResultSizeEstimate :: !(Maybe (Textual Word32))
    , _ldrDrafts :: !(Maybe [Draft])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListDraftsResponse'
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
      . mapping _Coerce

-- | List of drafts. Note that the \`Message\` property in each \`Draft\`
-- resource only contains an \`id\` and a \`threadId\`. The messages.get
-- method can fetch additional message details.
ldrDrafts :: Lens' ListDraftsResponse [Draft]
ldrDrafts
  = lens _ldrDrafts (\ s a -> s{_ldrDrafts = a}) .
      _Default
      . _Coerce

instance FromJSON ListDraftsResponse where
        parseJSON
          = withObject "ListDraftsResponse"
              (\ o ->
                 ListDraftsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resultSizeEstimate")
                     <*> (o .:? "drafts" .!= mempty))

instance ToJSON ListDraftsResponse where
        toJSON ListDraftsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldrNextPageToken,
                  ("resultSizeEstimate" .=) <$> _ldrResultSizeEstimate,
                  ("drafts" .=) <$> _ldrDrafts])

-- | Response for the ListSendAs method.
--
-- /See:/ 'listSendAsResponse' smart constructor.
newtype ListSendAsResponse =
  ListSendAsResponse'
    { _lsarSendAs :: Maybe [SendAs]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSendAsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsarSendAs'
listSendAsResponse
    :: ListSendAsResponse
listSendAsResponse = ListSendAsResponse' {_lsarSendAs = Nothing}


-- | List of send-as aliases.
lsarSendAs :: Lens' ListSendAsResponse [SendAs]
lsarSendAs
  = lens _lsarSendAs (\ s a -> s{_lsarSendAs = a}) .
      _Default
      . _Coerce

instance FromJSON ListSendAsResponse where
        parseJSON
          = withObject "ListSendAsResponse"
              (\ o ->
                 ListSendAsResponse' <$> (o .:? "sendAs" .!= mempty))

instance ToJSON ListSendAsResponse where
        toJSON ListSendAsResponse'{..}
          = object (catMaybes [("sendAs" .=) <$> _lsarSendAs])

-- | Language settings for an account. These settings correspond to the
-- \"Language settings\" feature in the web interface.
--
-- /See:/ 'languageSettings' smart constructor.
newtype LanguageSettings =
  LanguageSettings'
    { _lsDisplayLanguage :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LanguageSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsDisplayLanguage'
languageSettings
    :: LanguageSettings
languageSettings = LanguageSettings' {_lsDisplayLanguage = Nothing}


-- | The language to display Gmail in, formatted as an RFC 3066 Language Tag
-- (for example \`en-GB\`, \`fr\` or \`ja\` for British English, French, or
-- Japanese respectively). The set of languages supported by Gmail evolves
-- over time, so please refer to the \"Language\" dropdown in the Gmail
-- settings for all available options, as described in the language
-- settings help article. A table of sample values is also provided in the
-- Managing Language Settings guide Not all Gmail clients can display the
-- same set of languages. In the case that a user\'s display language is
-- not available for use on a particular client, said client automatically
-- chooses to display in the closest supported variant (or a reasonable
-- default).
lsDisplayLanguage :: Lens' LanguageSettings (Maybe Text)
lsDisplayLanguage
  = lens _lsDisplayLanguage
      (\ s a -> s{_lsDisplayLanguage = a})

instance FromJSON LanguageSettings where
        parseJSON
          = withObject "LanguageSettings"
              (\ o ->
                 LanguageSettings' <$> (o .:? "displayLanguage"))

instance ToJSON LanguageSettings where
        toJSON LanguageSettings'{..}
          = object
              (catMaybes
                 [("displayLanguage" .=) <$> _lsDisplayLanguage])

-- | Push notification watch response.
--
-- /See:/ 'watchResponse' smart constructor.
data WatchResponse =
  WatchResponse'
    { _wrExpiration :: !(Maybe (Textual Int64))
    , _wrHistoryId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wrExpiration'
--
-- * 'wrHistoryId'
watchResponse
    :: WatchResponse
watchResponse = WatchResponse' {_wrExpiration = Nothing, _wrHistoryId = Nothing}


-- | When Gmail will stop sending notifications for mailbox updates (epoch
-- millis). Call \`watch\` again before this time to renew the watch.
wrExpiration :: Lens' WatchResponse (Maybe Int64)
wrExpiration
  = lens _wrExpiration (\ s a -> s{_wrExpiration = a})
      . mapping _Coerce

-- | The ID of the mailbox\'s current history record.
wrHistoryId :: Lens' WatchResponse (Maybe Word64)
wrHistoryId
  = lens _wrHistoryId (\ s a -> s{_wrHistoryId = a}) .
      mapping _Coerce

instance FromJSON WatchResponse where
        parseJSON
          = withObject "WatchResponse"
              (\ o ->
                 WatchResponse' <$>
                   (o .:? "expiration") <*> (o .:? "historyId"))

instance ToJSON WatchResponse where
        toJSON WatchResponse'{..}
          = object
              (catMaybes
                 [("expiration" .=) <$> _wrExpiration,
                  ("historyId" .=) <$> _wrHistoryId])

--
-- /See:/ 'batchModifyMessagesRequest' smart constructor.
data BatchModifyMessagesRequest =
  BatchModifyMessagesRequest'
    { _bmmrIds :: !(Maybe [Text])
    , _bmmrRemoveLabelIds :: !(Maybe [Text])
    , _bmmrAddLabelIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchModifyMessagesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bmmrIds'
--
-- * 'bmmrRemoveLabelIds'
--
-- * 'bmmrAddLabelIds'
batchModifyMessagesRequest
    :: BatchModifyMessagesRequest
batchModifyMessagesRequest =
  BatchModifyMessagesRequest'
    { _bmmrIds = Nothing
    , _bmmrRemoveLabelIds = Nothing
    , _bmmrAddLabelIds = Nothing
    }


-- | The IDs of the messages to modify. There is a limit of 1000 ids per
-- request.
bmmrIds :: Lens' BatchModifyMessagesRequest [Text]
bmmrIds
  = lens _bmmrIds (\ s a -> s{_bmmrIds = a}) . _Default
      . _Coerce

-- | A list of label IDs to remove from messages.
bmmrRemoveLabelIds :: Lens' BatchModifyMessagesRequest [Text]
bmmrRemoveLabelIds
  = lens _bmmrRemoveLabelIds
      (\ s a -> s{_bmmrRemoveLabelIds = a})
      . _Default
      . _Coerce

-- | A list of label IDs to add to messages.
bmmrAddLabelIds :: Lens' BatchModifyMessagesRequest [Text]
bmmrAddLabelIds
  = lens _bmmrAddLabelIds
      (\ s a -> s{_bmmrAddLabelIds = a})
      . _Default
      . _Coerce

instance FromJSON BatchModifyMessagesRequest where
        parseJSON
          = withObject "BatchModifyMessagesRequest"
              (\ o ->
                 BatchModifyMessagesRequest' <$>
                   (o .:? "ids" .!= mempty) <*>
                     (o .:? "removeLabelIds" .!= mempty)
                     <*> (o .:? "addLabelIds" .!= mempty))

instance ToJSON BatchModifyMessagesRequest where
        toJSON BatchModifyMessagesRequest'{..}
          = object
              (catMaybes
                 [("ids" .=) <$> _bmmrIds,
                  ("removeLabelIds" .=) <$> _bmmrRemoveLabelIds,
                  ("addLabelIds" .=) <$> _bmmrAddLabelIds])

-- | A draft email in the user\'s mailbox.
--
-- /See:/ 'draft' smart constructor.
data Draft =
  Draft'
    { _dId :: !(Maybe Text)
    , _dMessage :: !(Maybe Message)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Draft' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dId'
--
-- * 'dMessage'
draft
    :: Draft
draft = Draft' {_dId = Nothing, _dMessage = Nothing}


-- | The immutable ID of the draft.
dId :: Lens' Draft (Maybe Text)
dId = lens _dId (\ s a -> s{_dId = a})

-- | The message content of the draft.
dMessage :: Lens' Draft (Maybe Message)
dMessage = lens _dMessage (\ s a -> s{_dMessage = a})

instance FromJSON Draft where
        parseJSON
          = withObject "Draft"
              (\ o ->
                 Draft' <$> (o .:? "id") <*> (o .:? "message"))

instance ToJSON Draft where
        toJSON Draft'{..}
          = object
              (catMaybes
                 [("id" .=) <$> _dId, ("message" .=) <$> _dMessage])

-- | Configuration for communication with an SMTP service.
--
-- /See:/ 'smtpMsa' smart constructor.
data SmtpMsa =
  SmtpMsa'
    { _smSecurityMode :: !(Maybe SmtpMsaSecurityMode)
    , _smUsername :: !(Maybe Text)
    , _smPassword :: !(Maybe Text)
    , _smHost :: !(Maybe Text)
    , _smPort :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SmtpMsa' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smSecurityMode'
--
-- * 'smUsername'
--
-- * 'smPassword'
--
-- * 'smHost'
--
-- * 'smPort'
smtpMsa
    :: SmtpMsa
smtpMsa =
  SmtpMsa'
    { _smSecurityMode = Nothing
    , _smUsername = Nothing
    , _smPassword = Nothing
    , _smHost = Nothing
    , _smPort = Nothing
    }


-- | The protocol that will be used to secure communication with the SMTP
-- service. Required.
smSecurityMode :: Lens' SmtpMsa (Maybe SmtpMsaSecurityMode)
smSecurityMode
  = lens _smSecurityMode
      (\ s a -> s{_smSecurityMode = a})

-- | The username that will be used for authentication with the SMTP service.
-- This is a write-only field that can be specified in requests to create
-- or update SendAs settings; it is never populated in responses.
smUsername :: Lens' SmtpMsa (Maybe Text)
smUsername
  = lens _smUsername (\ s a -> s{_smUsername = a})

-- | The password that will be used for authentication with the SMTP service.
-- This is a write-only field that can be specified in requests to create
-- or update SendAs settings; it is never populated in responses.
smPassword :: Lens' SmtpMsa (Maybe Text)
smPassword
  = lens _smPassword (\ s a -> s{_smPassword = a})

-- | The hostname of the SMTP service. Required.
smHost :: Lens' SmtpMsa (Maybe Text)
smHost = lens _smHost (\ s a -> s{_smHost = a})

-- | The port of the SMTP service. Required.
smPort :: Lens' SmtpMsa (Maybe Int32)
smPort
  = lens _smPort (\ s a -> s{_smPort = a}) .
      mapping _Coerce

instance FromJSON SmtpMsa where
        parseJSON
          = withObject "SmtpMsa"
              (\ o ->
                 SmtpMsa' <$>
                   (o .:? "securityMode") <*> (o .:? "username") <*>
                     (o .:? "password")
                     <*> (o .:? "host")
                     <*> (o .:? "port"))

instance ToJSON SmtpMsa where
        toJSON SmtpMsa'{..}
          = object
              (catMaybes
                 [("securityMode" .=) <$> _smSecurityMode,
                  ("username" .=) <$> _smUsername,
                  ("password" .=) <$> _smPassword,
                  ("host" .=) <$> _smHost, ("port" .=) <$> _smPort])

-- | Settings for a forwarding address.
--
-- /See:/ 'forwardingAddress' smart constructor.
data ForwardingAddress =
  ForwardingAddress'
    { _faForwardingEmail :: !(Maybe Text)
    , _faVerificationStatus :: !(Maybe ForwardingAddressVerificationStatus)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ForwardingAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faForwardingEmail'
--
-- * 'faVerificationStatus'
forwardingAddress
    :: ForwardingAddress
forwardingAddress =
  ForwardingAddress'
    {_faForwardingEmail = Nothing, _faVerificationStatus = Nothing}


-- | An email address to which messages can be forwarded.
faForwardingEmail :: Lens' ForwardingAddress (Maybe Text)
faForwardingEmail
  = lens _faForwardingEmail
      (\ s a -> s{_faForwardingEmail = a})

-- | Indicates whether this address has been verified and is usable for
-- forwarding. Read-only.
faVerificationStatus :: Lens' ForwardingAddress (Maybe ForwardingAddressVerificationStatus)
faVerificationStatus
  = lens _faVerificationStatus
      (\ s a -> s{_faVerificationStatus = a})

instance FromJSON ForwardingAddress where
        parseJSON
          = withObject "ForwardingAddress"
              (\ o ->
                 ForwardingAddress' <$>
                   (o .:? "forwardingEmail") <*>
                     (o .:? "verificationStatus"))

instance ToJSON ForwardingAddress where
        toJSON ForwardingAddress'{..}
          = object
              (catMaybes
                 [("forwardingEmail" .=) <$> _faForwardingEmail,
                  ("verificationStatus" .=) <$> _faVerificationStatus])

-- | Resource definition for Gmail filters. Filters apply to specific
-- messages instead of an entire email thread.
--
-- /See:/ 'filter'' smart constructor.
data Filter =
  Filter'
    { _fAction :: !(Maybe FilterAction)
    , _fId :: !(Maybe Text)
    , _fCriteria :: !(Maybe FilterCriteria)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Filter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fAction'
--
-- * 'fId'
--
-- * 'fCriteria'
filter'
    :: Filter
filter' = Filter' {_fAction = Nothing, _fId = Nothing, _fCriteria = Nothing}


-- | Action that the filter performs.
fAction :: Lens' Filter (Maybe FilterAction)
fAction = lens _fAction (\ s a -> s{_fAction = a})

-- | The server assigned ID of the filter.
fId :: Lens' Filter (Maybe Text)
fId = lens _fId (\ s a -> s{_fId = a})

-- | Matching criteria for the filter.
fCriteria :: Lens' Filter (Maybe FilterCriteria)
fCriteria
  = lens _fCriteria (\ s a -> s{_fCriteria = a})

instance FromJSON Filter where
        parseJSON
          = withObject "Filter"
              (\ o ->
                 Filter' <$>
                   (o .:? "action") <*> (o .:? "id") <*>
                     (o .:? "criteria"))

instance ToJSON Filter where
        toJSON Filter'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _fAction, ("id" .=) <$> _fId,
                  ("criteria" .=) <$> _fCriteria])

-- | Set up or update a new push notification watch on this user\'s mailbox.
--
-- /See:/ 'watchRequest' smart constructor.
data WatchRequest =
  WatchRequest'
    { _wrLabelFilterAction :: !(Maybe WatchRequestLabelFilterAction)
    , _wrTopicName :: !(Maybe Text)
    , _wrLabelIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  WatchRequest'
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
-- (using the Cloud Pub\/Sub \"v1\" topic naming format). Note that the
-- \"my-project-identifier\" portion must exactly match your Google
-- developer project id (the one executing this watch request).
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
                 WatchRequest' <$>
                   (o .:? "labelFilterAction") <*> (o .:? "topicName")
                     <*> (o .:? "labelIds" .!= mempty))

instance ToJSON WatchRequest where
        toJSON WatchRequest'{..}
          = object
              (catMaybes
                 [("labelFilterAction" .=) <$> _wrLabelFilterAction,
                  ("topicName" .=) <$> _wrTopicName,
                  ("labelIds" .=) <$> _wrLabelIds])

-- | IMAP settings for an account.
--
-- /See:/ 'imapSettings' smart constructor.
data ImapSettings =
  ImapSettings'
    { _isEnabled :: !(Maybe Bool)
    , _isExpungeBehavior :: !(Maybe ImapSettingsExpungeBehavior)
    , _isAutoExpunge :: !(Maybe Bool)
    , _isMaxFolderSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImapSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isEnabled'
--
-- * 'isExpungeBehavior'
--
-- * 'isAutoExpunge'
--
-- * 'isMaxFolderSize'
imapSettings
    :: ImapSettings
imapSettings =
  ImapSettings'
    { _isEnabled = Nothing
    , _isExpungeBehavior = Nothing
    , _isAutoExpunge = Nothing
    , _isMaxFolderSize = Nothing
    }


-- | Whether IMAP is enabled for the account.
isEnabled :: Lens' ImapSettings (Maybe Bool)
isEnabled
  = lens _isEnabled (\ s a -> s{_isEnabled = a})

-- | The action that will be executed on a message when it is marked as
-- deleted and expunged from the last visible IMAP folder.
isExpungeBehavior :: Lens' ImapSettings (Maybe ImapSettingsExpungeBehavior)
isExpungeBehavior
  = lens _isExpungeBehavior
      (\ s a -> s{_isExpungeBehavior = a})

-- | If this value is true, Gmail will immediately expunge a message when it
-- is marked as deleted in IMAP. Otherwise, Gmail will wait for an update
-- from the client before expunging messages marked as deleted.
isAutoExpunge :: Lens' ImapSettings (Maybe Bool)
isAutoExpunge
  = lens _isAutoExpunge
      (\ s a -> s{_isAutoExpunge = a})

-- | An optional limit on the number of messages that an IMAP folder may
-- contain. Legal values are 0, 1000, 2000, 5000 or 10000. A value of zero
-- is interpreted to mean that there is no limit.
isMaxFolderSize :: Lens' ImapSettings (Maybe Int32)
isMaxFolderSize
  = lens _isMaxFolderSize
      (\ s a -> s{_isMaxFolderSize = a})
      . mapping _Coerce

instance FromJSON ImapSettings where
        parseJSON
          = withObject "ImapSettings"
              (\ o ->
                 ImapSettings' <$>
                   (o .:? "enabled") <*> (o .:? "expungeBehavior") <*>
                     (o .:? "autoExpunge")
                     <*> (o .:? "maxFolderSize"))

instance ToJSON ImapSettings where
        toJSON ImapSettings'{..}
          = object
              (catMaybes
                 [("enabled" .=) <$> _isEnabled,
                  ("expungeBehavior" .=) <$> _isExpungeBehavior,
                  ("autoExpunge" .=) <$> _isAutoExpunge,
                  ("maxFolderSize" .=) <$> _isMaxFolderSize])

--
-- /See:/ 'listSmimeInfoResponse' smart constructor.
newtype ListSmimeInfoResponse =
  ListSmimeInfoResponse'
    { _lsirSmimeInfo :: Maybe [SmimeInfo]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListSmimeInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsirSmimeInfo'
listSmimeInfoResponse
    :: ListSmimeInfoResponse
listSmimeInfoResponse = ListSmimeInfoResponse' {_lsirSmimeInfo = Nothing}


-- | List of SmimeInfo.
lsirSmimeInfo :: Lens' ListSmimeInfoResponse [SmimeInfo]
lsirSmimeInfo
  = lens _lsirSmimeInfo
      (\ s a -> s{_lsirSmimeInfo = a})
      . _Default
      . _Coerce

instance FromJSON ListSmimeInfoResponse where
        parseJSON
          = withObject "ListSmimeInfoResponse"
              (\ o ->
                 ListSmimeInfoResponse' <$>
                   (o .:? "smimeInfo" .!= mempty))

instance ToJSON ListSmimeInfoResponse where
        toJSON ListSmimeInfoResponse'{..}
          = object
              (catMaybes [("smimeInfo" .=) <$> _lsirSmimeInfo])

-- | An email message.
--
-- /See:/ 'message' smart constructor.
data Message =
  Message'
    { _mRaw :: !(Maybe Bytes)
    , _mSnippet :: !(Maybe Text)
    , _mSizeEstimate :: !(Maybe (Textual Int32))
    , _mPayload :: !(Maybe MessagePart)
    , _mHistoryId :: !(Maybe (Textual Word64))
    , _mId :: !(Maybe Text)
    , _mLabelIds :: !(Maybe [Text])
    , _mThreadId :: !(Maybe Text)
    , _mInternalDate :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Message'
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
-- string. Returned in \`messages.get\` and \`drafts.get\` responses when
-- the \`format=RAW\` parameter is supplied.
mRaw :: Lens' Message (Maybe ByteString)
mRaw
  = lens _mRaw (\ s a -> s{_mRaw = a}) . mapping _Bytes

-- | A short part of the message text.
mSnippet :: Lens' Message (Maybe Text)
mSnippet = lens _mSnippet (\ s a -> s{_mSnippet = a})

-- | Estimated size in bytes of the message.
mSizeEstimate :: Lens' Message (Maybe Int32)
mSizeEstimate
  = lens _mSizeEstimate
      (\ s a -> s{_mSizeEstimate = a})
      . mapping _Coerce

-- | The parsed email structure in the message parts.
mPayload :: Lens' Message (Maybe MessagePart)
mPayload = lens _mPayload (\ s a -> s{_mPayload = a})

-- | The ID of the last history record that modified this message.
mHistoryId :: Lens' Message (Maybe Word64)
mHistoryId
  = lens _mHistoryId (\ s a -> s{_mHistoryId = a}) .
      mapping _Coerce

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
-- to a thread, the following criteria must be met: 1. The requested
-- \`threadId\` must be specified on the \`Message\` or \`Draft.Message\`
-- you supply with your request. 2. The \`References\` and \`In-Reply-To\`
-- headers must be set in compliance with the [RFC
-- 2822](https:\/\/tools.ietf.org\/html\/rfc2822) standard. 3. The
-- \`Subject\` headers must match.
mThreadId :: Lens' Message (Maybe Text)
mThreadId
  = lens _mThreadId (\ s a -> s{_mThreadId = a})

-- | The internal message creation timestamp (epoch ms), which determines
-- ordering in the inbox. For normal SMTP-received email, this represents
-- the time the message was originally accepted by Google, which is more
-- reliable than the \`Date\` header. However, for API-migrated mail, it
-- can be configured by client to be based on the \`Date\` header.
mInternalDate :: Lens' Message (Maybe Int64)
mInternalDate
  = lens _mInternalDate
      (\ s a -> s{_mInternalDate = a})
      . mapping _Coerce

instance FromJSON Message where
        parseJSON
          = withObject "Message"
              (\ o ->
                 Message' <$>
                   (o .:? "raw") <*> (o .:? "snippet") <*>
                     (o .:? "sizeEstimate")
                     <*> (o .:? "payload")
                     <*> (o .:? "historyId")
                     <*> (o .:? "id")
                     <*> (o .:? "labelIds" .!= mempty)
                     <*> (o .:? "threadId")
                     <*> (o .:? "internalDate"))

instance ToJSON Message where
        toJSON Message'{..}
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
data HistoryLabelRemoved =
  HistoryLabelRemoved'
    { _hlrLabelIds :: !(Maybe [Text])
    , _hlrMessage :: !(Maybe Message)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  HistoryLabelRemoved' {_hlrLabelIds = Nothing, _hlrMessage = Nothing}


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
                 HistoryLabelRemoved' <$>
                   (o .:? "labelIds" .!= mempty) <*> (o .:? "message"))

instance ToJSON HistoryLabelRemoved where
        toJSON HistoryLabelRemoved'{..}
          = object
              (catMaybes
                 [("labelIds" .=) <$> _hlrLabelIds,
                  ("message" .=) <$> _hlrMessage])

-- | A collection of messages representing a conversation.
--
-- /See:/ 'thread' smart constructor.
data Thread =
  Thread'
    { _tSnippet :: !(Maybe Text)
    , _tHistoryId :: !(Maybe (Textual Word64))
    , _tId :: !(Maybe Text)
    , _tMessages :: !(Maybe [Message])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Thread'
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
  = lens _tHistoryId (\ s a -> s{_tHistoryId = a}) .
      mapping _Coerce

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
                 Thread' <$>
                   (o .:? "snippet") <*> (o .:? "historyId") <*>
                     (o .:? "id")
                     <*> (o .:? "messages" .!= mempty))

instance ToJSON Thread where
        toJSON Thread'{..}
          = object
              (catMaybes
                 [("snippet" .=) <$> _tSnippet,
                  ("historyId" .=) <$> _tHistoryId, ("id" .=) <$> _tId,
                  ("messages" .=) <$> _tMessages])

-- | A set of actions to perform on a message.
--
-- /See:/ 'filterAction' smart constructor.
data FilterAction =
  FilterAction'
    { _faForward :: !(Maybe Text)
    , _faRemoveLabelIds :: !(Maybe [Text])
    , _faAddLabelIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilterAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faForward'
--
-- * 'faRemoveLabelIds'
--
-- * 'faAddLabelIds'
filterAction
    :: FilterAction
filterAction =
  FilterAction'
    { _faForward = Nothing
    , _faRemoveLabelIds = Nothing
    , _faAddLabelIds = Nothing
    }


-- | Email address that the message should be forwarded to.
faForward :: Lens' FilterAction (Maybe Text)
faForward
  = lens _faForward (\ s a -> s{_faForward = a})

-- | List of labels to remove from the message.
faRemoveLabelIds :: Lens' FilterAction [Text]
faRemoveLabelIds
  = lens _faRemoveLabelIds
      (\ s a -> s{_faRemoveLabelIds = a})
      . _Default
      . _Coerce

-- | List of labels to add to the message.
faAddLabelIds :: Lens' FilterAction [Text]
faAddLabelIds
  = lens _faAddLabelIds
      (\ s a -> s{_faAddLabelIds = a})
      . _Default
      . _Coerce

instance FromJSON FilterAction where
        parseJSON
          = withObject "FilterAction"
              (\ o ->
                 FilterAction' <$>
                   (o .:? "forward") <*>
                     (o .:? "removeLabelIds" .!= mempty)
                     <*> (o .:? "addLabelIds" .!= mempty))

instance ToJSON FilterAction where
        toJSON FilterAction'{..}
          = object
              (catMaybes
                 [("forward" .=) <$> _faForward,
                  ("removeLabelIds" .=) <$> _faRemoveLabelIds,
                  ("addLabelIds" .=) <$> _faAddLabelIds])

-- | Labels are used to categorize messages and threads within the user\'s
-- mailbox. The maximum number of labels supported for a user\'s mailbox is
-- 10,000.
--
-- /See:/ 'label' smart constructor.
data Label =
  Label'
    { _lThreadsUnread :: !(Maybe (Textual Int32))
    , _lMessageListVisibility :: !(Maybe LabelMessageListVisibility)
    , _lMessagesTotal :: !(Maybe (Textual Int32))
    , _lColor :: !(Maybe LabelColor)
    , _lMessagesUnread :: !(Maybe (Textual Int32))
    , _lName :: !(Maybe Text)
    , _lThreadsTotal :: !(Maybe (Textual Int32))
    , _lLabelListVisibility :: !(Maybe LabelLabelListVisibility)
    , _lId :: !(Maybe Text)
    , _lType :: !(Maybe LabelType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'lColor'
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
  Label'
    { _lThreadsUnread = Nothing
    , _lMessageListVisibility = Nothing
    , _lMessagesTotal = Nothing
    , _lColor = Nothing
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
      . mapping _Coerce

-- | The visibility of messages with this label in the message list in the
-- Gmail web interface.
lMessageListVisibility :: Lens' Label (Maybe LabelMessageListVisibility)
lMessageListVisibility
  = lens _lMessageListVisibility
      (\ s a -> s{_lMessageListVisibility = a})

-- | The total number of messages with the label.
lMessagesTotal :: Lens' Label (Maybe Int32)
lMessagesTotal
  = lens _lMessagesTotal
      (\ s a -> s{_lMessagesTotal = a})
      . mapping _Coerce

-- | The color to assign to the label. Color is only available for labels
-- that have their \`type\` set to \`user\`.
lColor :: Lens' Label (Maybe LabelColor)
lColor = lens _lColor (\ s a -> s{_lColor = a})

-- | The number of unread messages with the label.
lMessagesUnread :: Lens' Label (Maybe Int32)
lMessagesUnread
  = lens _lMessagesUnread
      (\ s a -> s{_lMessagesUnread = a})
      . mapping _Coerce

-- | The display name of the label.
lName :: Lens' Label (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | The total number of threads with the label.
lThreadsTotal :: Lens' Label (Maybe Int32)
lThreadsTotal
  = lens _lThreadsTotal
      (\ s a -> s{_lThreadsTotal = a})
      . mapping _Coerce

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
-- is not guaranteed. For example, users can apply and remove the \`INBOX\`
-- and \`UNREAD\` labels from messages and threads, but cannot apply or
-- remove the \`DRAFTS\` or \`SENT\` labels from messages or threads.
lType :: Lens' Label (Maybe LabelType)
lType = lens _lType (\ s a -> s{_lType = a})

instance FromJSON Label where
        parseJSON
          = withObject "Label"
              (\ o ->
                 Label' <$>
                   (o .:? "threadsUnread") <*>
                     (o .:? "messageListVisibility")
                     <*> (o .:? "messagesTotal")
                     <*> (o .:? "color")
                     <*> (o .:? "messagesUnread")
                     <*> (o .:? "name")
                     <*> (o .:? "threadsTotal")
                     <*> (o .:? "labelListVisibility")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON Label where
        toJSON Label'{..}
          = object
              (catMaybes
                 [("threadsUnread" .=) <$> _lThreadsUnread,
                  ("messageListVisibility" .=) <$>
                    _lMessageListVisibility,
                  ("messagesTotal" .=) <$> _lMessagesTotal,
                  ("color" .=) <$> _lColor,
                  ("messagesUnread" .=) <$> _lMessagesUnread,
                  ("name" .=) <$> _lName,
                  ("threadsTotal" .=) <$> _lThreadsTotal,
                  ("labelListVisibility" .=) <$> _lLabelListVisibility,
                  ("id" .=) <$> _lId, ("type" .=) <$> _lType])

-- | An S\/MIME email config.
--
-- /See:/ 'smimeInfo' smart constructor.
data SmimeInfo =
  SmimeInfo'
    { _siPem :: !(Maybe Text)
    , _siExpiration :: !(Maybe (Textual Int64))
    , _siEncryptedKeyPassword :: !(Maybe Text)
    , _siId :: !(Maybe Text)
    , _siPkcs12 :: !(Maybe Bytes)
    , _siIssuerCn :: !(Maybe Text)
    , _siIsDefault :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SmimeInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siPem'
--
-- * 'siExpiration'
--
-- * 'siEncryptedKeyPassword'
--
-- * 'siId'
--
-- * 'siPkcs12'
--
-- * 'siIssuerCn'
--
-- * 'siIsDefault'
smimeInfo
    :: SmimeInfo
smimeInfo =
  SmimeInfo'
    { _siPem = Nothing
    , _siExpiration = Nothing
    , _siEncryptedKeyPassword = Nothing
    , _siId = Nothing
    , _siPkcs12 = Nothing
    , _siIssuerCn = Nothing
    , _siIsDefault = Nothing
    }


-- | PEM formatted X509 concatenated certificate string (standard base64
-- encoding). Format used for returning key, which includes public key as
-- well as certificate chain (not private key).
siPem :: Lens' SmimeInfo (Maybe Text)
siPem = lens _siPem (\ s a -> s{_siPem = a})

-- | When the certificate expires (in milliseconds since epoch).
siExpiration :: Lens' SmimeInfo (Maybe Int64)
siExpiration
  = lens _siExpiration (\ s a -> s{_siExpiration = a})
      . mapping _Coerce

-- | Encrypted key password, when key is encrypted.
siEncryptedKeyPassword :: Lens' SmimeInfo (Maybe Text)
siEncryptedKeyPassword
  = lens _siEncryptedKeyPassword
      (\ s a -> s{_siEncryptedKeyPassword = a})

-- | The immutable ID for the SmimeInfo.
siId :: Lens' SmimeInfo (Maybe Text)
siId = lens _siId (\ s a -> s{_siId = a})

-- | PKCS#12 format containing a single private\/public key pair and
-- certificate chain. This format is only accepted from client for creating
-- a new SmimeInfo and is never returned, because the private key is not
-- intended to be exported. PKCS#12 may be encrypted, in which case
-- encryptedKeyPassword should be set appropriately.
siPkcs12 :: Lens' SmimeInfo (Maybe ByteString)
siPkcs12
  = lens _siPkcs12 (\ s a -> s{_siPkcs12 = a}) .
      mapping _Bytes

-- | The S\/MIME certificate issuer\'s common name.
siIssuerCn :: Lens' SmimeInfo (Maybe Text)
siIssuerCn
  = lens _siIssuerCn (\ s a -> s{_siIssuerCn = a})

-- | Whether this SmimeInfo is the default one for this user\'s send-as
-- address.
siIsDefault :: Lens' SmimeInfo (Maybe Bool)
siIsDefault
  = lens _siIsDefault (\ s a -> s{_siIsDefault = a})

instance FromJSON SmimeInfo where
        parseJSON
          = withObject "SmimeInfo"
              (\ o ->
                 SmimeInfo' <$>
                   (o .:? "pem") <*> (o .:? "expiration") <*>
                     (o .:? "encryptedKeyPassword")
                     <*> (o .:? "id")
                     <*> (o .:? "pkcs12")
                     <*> (o .:? "issuerCn")
                     <*> (o .:? "isDefault"))

instance ToJSON SmimeInfo where
        toJSON SmimeInfo'{..}
          = object
              (catMaybes
                 [("pem" .=) <$> _siPem,
                  ("expiration" .=) <$> _siExpiration,
                  ("encryptedKeyPassword" .=) <$>
                    _siEncryptedKeyPassword,
                  ("id" .=) <$> _siId, ("pkcs12" .=) <$> _siPkcs12,
                  ("issuerCn" .=) <$> _siIssuerCn,
                  ("isDefault" .=) <$> _siIsDefault])

--
-- /See:/ 'listMessagesResponse' smart constructor.
data ListMessagesResponse =
  ListMessagesResponse'
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrResultSizeEstimate :: !(Maybe (Textual Word32))
    , _lmrMessages :: !(Maybe [Message])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListMessagesResponse'
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
      . mapping _Coerce

-- | List of messages. Note that each message resource contains only an
-- \`id\` and a \`threadId\`. Additional message details can be fetched
-- using the messages.get method.
lmrMessages :: Lens' ListMessagesResponse [Message]
lmrMessages
  = lens _lmrMessages (\ s a -> s{_lmrMessages = a}) .
      _Default
      . _Coerce

instance FromJSON ListMessagesResponse where
        parseJSON
          = withObject "ListMessagesResponse"
              (\ o ->
                 ListMessagesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resultSizeEstimate")
                     <*> (o .:? "messages" .!= mempty))

instance ToJSON ListMessagesResponse where
        toJSON ListMessagesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("resultSizeEstimate" .=) <$> _lmrResultSizeEstimate,
                  ("messages" .=) <$> _lmrMessages])

--
-- /See:/ 'historyMessageAdded' smart constructor.
newtype HistoryMessageAdded =
  HistoryMessageAdded'
    { _hmaMessage :: Maybe Message
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistoryMessageAdded' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hmaMessage'
historyMessageAdded
    :: HistoryMessageAdded
historyMessageAdded = HistoryMessageAdded' {_hmaMessage = Nothing}


hmaMessage :: Lens' HistoryMessageAdded (Maybe Message)
hmaMessage
  = lens _hmaMessage (\ s a -> s{_hmaMessage = a})

instance FromJSON HistoryMessageAdded where
        parseJSON
          = withObject "HistoryMessageAdded"
              (\ o -> HistoryMessageAdded' <$> (o .:? "message"))

instance ToJSON HistoryMessageAdded where
        toJSON HistoryMessageAdded'{..}
          = object (catMaybes [("message" .=) <$> _hmaMessage])
