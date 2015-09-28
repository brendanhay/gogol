{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Users.RevokeToken
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Revokes a previously generated token (activation code) for the user.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.users.revokeToken@.
module Network.Google.API.Androidenterprise.Users.RevokeToken
    (
    -- * REST Resource
      UsersRevokeTokenAPI

    -- * Creating a Request
    , usersRevokeToken'
    , UsersRevokeToken'

    -- * Request Lenses
    , urtQuotaUser
    , urtPrettyPrint
    , urtEnterpriseId
    , urtUserIp
    , urtUserId
    , urtKey
    , urtOauthToken
    , urtFields
    , urtAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.users.revokeToken which the
-- 'UsersRevokeToken'' request conforms to.
type UsersRevokeTokenAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "token" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Revokes a previously generated token (activation code) for the user.
--
-- /See:/ 'usersRevokeToken'' smart constructor.
data UsersRevokeToken' = UsersRevokeToken'
    { _urtQuotaUser    :: !(Maybe Text)
    , _urtPrettyPrint  :: !Bool
    , _urtEnterpriseId :: !Text
    , _urtUserIp       :: !(Maybe Text)
    , _urtUserId       :: !Text
    , _urtKey          :: !(Maybe Text)
    , _urtOauthToken   :: !(Maybe Text)
    , _urtFields       :: !(Maybe Text)
    , _urtAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'urtUserIp'
--
-- * 'urtUserId'
--
-- * 'urtKey'
--
-- * 'urtOauthToken'
--
-- * 'urtFields'
--
-- * 'urtAlt'
usersRevokeToken'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersRevokeToken'
usersRevokeToken' pUrtEnterpriseId_ pUrtUserId_ =
    UsersRevokeToken'
    { _urtQuotaUser = Nothing
    , _urtPrettyPrint = True
    , _urtEnterpriseId = pUrtEnterpriseId_
    , _urtUserIp = Nothing
    , _urtUserId = pUrtUserId_
    , _urtKey = Nothing
    , _urtOauthToken = Nothing
    , _urtFields = Nothing
    , _urtAlt = JSON
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
urtUserIp :: Lens' UsersRevokeToken' (Maybe Text)
urtUserIp
  = lens _urtUserIp (\ s a -> s{_urtUserIp = a})

-- | The ID of the user.
urtUserId :: Lens' UsersRevokeToken' Text
urtUserId
  = lens _urtUserId (\ s a -> s{_urtUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urtKey :: Lens' UsersRevokeToken' (Maybe Text)
urtKey = lens _urtKey (\ s a -> s{_urtKey = a})

-- | OAuth 2.0 token for the current user.
urtOauthToken :: Lens' UsersRevokeToken' (Maybe Text)
urtOauthToken
  = lens _urtOauthToken
      (\ s a -> s{_urtOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urtFields :: Lens' UsersRevokeToken' (Maybe Text)
urtFields
  = lens _urtFields (\ s a -> s{_urtFields = a})

-- | Data format for the response.
urtAlt :: Lens' UsersRevokeToken' Alt
urtAlt = lens _urtAlt (\ s a -> s{_urtAlt = a})

instance GoogleRequest UsersRevokeToken' where
        type Rs UsersRevokeToken' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u UsersRevokeToken'{..}
          = go _urtQuotaUser (Just _urtPrettyPrint)
              _urtEnterpriseId
              _urtUserIp
              _urtUserId
              _urtKey
              _urtOauthToken
              _urtFields
              (Just _urtAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersRevokeTokenAPI)
                      r
                      u
