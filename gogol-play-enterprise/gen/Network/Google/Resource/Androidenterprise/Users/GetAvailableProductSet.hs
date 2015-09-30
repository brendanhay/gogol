{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Users.GetAvailableProductSet
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the set of products a user is entitled to access.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseUsersGetAvailableProductSet@.
module Androidenterprise.Users.GetAvailableProductSet
    (
    -- * REST Resource
      UsersGetAvailableProductSetAPI

    -- * Creating a Request
    , usersGetAvailableProductSet
    , UsersGetAvailableProductSet

    -- * Request Lenses
    , ugapsQuotaUser
    , ugapsPrettyPrint
    , ugapsEnterpriseId
    , ugapsUserIp
    , ugapsUserId
    , ugapsKey
    , ugapsOauthToken
    , ugapsFields
    , ugapsAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseUsersGetAvailableProductSet@ which the
-- 'UsersGetAvailableProductSet' request conforms to.
type UsersGetAvailableProductSetAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           Capture "userId" Text :>
             "availableProductSet" :> Get '[JSON] ProductSet

-- | Retrieves the set of products a user is entitled to access.
--
-- /See:/ 'usersGetAvailableProductSet' smart constructor.
data UsersGetAvailableProductSet = UsersGetAvailableProductSet
    { _ugapsQuotaUser    :: !(Maybe Text)
    , _ugapsPrettyPrint  :: !Bool
    , _ugapsEnterpriseId :: !Text
    , _ugapsUserIp       :: !(Maybe Text)
    , _ugapsUserId       :: !Text
    , _ugapsKey          :: !(Maybe Text)
    , _ugapsOauthToken   :: !(Maybe Text)
    , _ugapsFields       :: !(Maybe Text)
    , _ugapsAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ugapsUserIp'
--
-- * 'ugapsUserId'
--
-- * 'ugapsKey'
--
-- * 'ugapsOauthToken'
--
-- * 'ugapsFields'
--
-- * 'ugapsAlt'
usersGetAvailableProductSet
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'userId'
    -> UsersGetAvailableProductSet
usersGetAvailableProductSet pUgapsEnterpriseId_ pUgapsUserId_ =
    UsersGetAvailableProductSet
    { _ugapsQuotaUser = Nothing
    , _ugapsPrettyPrint = True
    , _ugapsEnterpriseId = pUgapsEnterpriseId_
    , _ugapsUserIp = Nothing
    , _ugapsUserId = pUgapsUserId_
    , _ugapsKey = Nothing
    , _ugapsOauthToken = Nothing
    , _ugapsFields = Nothing
    , _ugapsAlt = "json"
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
ugapsUserIp :: Lens' UsersGetAvailableProductSet' (Maybe Text)
ugapsUserIp
  = lens _ugapsUserIp (\ s a -> s{_ugapsUserIp = a})

-- | The ID of the user.
ugapsUserId :: Lens' UsersGetAvailableProductSet' Text
ugapsUserId
  = lens _ugapsUserId (\ s a -> s{_ugapsUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugapsKey :: Lens' UsersGetAvailableProductSet' (Maybe Text)
ugapsKey = lens _ugapsKey (\ s a -> s{_ugapsKey = a})

-- | OAuth 2.0 token for the current user.
ugapsOauthToken :: Lens' UsersGetAvailableProductSet' (Maybe Text)
ugapsOauthToken
  = lens _ugapsOauthToken
      (\ s a -> s{_ugapsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugapsFields :: Lens' UsersGetAvailableProductSet' (Maybe Text)
ugapsFields
  = lens _ugapsFields (\ s a -> s{_ugapsFields = a})

-- | Data format for the response.
ugapsAlt :: Lens' UsersGetAvailableProductSet' Text
ugapsAlt = lens _ugapsAlt (\ s a -> s{_ugapsAlt = a})

instance GoogleRequest UsersGetAvailableProductSet'
         where
        type Rs UsersGetAvailableProductSet' = ProductSet
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u UsersGetAvailableProductSet{..}
          = go _ugapsQuotaUser _ugapsPrettyPrint
              _ugapsEnterpriseId
              _ugapsUserIp
              _ugapsUserId
              _ugapsKey
              _ugapsOauthToken
              _ugapsFields
              _ugapsAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersGetAvailableProductSetAPI)
                      r
                      u
