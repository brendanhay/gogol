{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.EmailMigration.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.EmailMigration.Types.Product where

import           Network.Google.EmailMigration.Types.Sum
import           Network.Google.Prelude

-- | JSON template for MailItem object in Email Migration API.
--
-- /See:/ 'mailItem' smart constructor.
data MailItem = MailItem'
    { _miIsDeleted :: !(Maybe Bool)
    , _miIsDraft   :: !(Maybe Bool)
    , _miIsStarred :: !(Maybe Bool)
    , _miKind      :: !Text
    , _miIsUnread  :: !(Maybe Bool)
    , _miLabels    :: !(Maybe [Text])
    , _miIsInbox   :: !(Maybe Bool)
    , _miIsTrash   :: !(Maybe Bool)
    , _miIsSent    :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MailItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miIsDeleted'
--
-- * 'miIsDraft'
--
-- * 'miIsStarred'
--
-- * 'miKind'
--
-- * 'miIsUnread'
--
-- * 'miLabels'
--
-- * 'miIsInbox'
--
-- * 'miIsTrash'
--
-- * 'miIsSent'
mailItem
    :: MailItem
mailItem =
    MailItem'
    { _miIsDeleted = Nothing
    , _miIsDraft = Nothing
    , _miIsStarred = Nothing
    , _miKind = "mailItem"
    , _miIsUnread = Nothing
    , _miLabels = Nothing
    , _miIsInbox = Nothing
    , _miIsTrash = Nothing
    , _miIsSent = Nothing
    }

-- | Boolean indicating if the mail is deleted (used in Vault)
miIsDeleted :: Lens' MailItem (Maybe Bool)
miIsDeleted
  = lens _miIsDeleted (\ s a -> s{_miIsDeleted = a})

-- | Boolean indicating if the mail is draft
miIsDraft :: Lens' MailItem (Maybe Bool)
miIsDraft
  = lens _miIsDraft (\ s a -> s{_miIsDraft = a})

-- | Boolean indicating if the mail is starred
miIsStarred :: Lens' MailItem (Maybe Bool)
miIsStarred
  = lens _miIsStarred (\ s a -> s{_miIsStarred = a})

-- | Kind of resource this is.
miKind :: Lens' MailItem Text
miKind = lens _miKind (\ s a -> s{_miKind = a})

-- | Boolean indicating if the mail is unread
miIsUnread :: Lens' MailItem (Maybe Bool)
miIsUnread
  = lens _miIsUnread (\ s a -> s{_miIsUnread = a})

-- | List of labels (strings)
miLabels :: Lens' MailItem [Text]
miLabels
  = lens _miLabels (\ s a -> s{_miLabels = a}) .
      _Default
      . _Coerce

-- | Boolean indicating if the mail is in inbox
miIsInbox :: Lens' MailItem (Maybe Bool)
miIsInbox
  = lens _miIsInbox (\ s a -> s{_miIsInbox = a})

-- | Boolean indicating if the mail is in trash
miIsTrash :: Lens' MailItem (Maybe Bool)
miIsTrash
  = lens _miIsTrash (\ s a -> s{_miIsTrash = a})

-- | Boolean indicating if the mail is in \'sent mails\'
miIsSent :: Lens' MailItem (Maybe Bool)
miIsSent = lens _miIsSent (\ s a -> s{_miIsSent = a})

instance FromJSON MailItem where
        parseJSON
          = withObject "MailItem"
              (\ o ->
                 MailItem' <$>
                   (o .:? "isDeleted") <*> (o .:? "isDraft") <*>
                     (o .:? "isStarred")
                     <*> (o .:? "kind" .!= "mailItem")
                     <*> (o .:? "isUnread")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "isInbox")
                     <*> (o .:? "isTrash")
                     <*> (o .:? "isSent"))

instance ToJSON MailItem where
        toJSON MailItem'{..}
          = object
              (catMaybes
                 [("isDeleted" .=) <$> _miIsDeleted,
                  ("isDraft" .=) <$> _miIsDraft,
                  ("isStarred" .=) <$> _miIsStarred,
                  Just ("kind" .= _miKind),
                  ("isUnread" .=) <$> _miIsUnread,
                  ("labels" .=) <$> _miLabels,
                  ("isInbox" .=) <$> _miIsInbox,
                  ("isTrash" .=) <$> _miIsTrash,
                  ("isSent" .=) <$> _miIsSent])
