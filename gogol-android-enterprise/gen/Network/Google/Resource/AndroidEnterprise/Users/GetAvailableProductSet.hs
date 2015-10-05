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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the set of products a user is entitled to access.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseUsersGetAvailableProductSet@.
module Network.Google.Resource.AndroidEnterprise.Users.GetAvailableProductSet
    (
    -- * REST Resource
      UsersGetAvailableProductSetResource

    -- * Creating a Request
    , usersGetAvailableProductSet'
    , UsersGetAvailableProductSet'

    -- * Request Lenses
    , ugapsQuotaUser
    , ugapsPrettyPrint
    , ugapsEnterpriseId
    , ugapsUserIP
    , ugapsUserId
    , ugapsKey
    , ugapsOAuthToken
    , ugapsFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseUsersGetAvailableProductSet@ which the
-- 'UsersGetAvailableProductSet'' request conforms to.
type UsersGetAvailableProductSetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "availableProductSet" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] ProductSet

-- | Retrieves the set of products a user is entitled to access.
--
-- /See:/ 'usersGetAvailableProductSet'' smart constructor.
data UsersGetAvailableProductSet' = UsersGetAvailableProductSet'
    { _ugapsQuotaUser    :: !(Maybe Text)
    , _ugapsPrettyPrint  :: !Bool
    , _ugapsEnterpriseId :: !Text
    , _ugapsUserIP       :: !(Maybe Text)
    , _ugapsUserId       :: !Text
    , _ugapsKey          :: !(Maybe AuthKey)
    , _ugapsOAuthToken   :: !(Maybe OAuthToken)
    , _ugapsFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersGetAvailableProductSet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugapsQuotaUser'
--
-- * 'ugapsPrettyPrint'
--
-- * 'ugapsEnterpriseId'
--
-- * 'ugapsUserIP'
--
-- * 'ugapsUserId'
--
-- * 'ugapsKey'
--
-- * 'ugapsOAuthToken'
--
-- * 'ugapsFields'
usersGetAvailableProductSet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersGetAvailableProductSet'
usersGetAvailableProductSet' pUgapsEnterpriseId_ pUgapsUserId_ =
    UsersGetAvailableProductSet'
    { _ugapsQuotaUser = Nothing
    , _ugapsPrettyPrint = True
    , _ugapsEnterpriseId = pUgapsEnterpriseId_
    , _ugapsUserIP = Nothing
    , _ugapsUserId = pUgapsUserId_
    , _ugapsKey = Nothing
    , _ugapsOAuthToken = Nothing
    , _ugapsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugapsQuotaUser :: Lens' UsersGetAvailableProductSet' (Maybe Text)
ugapsQuotaUser
  = lens _ugapsQuotaUser
      (\ s a -> s{_ugapsQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugapsPrettyPrint :: Lens' UsersGetAvailableProductSet' Bool
ugapsPrettyPrint
  = lens _ugapsPrettyPrint
      (\ s a -> s{_ugapsPrettyPrint = a})

-- | The ID of the enterprise.
ugapsEnterpriseId :: Lens' UsersGetAvailableProductSet' Text
ugapsEnterpriseId
  = lens _ugapsEnterpriseId
      (\ s a -> s{_ugapsEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugapsUserIP :: Lens' UsersGetAvailableProductSet' (Maybe Text)
ugapsUserIP
  = lens _ugapsUserIP (\ s a -> s{_ugapsUserIP = a})

-- | The ID of the user.
ugapsUserId :: Lens' UsersGetAvailableProductSet' Text
ugapsUserId
  = lens _ugapsUserId (\ s a -> s{_ugapsUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugapsKey :: Lens' UsersGetAvailableProductSet' (Maybe AuthKey)
ugapsKey = lens _ugapsKey (\ s a -> s{_ugapsKey = a})

-- | OAuth 2.0 token for the current user.
ugapsOAuthToken :: Lens' UsersGetAvailableProductSet' (Maybe OAuthToken)
ugapsOAuthToken
  = lens _ugapsOAuthToken
      (\ s a -> s{_ugapsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugapsFields :: Lens' UsersGetAvailableProductSet' (Maybe Text)
ugapsFields
  = lens _ugapsFields (\ s a -> s{_ugapsFields = a})

instance GoogleAuth UsersGetAvailableProductSet'
         where
        authKey = ugapsKey . _Just
        authToken = ugapsOAuthToken . _Just

instance GoogleRequest UsersGetAvailableProductSet'
         where
        type Rs UsersGetAvailableProductSet' = ProductSet
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u UsersGetAvailableProductSet'{..}
          = go _ugapsEnterpriseId _ugapsUserId _ugapsQuotaUser
              (Just _ugapsPrettyPrint)
              _ugapsUserIP
              _ugapsFields
              _ugapsKey
              _ugapsOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersGetAvailableProductSetResource)
                      r
                      u
