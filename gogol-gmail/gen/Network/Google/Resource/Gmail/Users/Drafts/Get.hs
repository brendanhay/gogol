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
-- Module      : Network.Google.Resource.Gmail.Users.Drafts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified draft.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersDraftsGet@.
module Network.Google.Resource.Gmail.Users.Drafts.Get
    (
    -- * REST Resource
      UsersDraftsGetResource

    -- * Creating a Request
    , usersDraftsGet'
    , UsersDraftsGet'

    -- * Request Lenses
    , udgQuotaUser
    , udgPrettyPrint
    , udgUserIP
    , udgFormat
    , udgUserId
    , udgKey
    , udgId
    , udgOAuthToken
    , udgFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersDraftsGet@ which the
-- 'UsersDraftsGet'' request conforms to.
type UsersDraftsGetResource =
     Capture "userId" Text :>
       "drafts" :>
         Capture "id" Text :>
           QueryParam "format" UsersDraftsGetFormat :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Draft

-- | Gets the specified draft.
--
-- /See:/ 'usersDraftsGet'' smart constructor.
data UsersDraftsGet' = UsersDraftsGet'
    { _udgQuotaUser   :: !(Maybe Text)
    , _udgPrettyPrint :: !Bool
    , _udgUserIP      :: !(Maybe Text)
    , _udgFormat      :: !UsersDraftsGetFormat
    , _udgUserId      :: !Text
    , _udgKey         :: !(Maybe AuthKey)
    , _udgId          :: !Text
    , _udgOAuthToken  :: !(Maybe OAuthToken)
    , _udgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDraftsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udgQuotaUser'
--
-- * 'udgPrettyPrint'
--
-- * 'udgUserIP'
--
-- * 'udgFormat'
--
-- * 'udgUserId'
--
-- * 'udgKey'
--
-- * 'udgId'
--
-- * 'udgOAuthToken'
--
-- * 'udgFields'
usersDraftsGet'
    :: Text -- ^ 'id'
    -> Text
    -> UsersDraftsGet'
usersDraftsGet' pUdgUserId_ pUdgId_ =
    UsersDraftsGet'
    { _udgQuotaUser = Nothing
    , _udgPrettyPrint = True
    , _udgUserIP = Nothing
    , _udgFormat = UDGFFull
    , _udgUserId = pUdgUserId_
    , _udgKey = Nothing
    , _udgId = pUdgId_
    , _udgOAuthToken = Nothing
    , _udgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
udgQuotaUser :: Lens' UsersDraftsGet' (Maybe Text)
udgQuotaUser
  = lens _udgQuotaUser (\ s a -> s{_udgQuotaUser = a})

-- | Returns response with indentations and line breaks.
udgPrettyPrint :: Lens' UsersDraftsGet' Bool
udgPrettyPrint
  = lens _udgPrettyPrint
      (\ s a -> s{_udgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
udgUserIP :: Lens' UsersDraftsGet' (Maybe Text)
udgUserIP
  = lens _udgUserIP (\ s a -> s{_udgUserIP = a})

-- | The format to return the draft in.
udgFormat :: Lens' UsersDraftsGet' UsersDraftsGetFormat
udgFormat
  = lens _udgFormat (\ s a -> s{_udgFormat = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
udgUserId :: Lens' UsersDraftsGet' Text
udgUserId
  = lens _udgUserId (\ s a -> s{_udgUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
udgKey :: Lens' UsersDraftsGet' (Maybe AuthKey)
udgKey = lens _udgKey (\ s a -> s{_udgKey = a})

-- | The ID of the draft to retrieve.
udgId :: Lens' UsersDraftsGet' Text
udgId = lens _udgId (\ s a -> s{_udgId = a})

-- | OAuth 2.0 token for the current user.
udgOAuthToken :: Lens' UsersDraftsGet' (Maybe OAuthToken)
udgOAuthToken
  = lens _udgOAuthToken
      (\ s a -> s{_udgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
udgFields :: Lens' UsersDraftsGet' (Maybe Text)
udgFields
  = lens _udgFields (\ s a -> s{_udgFields = a})

instance GoogleAuth UsersDraftsGet' where
        _AuthKey = udgKey . _Just
        _AuthToken = udgOAuthToken . _Just

instance GoogleRequest UsersDraftsGet' where
        type Rs UsersDraftsGet' = Draft
        request = requestWith gmailRequest
        requestWith rq UsersDraftsGet'{..}
          = go _udgUserId _udgId (Just _udgFormat)
              _udgQuotaUser
              (Just _udgPrettyPrint)
              _udgUserIP
              _udgFields
              _udgKey
              _udgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy UsersDraftsGetResource)
                      rq
