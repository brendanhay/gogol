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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the drafts in the user\'s mailbox.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsList@.
module Network.Google.Resource.Gmail.Users.Drafts.List
    (
    -- * REST Resource
      UsersDraftsListResource

    -- * Creating a Request
    , usersDraftsList'
    , UsersDraftsList'

    -- * Request Lenses
    , udlQuotaUser
    , udlPrettyPrint
    , udlUserIP
    , udlUserId
    , udlKey
    , udlPageToken
    , udlOAuthToken
    , udlMaxResults
    , udlFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsList@ method which the
-- 'UsersDraftsList'' request conforms to.
type UsersDraftsListResource =
     Capture "userId" Text :>
       "drafts" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListDraftsResponse

-- | Lists the drafts in the user\'s mailbox.
--
-- /See:/ 'usersDraftsList'' smart constructor.
data UsersDraftsList' = UsersDraftsList'
    { _udlQuotaUser   :: !(Maybe Text)
    , _udlPrettyPrint :: !Bool
    , _udlUserIP      :: !(Maybe Text)
    , _udlUserId      :: !Text
    , _udlKey         :: !(Maybe AuthKey)
    , _udlPageToken   :: !(Maybe Text)
    , _udlOAuthToken  :: !(Maybe OAuthToken)
    , _udlMaxResults  :: !Word32
    , _udlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udlQuotaUser'
--
-- * 'udlPrettyPrint'
--
-- * 'udlUserIP'
--
-- * 'udlUserId'
--
-- * 'udlKey'
--
-- * 'udlPageToken'
--
-- * 'udlOAuthToken'
--
-- * 'udlMaxResults'
--
-- * 'udlFields'
usersDraftsList'
    :: Text
    -> UsersDraftsList'
usersDraftsList' pUdlUserId_ =
    UsersDraftsList'
    { _udlQuotaUser = Nothing
    , _udlPrettyPrint = True
    , _udlUserIP = Nothing
    , _udlUserId = pUdlUserId_
    , _udlKey = Nothing
    , _udlPageToken = Nothing
    , _udlOAuthToken = Nothing
    , _udlMaxResults = 100
    , _udlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udlQuotaUser :: Lens' UsersDraftsList' (Maybe Text)
udlQuotaUser
  = lens _udlQuotaUser (\ s a -> s{_udlQuotaUser = a})

-- | Returns response with indentations and line breaks.
udlPrettyPrint :: Lens' UsersDraftsList' Bool
udlPrettyPrint
  = lens _udlPrettyPrint
      (\ s a -> s{_udlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udlUserIP :: Lens' UsersDraftsList' (Maybe Text)
udlUserIP
  = lens _udlUserIP (\ s a -> s{_udlUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udlUserId :: Lens' UsersDraftsList' Text
udlUserId
  = lens _udlUserId (\ s a -> s{_udlUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udlKey :: Lens' UsersDraftsList' (Maybe AuthKey)
udlKey = lens _udlKey (\ s a -> s{_udlKey = a})

-- | Page token to retrieve a specific page of results in the list.
udlPageToken :: Lens' UsersDraftsList' (Maybe Text)
udlPageToken
  = lens _udlPageToken (\ s a -> s{_udlPageToken = a})

-- | OAuth 2.0 token for the current user.
udlOAuthToken :: Lens' UsersDraftsList' (Maybe OAuthToken)
udlOAuthToken
  = lens _udlOAuthToken
      (\ s a -> s{_udlOAuthToken = a})

-- | Maximum number of drafts to return.
udlMaxResults :: Lens' UsersDraftsList' Word32
udlMaxResults
  = lens _udlMaxResults
      (\ s a -> s{_udlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
udlFields :: Lens' UsersDraftsList' (Maybe Text)
udlFields
  = lens _udlFields (\ s a -> s{_udlFields = a})

instance GoogleAuth UsersDraftsList' where
        _AuthKey = udlKey . _Just
        _AuthToken = udlOAuthToken . _Just

instance GoogleRequest UsersDraftsList' where
        type Rs UsersDraftsList' = ListDraftsResponse
        request = requestWith gmailRequest
        requestWith rq UsersDraftsList'{..}
          = go _udlUserId _udlPageToken (Just _udlMaxResults)
              _udlQuotaUser
              (Just _udlPrettyPrint)
              _udlUserIP
              _udlFields
              _udlKey
              _udlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersDraftsListResource)
                      rq
