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
-- Module      : Network.Google.Resource.Androidenterprise.Users.SetAvailableProductSet
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the set of products a user is entitled to access.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseUsersSetAvailableProductSet@.
module Network.Google.Resource.Androidenterprise.Users.SetAvailableProductSet
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
    , usapsUserIp
    , usapsUserId
    , usapsKey
    , usapsOauthToken
    , usapsFields
    , usapsAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseUsersSetAvailableProductSet@ which the
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] ProductSet

-- | Modifies the set of products a user is entitled to access.
--
-- /See:/ 'usersSetAvailableProductSet'' smart constructor.
data UsersSetAvailableProductSet' = UsersSetAvailableProductSet'
    { _usapsQuotaUser    :: !(Maybe Text)
    , _usapsPrettyPrint  :: !Bool
    , _usapsEnterpriseId :: !Text
    , _usapsUserIp       :: !(Maybe Text)
    , _usapsUserId       :: !Text
    , _usapsKey          :: !(Maybe Text)
    , _usapsOauthToken   :: !(Maybe Text)
    , _usapsFields       :: !(Maybe Text)
    , _usapsAlt          :: !Alt
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
-- * 'usapsUserIp'
--
-- * 'usapsUserId'
--
-- * 'usapsKey'
--
-- * 'usapsOauthToken'
--
-- * 'usapsFields'
--
-- * 'usapsAlt'
usersSetAvailableProductSet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersSetAvailableProductSet'
usersSetAvailableProductSet' pUsapsEnterpriseId_ pUsapsUserId_ =
    UsersSetAvailableProductSet'
    { _usapsQuotaUser = Nothing
    , _usapsPrettyPrint = True
    , _usapsEnterpriseId = pUsapsEnterpriseId_
    , _usapsUserIp = Nothing
    , _usapsUserId = pUsapsUserId_
    , _usapsKey = Nothing
    , _usapsOauthToken = Nothing
    , _usapsFields = Nothing
    , _usapsAlt = JSON
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
usapsUserIp :: Lens' UsersSetAvailableProductSet' (Maybe Text)
usapsUserIp
  = lens _usapsUserIp (\ s a -> s{_usapsUserIp = a})

-- | The ID of the user.
usapsUserId :: Lens' UsersSetAvailableProductSet' Text
usapsUserId
  = lens _usapsUserId (\ s a -> s{_usapsUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
usapsKey :: Lens' UsersSetAvailableProductSet' (Maybe Text)
usapsKey = lens _usapsKey (\ s a -> s{_usapsKey = a})

-- | OAuth 2.0 token for the current user.
usapsOauthToken :: Lens' UsersSetAvailableProductSet' (Maybe Text)
usapsOauthToken
  = lens _usapsOauthToken
      (\ s a -> s{_usapsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
usapsFields :: Lens' UsersSetAvailableProductSet' (Maybe Text)
usapsFields
  = lens _usapsFields (\ s a -> s{_usapsFields = a})

-- | Data format for the response.
usapsAlt :: Lens' UsersSetAvailableProductSet' Alt
usapsAlt = lens _usapsAlt (\ s a -> s{_usapsAlt = a})

instance GoogleRequest UsersSetAvailableProductSet'
         where
        type Rs UsersSetAvailableProductSet' = ProductSet
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u UsersSetAvailableProductSet'{..}
          = go _usapsQuotaUser (Just _usapsPrettyPrint)
              _usapsEnterpriseId
              _usapsUserIp
              _usapsUserId
              _usapsKey
              _usapsOauthToken
              _usapsFields
              (Just _usapsAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersSetAvailableProductSetResource)
                      r
                      u
