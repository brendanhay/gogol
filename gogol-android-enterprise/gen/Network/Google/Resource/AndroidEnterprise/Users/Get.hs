{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a user\'s details.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseUsersGet@.
module Network.Google.Resource.AndroidEnterprise.Users.Get
    (
    -- * REST Resource
      UsersGetResource

    -- * Creating a Request
    , usersGet'
    , UsersGet'

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugEnterpriseId
    , ugUserIP
    , ugUserId
    , ugKey
    , ugOAuthToken
    , ugFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseUsersGet@ which the
-- 'UsersGet'' request conforms to.
type UsersGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Retrieves a user\'s details.
--
-- /See:/ 'usersGet'' smart constructor.
data UsersGet' = UsersGet'
    { _ugQuotaUser    :: !(Maybe Text)
    , _ugPrettyPrint  :: !Bool
    , _ugEnterpriseId :: !Text
    , _ugUserIP       :: !(Maybe Text)
    , _ugUserId       :: !Text
    , _ugKey          :: !(Maybe Key)
    , _ugOAuthToken   :: !(Maybe OAuthToken)
    , _ugFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugEnterpriseId'
--
-- * 'ugUserIP'
--
-- * 'ugUserId'
--
-- * 'ugKey'
--
-- * 'ugOAuthToken'
--
-- * 'ugFields'
usersGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersGet'
usersGet' pUgEnterpriseId_ pUgUserId_ =
    UsersGet'
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugEnterpriseId = pUgEnterpriseId_
    , _ugUserIP = Nothing
    , _ugUserId = pUgUserId_
    , _ugKey = Nothing
    , _ugOAuthToken = Nothing
    , _ugFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugQuotaUser :: Lens' UsersGet' (Maybe Text)
ugQuotaUser
  = lens _ugQuotaUser (\ s a -> s{_ugQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugPrettyPrint :: Lens' UsersGet' Bool
ugPrettyPrint
  = lens _ugPrettyPrint
      (\ s a -> s{_ugPrettyPrint = a})

-- | The ID of the enterprise.
ugEnterpriseId :: Lens' UsersGet' Text
ugEnterpriseId
  = lens _ugEnterpriseId
      (\ s a -> s{_ugEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugUserIP :: Lens' UsersGet' (Maybe Text)
ugUserIP = lens _ugUserIP (\ s a -> s{_ugUserIP = a})

-- | The ID of the user.
ugUserId :: Lens' UsersGet' Text
ugUserId = lens _ugUserId (\ s a -> s{_ugUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' UsersGet' (Maybe Key)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | OAuth 2.0 token for the current user.
ugOAuthToken :: Lens' UsersGet' (Maybe OAuthToken)
ugOAuthToken
  = lens _ugOAuthToken (\ s a -> s{_ugOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' UsersGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

instance GoogleAuth UsersGet' where
        authKey = ugKey . _Just
        authToken = ugOAuthToken . _Just

instance GoogleRequest UsersGet' where
        type Rs UsersGet' = User
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u UsersGet'{..}
          = go _ugQuotaUser (Just _ugPrettyPrint)
              _ugEnterpriseId
              _ugUserIP
              _ugUserId
              _ugKey
              _ugOAuthToken
              _ugFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersGetResource) r
                      u
