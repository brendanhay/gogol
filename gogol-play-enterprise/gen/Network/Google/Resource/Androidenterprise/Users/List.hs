{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Users.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Looks up a user by email address.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseUsersList@.
module Androidenterprise.Users.List
    (
    -- * REST Resource
      UsersListAPI

    -- * Creating a Request
    , usersList
    , UsersList

    -- * Request Lenses
    , ulEmail
    , ulQuotaUser
    , ulPrettyPrint
    , ulEnterpriseId
    , ulUserIp
    , ulKey
    , ulOauthToken
    , ulFields
    , ulAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseUsersList@ which the
-- 'UsersList' request conforms to.
type UsersListAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "users" :>
           QueryParam "email" Text :>
             Get '[JSON] UsersListResponse

-- | Looks up a user by email address.
--
-- /See:/ 'usersList' smart constructor.
data UsersList = UsersList
    { _ulEmail        :: !Text
    , _ulQuotaUser    :: !(Maybe Text)
    , _ulPrettyPrint  :: !Bool
    , _ulEnterpriseId :: !Text
    , _ulUserIp       :: !(Maybe Text)
    , _ulKey          :: !(Maybe Text)
    , _ulOauthToken   :: !(Maybe Text)
    , _ulFields       :: !(Maybe Text)
    , _ulAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ulUserIp'
--
-- * 'ulKey'
--
-- * 'ulOauthToken'
--
-- * 'ulFields'
--
-- * 'ulAlt'
usersList
    :: Text -- ^ 'email'
    -> Text -- ^ 'enterpriseId'
    -> UsersList
usersList pUlEmail_ pUlEnterpriseId_ =
    UsersList
    { _ulEmail = pUlEmail_
    , _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulEnterpriseId = pUlEnterpriseId_
    , _ulUserIp = Nothing
    , _ulKey = Nothing
    , _ulOauthToken = Nothing
    , _ulFields = Nothing
    , _ulAlt = "json"
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
ulUserIp :: Lens' UsersList' (Maybe Text)
ulUserIp = lens _ulUserIp (\ s a -> s{_ulUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' UsersList' (Maybe Text)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | OAuth 2.0 token for the current user.
ulOauthToken :: Lens' UsersList' (Maybe Text)
ulOauthToken
  = lens _ulOauthToken (\ s a -> s{_ulOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' UsersList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

-- | Data format for the response.
ulAlt :: Lens' UsersList' Text
ulAlt = lens _ulAlt (\ s a -> s{_ulAlt = a})

instance GoogleRequest UsersList' where
        type Rs UsersList' = UsersListResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u UsersList{..}
          = go (Just _ulEmail) _ulQuotaUser _ulPrettyPrint
              _ulEnterpriseId
              _ulUserIp
              _ulKey
              _ulOauthToken
              _ulFields
              _ulAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UsersListAPI) r u
