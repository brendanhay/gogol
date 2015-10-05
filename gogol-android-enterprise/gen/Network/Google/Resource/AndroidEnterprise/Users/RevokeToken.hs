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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.RevokeToken
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revokes a previously generated token (activation code) for the user.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseUsersRevokeToken@.
module Network.Google.Resource.AndroidEnterprise.Users.RevokeToken
    (
    -- * REST Resource
      UsersRevokeTokenResource

    -- * Creating a Request
    , usersRevokeToken'
    , UsersRevokeToken'

    -- * Request Lenses
    , urtQuotaUser
    , urtPrettyPrint
    , urtEnterpriseId
    , urtUserIP
    , urtUserId
    , urtKey
    , urtOAuthToken
    , urtFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseUsersRevokeToken@ which the
-- 'UsersRevokeToken'' request conforms to.
type UsersRevokeTokenResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "token" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Revokes a previously generated token (activation code) for the user.
--
-- /See:/ 'usersRevokeToken'' smart constructor.
data UsersRevokeToken' = UsersRevokeToken'
    { _urtQuotaUser    :: !(Maybe Text)
    , _urtPrettyPrint  :: !Bool
    , _urtEnterpriseId :: !Text
    , _urtUserIP       :: !(Maybe Text)
    , _urtUserId       :: !Text
    , _urtKey          :: !(Maybe AuthKey)
    , _urtOAuthToken   :: !(Maybe OAuthToken)
    , _urtFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersRevokeToken'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urtQuotaUser'
--
-- * 'urtPrettyPrint'
--
-- * 'urtEnterpriseId'
--
-- * 'urtUserIP'
--
-- * 'urtUserId'
--
-- * 'urtKey'
--
-- * 'urtOAuthToken'
--
-- * 'urtFields'
usersRevokeToken'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersRevokeToken'
usersRevokeToken' pUrtEnterpriseId_ pUrtUserId_ =
    UsersRevokeToken'
    { _urtQuotaUser = Nothing
    , _urtPrettyPrint = True
    , _urtEnterpriseId = pUrtEnterpriseId_
    , _urtUserIP = Nothing
    , _urtUserId = pUrtUserId_
    , _urtKey = Nothing
    , _urtOAuthToken = Nothing
    , _urtFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urtQuotaUser :: Lens' UsersRevokeToken' (Maybe Text)
urtQuotaUser
  = lens _urtQuotaUser (\ s a -> s{_urtQuotaUser = a})

-- | Returns response with indentations and line breaks.
urtPrettyPrint :: Lens' UsersRevokeToken' Bool
urtPrettyPrint
  = lens _urtPrettyPrint
      (\ s a -> s{_urtPrettyPrint = a})

-- | The ID of the enterprise.
urtEnterpriseId :: Lens' UsersRevokeToken' Text
urtEnterpriseId
  = lens _urtEnterpriseId
      (\ s a -> s{_urtEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urtUserIP :: Lens' UsersRevokeToken' (Maybe Text)
urtUserIP
  = lens _urtUserIP (\ s a -> s{_urtUserIP = a})

-- | The ID of the user.
urtUserId :: Lens' UsersRevokeToken' Text
urtUserId
  = lens _urtUserId (\ s a -> s{_urtUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urtKey :: Lens' UsersRevokeToken' (Maybe AuthKey)
urtKey = lens _urtKey (\ s a -> s{_urtKey = a})

-- | OAuth 2.0 token for the current user.
urtOAuthToken :: Lens' UsersRevokeToken' (Maybe OAuthToken)
urtOAuthToken
  = lens _urtOAuthToken
      (\ s a -> s{_urtOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urtFields :: Lens' UsersRevokeToken' (Maybe Text)
urtFields
  = lens _urtFields (\ s a -> s{_urtFields = a})

instance GoogleAuth UsersRevokeToken' where
        authKey = urtKey . _Just
        authToken = urtOAuthToken . _Just

instance GoogleRequest UsersRevokeToken' where
        type Rs UsersRevokeToken' = ()
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u UsersRevokeToken'{..}
          = go _urtEnterpriseId _urtUserId _urtQuotaUser
              (Just _urtPrettyPrint)
              _urtUserIP
              _urtFields
              _urtKey
              _urtOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersRevokeTokenResource)
                      r
                      u
