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
-- Module      : Network.Google.Resource.AndroidEnterprise.Users.SetAvailableProductSet
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the set of products a user is entitled to access.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseUsersSetAvailableProductSet@.
module Network.Google.Resource.AndroidEnterprise.Users.SetAvailableProductSet
    (
    -- * REST Resource
      UsersSetAvailableProductSetResource

    -- * Creating a Request
    , usersSetAvailableProductSet'
    , UsersSetAvailableProductSet'

    -- * Request Lenses
    , usapsQuotaUser
    , usapsPrettyPrint
    , usapsEnterpriseId
    , usapsUserIP
    , usapsProductSet
    , usapsUserId
    , usapsKey
    , usapsOAuthToken
    , usapsFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseUsersSetAvailableProductSet@ which the
-- 'UsersSetAvailableProductSet'' request conforms to.
type UsersSetAvailableProductSetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "availableProductSet" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ProductSet :>
                               Put '[JSON] ProductSet

-- | Modifies the set of products a user is entitled to access.
--
-- /See:/ 'usersSetAvailableProductSet'' smart constructor.
data UsersSetAvailableProductSet' = UsersSetAvailableProductSet'
    { _usapsQuotaUser    :: !(Maybe Text)
    , _usapsPrettyPrint  :: !Bool
    , _usapsEnterpriseId :: !Text
    , _usapsUserIP       :: !(Maybe Text)
    , _usapsProductSet   :: !ProductSet
    , _usapsUserId       :: !Text
    , _usapsKey          :: !(Maybe Key)
    , _usapsOAuthToken   :: !(Maybe OAuthToken)
    , _usapsFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSetAvailableProductSet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usapsQuotaUser'
--
-- * 'usapsPrettyPrint'
--
-- * 'usapsEnterpriseId'
--
-- * 'usapsUserIP'
--
-- * 'usapsProductSet'
--
-- * 'usapsUserId'
--
-- * 'usapsKey'
--
-- * 'usapsOAuthToken'
--
-- * 'usapsFields'
usersSetAvailableProductSet'
    :: Text -- ^ 'enterpriseId'
    -> ProductSet -- ^ 'ProductSet'
    -> Text -- ^ 'userId'
    -> UsersSetAvailableProductSet'
usersSetAvailableProductSet' pUsapsEnterpriseId_ pUsapsProductSet_ pUsapsUserId_ =
    UsersSetAvailableProductSet'
    { _usapsQuotaUser = Nothing
    , _usapsPrettyPrint = True
    , _usapsEnterpriseId = pUsapsEnterpriseId_
    , _usapsUserIP = Nothing
    , _usapsProductSet = pUsapsProductSet_
    , _usapsUserId = pUsapsUserId_
    , _usapsKey = Nothing
    , _usapsOAuthToken = Nothing
    , _usapsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
usapsQuotaUser :: Lens' UsersSetAvailableProductSet' (Maybe Text)
usapsQuotaUser
  = lens _usapsQuotaUser
      (\ s a -> s{_usapsQuotaUser = a})

-- | Returns response with indentations and line breaks.
usapsPrettyPrint :: Lens' UsersSetAvailableProductSet' Bool
usapsPrettyPrint
  = lens _usapsPrettyPrint
      (\ s a -> s{_usapsPrettyPrint = a})

-- | The ID of the enterprise.
usapsEnterpriseId :: Lens' UsersSetAvailableProductSet' Text
usapsEnterpriseId
  = lens _usapsEnterpriseId
      (\ s a -> s{_usapsEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
usapsUserIP :: Lens' UsersSetAvailableProductSet' (Maybe Text)
usapsUserIP
  = lens _usapsUserIP (\ s a -> s{_usapsUserIP = a})

-- | Multipart request metadata.
usapsProductSet :: Lens' UsersSetAvailableProductSet' ProductSet
usapsProductSet
  = lens _usapsProductSet
      (\ s a -> s{_usapsProductSet = a})

-- | The ID of the user.
usapsUserId :: Lens' UsersSetAvailableProductSet' Text
usapsUserId
  = lens _usapsUserId (\ s a -> s{_usapsUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
usapsKey :: Lens' UsersSetAvailableProductSet' (Maybe Key)
usapsKey = lens _usapsKey (\ s a -> s{_usapsKey = a})

-- | OAuth 2.0 token for the current user.
usapsOAuthToken :: Lens' UsersSetAvailableProductSet' (Maybe OAuthToken)
usapsOAuthToken
  = lens _usapsOAuthToken
      (\ s a -> s{_usapsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
usapsFields :: Lens' UsersSetAvailableProductSet' (Maybe Text)
usapsFields
  = lens _usapsFields (\ s a -> s{_usapsFields = a})

instance GoogleAuth UsersSetAvailableProductSet'
         where
        authKey = usapsKey . _Just
        authToken = usapsOAuthToken . _Just

instance GoogleRequest UsersSetAvailableProductSet'
         where
        type Rs UsersSetAvailableProductSet' = ProductSet
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u UsersSetAvailableProductSet'{..}
          = go _usapsEnterpriseId _usapsUserId _usapsQuotaUser
              (Just _usapsPrettyPrint)
              _usapsUserIP
              _usapsFields
              _usapsKey
              _usapsOAuthToken
              (Just AltJSON)
              _usapsProductSet
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersSetAvailableProductSetResource)
                      r
                      u
