{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Gmail.Users.Messages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the messages in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesList@.
module Network.Google.Resource.Gmail.Users.Messages.List
    (
    -- * REST Resource
      UsersMessagesListResource

    -- * Creating a Request
    , usersMessagesList'
    , UsersMessagesList'

    -- * Request Lenses
    , umlQ
    , umlUserId
    , umlIncludeSpamTrash
    , umlLabelIds
    , umlPageToken
    , umlMaxResults
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesList@ method which the
-- 'UsersMessagesList'' request conforms to.
type UsersMessagesListResource =
     Capture "userId" Text :>
       "messages" :>
         QueryParam "q" Text :>
           QueryParam "includeSpamTrash" Bool :>
             QueryParams "labelIds" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ListMessagesResponse

-- | Lists the messages in the user\'s mailbox.
--
-- /See:/ 'usersMessagesList'' smart constructor.
data UsersMessagesList' = UsersMessagesList'
    { _umlQ                :: !(Maybe Text)
    , _umlUserId           :: !Text
    , _umlIncludeSpamTrash :: !Bool
    , _umlLabelIds         :: !(Maybe [Text])
    , _umlPageToken        :: !(Maybe Text)
    , _umlMaxResults       :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umlQ'
--
-- * 'umlUserId'
--
-- * 'umlIncludeSpamTrash'
--
-- * 'umlLabelIds'
--
-- * 'umlPageToken'
--
-- * 'umlMaxResults'
usersMessagesList'
    :: Text
    -> UsersMessagesList'
usersMessagesList' pUmlUserId_ =
    UsersMessagesList'
    { _umlQ = Nothing
    , _umlUserId = pUmlUserId_
    , _umlIncludeSpamTrash = False
    , _umlLabelIds = Nothing
    , _umlPageToken = Nothing
    , _umlMaxResults = 100
    }

-- | Only return messages matching the specified query. Supports the same
-- query format as the Gmail search box. For example,
-- \"from:someuser\'example.com rfc822msgid: is:unread\".
umlQ :: Lens' UsersMessagesList' (Maybe Text)
umlQ = lens _umlQ (\ s a -> s{_umlQ = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umlUserId :: Lens' UsersMessagesList' Text
umlUserId
  = lens _umlUserId (\ s a -> s{_umlUserId = a})

-- | Include messages from SPAM and TRASH in the results.
umlIncludeSpamTrash :: Lens' UsersMessagesList' Bool
umlIncludeSpamTrash
  = lens _umlIncludeSpamTrash
      (\ s a -> s{_umlIncludeSpamTrash = a})

-- | Only return messages with labels that match all of the specified label
-- IDs.
umlLabelIds :: Lens' UsersMessagesList' [Text]
umlLabelIds
  = lens _umlLabelIds (\ s a -> s{_umlLabelIds = a}) .
      _Default
      . _Coerce

-- | Page token to retrieve a specific page of results in the list.
umlPageToken :: Lens' UsersMessagesList' (Maybe Text)
umlPageToken
  = lens _umlPageToken (\ s a -> s{_umlPageToken = a})

-- | Maximum number of messages to return.
umlMaxResults :: Lens' UsersMessagesList' Word32
umlMaxResults
  = lens _umlMaxResults
      (\ s a -> s{_umlMaxResults = a})

instance GoogleRequest UsersMessagesList' where
        type Rs UsersMessagesList' = ListMessagesResponse
        requestClient UsersMessagesList'{..}
          = go _umlUserId _umlQ (Just _umlIncludeSpamTrash)
              (_umlLabelIds ^. _Default)
              _umlPageToken
              (Just _umlMaxResults)
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersMessagesListResource)
                      mempty
