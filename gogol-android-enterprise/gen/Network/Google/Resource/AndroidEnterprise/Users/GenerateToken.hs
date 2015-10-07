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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.GenerateToken
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generates a token (activation code) to allow this user to configure
-- their work account in the Android Setup Wizard. Revokes any previously
-- generated token.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseUsersGenerateToken@.
module Network.Google.Resource.AndroidEnterprise.Users.GenerateToken
    (
    -- * REST Resource
      UsersGenerateTokenResource

    -- * Creating a Request
    , usersGenerateToken'
    , UsersGenerateToken'

    -- * Request Lenses
    , ugtQuotaUser
    , ugtPrettyPrint
    , ugtEnterpriseId
    , ugtUserIP
    , ugtUserId
    , ugtKey
    , ugtOAuthToken
    , ugtFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseUsersGenerateToken@ method which the
-- 'UsersGenerateToken'' request conforms to.
type UsersGenerateTokenResource =
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
                           QueryParam "alt" AltJSON :> Post '[JSON] UserToken

-- | Generates a token (activation code) to allow this user to configure
-- their work account in the Android Setup Wizard. Revokes any previously
-- generated token.
--
-- /See:/ 'usersGenerateToken'' smart constructor.
data UsersGenerateToken' = UsersGenerateToken'
    { _ugtQuotaUser    :: !(Maybe Text)
    , _ugtPrettyPrint  :: !Bool
    , _ugtEnterpriseId :: !Text
    , _ugtUserIP       :: !(Maybe Text)
    , _ugtUserId       :: !Text
    , _ugtKey          :: !(Maybe AuthKey)
    , _ugtOAuthToken   :: !(Maybe OAuthToken)
    , _ugtFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGenerateToken'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugtQuotaUser'
--
-- * 'ugtPrettyPrint'
--
-- * 'ugtEnterpriseId'
--
-- * 'ugtUserIP'
--
-- * 'ugtUserId'
--
-- * 'ugtKey'
--
-- * 'ugtOAuthToken'
--
-- * 'ugtFields'
usersGenerateToken'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersGenerateToken'
usersGenerateToken' pUgtEnterpriseId_ pUgtUserId_ =
    UsersGenerateToken'
    { _ugtQuotaUser = Nothing
    , _ugtPrettyPrint = True
    , _ugtEnterpriseId = pUgtEnterpriseId_
    , _ugtUserIP = Nothing
    , _ugtUserId = pUgtUserId_
    , _ugtKey = Nothing
    , _ugtOAuthToken = Nothing
    , _ugtFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugtQuotaUser :: Lens' UsersGenerateToken' (Maybe Text)
ugtQuotaUser
  = lens _ugtQuotaUser (\ s a -> s{_ugtQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugtPrettyPrint :: Lens' UsersGenerateToken' Bool
ugtPrettyPrint
  = lens _ugtPrettyPrint
      (\ s a -> s{_ugtPrettyPrint = a})

-- | The ID of the enterprise.
ugtEnterpriseId :: Lens' UsersGenerateToken' Text
ugtEnterpriseId
  = lens _ugtEnterpriseId
      (\ s a -> s{_ugtEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugtUserIP :: Lens' UsersGenerateToken' (Maybe Text)
ugtUserIP
  = lens _ugtUserIP (\ s a -> s{_ugtUserIP = a})

-- | The ID of the user.
ugtUserId :: Lens' UsersGenerateToken' Text
ugtUserId
  = lens _ugtUserId (\ s a -> s{_ugtUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugtKey :: Lens' UsersGenerateToken' (Maybe AuthKey)
ugtKey = lens _ugtKey (\ s a -> s{_ugtKey = a})

-- | OAuth 2.0 token for the current user.
ugtOAuthToken :: Lens' UsersGenerateToken' (Maybe OAuthToken)
ugtOAuthToken
  = lens _ugtOAuthToken
      (\ s a -> s{_ugtOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugtFields :: Lens' UsersGenerateToken' (Maybe Text)
ugtFields
  = lens _ugtFields (\ s a -> s{_ugtFields = a})

instance GoogleAuth UsersGenerateToken' where
        _AuthKey = ugtKey . _Just
        _AuthToken = ugtOAuthToken . _Just

instance GoogleRequest UsersGenerateToken' where
        type Rs UsersGenerateToken' = UserToken
        request = requestWith androidEnterpriseRequest
        requestWith rq UsersGenerateToken'{..}
          = go _ugtEnterpriseId _ugtUserId _ugtQuotaUser
              (Just _ugtPrettyPrint)
              _ugtUserIP
              _ugtFields
              _ugtKey
              _ugtOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy UsersGenerateTokenResource)
                      rq
