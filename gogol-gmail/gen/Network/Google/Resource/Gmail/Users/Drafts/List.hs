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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the drafts in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.drafts.list@.
module Network.Google.Resource.Gmail.Users.Drafts.List
    (
    -- * REST Resource
      UsersDraftsListResource

    -- * Creating a Request
    , usersDraftsList
    , UsersDraftsList

    -- * Request Lenses
    , udlUserId
    , udlIncludeSpamTrash
    , udlPageToken
    , udlMaxResults
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @gmail.users.drafts.list@ method which the
-- 'UsersDraftsList' request conforms to.
type UsersDraftsListResource =
     "gmail" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "drafts" :>
               QueryParam "includeSpamTrash" Bool :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListDraftsResponse

-- | Lists the drafts in the user\'s mailbox.
--
-- /See:/ 'usersDraftsList' smart constructor.
data UsersDraftsList = UsersDraftsList
    { _udlUserId           :: !Text
    , _udlIncludeSpamTrash :: !Bool
    , _udlPageToken        :: !(Maybe Text)
    , _udlMaxResults       :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udlUserId'
--
-- * 'udlIncludeSpamTrash'
--
-- * 'udlPageToken'
--
-- * 'udlMaxResults'
usersDraftsList
    :: UsersDraftsList
usersDraftsList =
    UsersDraftsList
    { _udlUserId = "me"
    , _udlIncludeSpamTrash = False
    , _udlPageToken = Nothing
    , _udlMaxResults = 100
    }

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udlUserId :: Lens' UsersDraftsList Text
udlUserId
  = lens _udlUserId (\ s a -> s{_udlUserId = a})

-- | Include drafts from SPAM and TRASH in the results.
udlIncludeSpamTrash :: Lens' UsersDraftsList Bool
udlIncludeSpamTrash
  = lens _udlIncludeSpamTrash
      (\ s a -> s{_udlIncludeSpamTrash = a})

-- | Page token to retrieve a specific page of results in the list.
udlPageToken :: Lens' UsersDraftsList (Maybe Text)
udlPageToken
  = lens _udlPageToken (\ s a -> s{_udlPageToken = a})

-- | Maximum number of drafts to return.
udlMaxResults :: Lens' UsersDraftsList Word32
udlMaxResults
  = lens _udlMaxResults
      (\ s a -> s{_udlMaxResults = a})
      . _Coerce

instance GoogleRequest UsersDraftsList where
        type Rs UsersDraftsList = ListDraftsResponse
        type Scopes UsersDraftsList =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.compose",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient UsersDraftsList{..}
          = go _udlUserId (Just _udlIncludeSpamTrash)
              _udlPageToken
              (Just _udlMaxResults)
              (Just AltJSON)
              gmailService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDraftsListResource)
                      mempty
