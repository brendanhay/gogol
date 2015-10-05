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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up a user by email address.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseUsersList@.
module Network.Google.Resource.AndroidEnterprise.Users.List
    (
    -- * REST Resource
      UsersListResource

    -- * Creating a Request
    , usersList'
    , UsersList'

    -- * Request Lenses
    , ulEmail
    , ulQuotaUser
    , ulPrettyPrint
    , ulEnterpriseId
    , ulUserIP
    , ulKey
    , ulOAuthToken
    , ulFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseUsersList@ which the
-- 'UsersList'' request conforms to.
type UsersListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           QueryParam "email" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] UsersListResponse

-- | Looks up a user by email address.
--
-- /See:/ 'usersList'' smart constructor.
data UsersList' = UsersList'
    { _ulEmail        :: !Text
    , _ulQuotaUser    :: !(Maybe Text)
    , _ulPrettyPrint  :: !Bool
    , _ulEnterpriseId :: !Text
    , _ulUserIP       :: !(Maybe Text)
    , _ulKey          :: !(Maybe Key)
    , _ulOAuthToken   :: !(Maybe OAuthToken)
    , _ulFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulEmail'
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulEnterpriseId'
--
-- * 'ulUserIP'
--
-- * 'ulKey'
--
-- * 'ulOAuthToken'
--
-- * 'ulFields'
usersList'
    :: Text -- ^ 'email'
    -> Text -- ^ 'enterpriseId'
    -> UsersList'
usersList' pUlEmail_ pUlEnterpriseId_ =
    UsersList'
    { _ulEmail = pUlEmail_
    , _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulEnterpriseId = pUlEnterpriseId_
    , _ulUserIP = Nothing
    , _ulKey = Nothing
    , _ulOAuthToken = Nothing
    , _ulFields = Nothing
    }

-- | The exact primary email address of the user to look up.
ulEmail :: Lens' UsersList' Text
ulEmail = lens _ulEmail (\ s a -> s{_ulEmail = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulQuotaUser :: Lens' UsersList' (Maybe Text)
ulQuotaUser
  = lens _ulQuotaUser (\ s a -> s{_ulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulPrettyPrint :: Lens' UsersList' Bool
ulPrettyPrint
  = lens _ulPrettyPrint
      (\ s a -> s{_ulPrettyPrint = a})

-- | The ID of the enterprise.
ulEnterpriseId :: Lens' UsersList' Text
ulEnterpriseId
  = lens _ulEnterpriseId
      (\ s a -> s{_ulEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulUserIP :: Lens' UsersList' (Maybe Text)
ulUserIP = lens _ulUserIP (\ s a -> s{_ulUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' UsersList' (Maybe Key)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | OAuth 2.0 token for the current user.
ulOAuthToken :: Lens' UsersList' (Maybe OAuthToken)
ulOAuthToken
  = lens _ulOAuthToken (\ s a -> s{_ulOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' UsersList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

instance GoogleAuth UsersList' where
        authKey = ulKey . _Just
        authToken = ulOAuthToken . _Just

instance GoogleRequest UsersList' where
        type Rs UsersList' = UsersListResponse
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u UsersList'{..}
          = go _ulEnterpriseId (Just _ulEmail) _ulQuotaUser
              (Just _ulPrettyPrint)
              _ulUserIP
              _ulFields
              _ulKey
              _ulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy UsersListResource)
                      r
                      u
