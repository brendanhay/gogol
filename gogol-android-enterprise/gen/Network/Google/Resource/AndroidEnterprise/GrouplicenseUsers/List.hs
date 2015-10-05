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
-- Module      : Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the IDs of the users who have been granted entitlements under
-- the license.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseGrouplicenseUsersList@.
module Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List
    (
    -- * REST Resource
      GrouplicenseUsersListResource

    -- * Creating a Request
    , grouplicenseUsersList'
    , GrouplicenseUsersList'

    -- * Request Lenses
    , gulQuotaUser
    , gulPrettyPrint
    , gulEnterpriseId
    , gulUserIP
    , gulKey
    , gulOAuthToken
    , gulGroupLicenseId
    , gulFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseGrouplicenseUsersList@ which the
-- 'GrouplicenseUsersList'' request conforms to.
type GrouplicenseUsersListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "groupLicenses" :>
           Capture "groupLicenseId" Text :>
             "users" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] GroupLicenseUsersListResponse

-- | Retrieves the IDs of the users who have been granted entitlements under
-- the license.
--
-- /See:/ 'grouplicenseUsersList'' smart constructor.
data GrouplicenseUsersList' = GrouplicenseUsersList'
    { _gulQuotaUser      :: !(Maybe Text)
    , _gulPrettyPrint    :: !Bool
    , _gulEnterpriseId   :: !Text
    , _gulUserIP         :: !(Maybe Text)
    , _gulKey            :: !(Maybe Key)
    , _gulOAuthToken     :: !(Maybe OAuthToken)
    , _gulGroupLicenseId :: !Text
    , _gulFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GrouplicenseUsersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gulQuotaUser'
--
-- * 'gulPrettyPrint'
--
-- * 'gulEnterpriseId'
--
-- * 'gulUserIP'
--
-- * 'gulKey'
--
-- * 'gulOAuthToken'
--
-- * 'gulGroupLicenseId'
--
-- * 'gulFields'
grouplicenseUsersList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'groupLicenseId'
    -> GrouplicenseUsersList'
grouplicenseUsersList' pGulEnterpriseId_ pGulGroupLicenseId_ =
    GrouplicenseUsersList'
    { _gulQuotaUser = Nothing
    , _gulPrettyPrint = True
    , _gulEnterpriseId = pGulEnterpriseId_
    , _gulUserIP = Nothing
    , _gulKey = Nothing
    , _gulOAuthToken = Nothing
    , _gulGroupLicenseId = pGulGroupLicenseId_
    , _gulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gulQuotaUser :: Lens' GrouplicenseUsersList' (Maybe Text)
gulQuotaUser
  = lens _gulQuotaUser (\ s a -> s{_gulQuotaUser = a})

-- | Returns response with indentations and line breaks.
gulPrettyPrint :: Lens' GrouplicenseUsersList' Bool
gulPrettyPrint
  = lens _gulPrettyPrint
      (\ s a -> s{_gulPrettyPrint = a})

-- | The ID of the enterprise.
gulEnterpriseId :: Lens' GrouplicenseUsersList' Text
gulEnterpriseId
  = lens _gulEnterpriseId
      (\ s a -> s{_gulEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gulUserIP :: Lens' GrouplicenseUsersList' (Maybe Text)
gulUserIP
  = lens _gulUserIP (\ s a -> s{_gulUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gulKey :: Lens' GrouplicenseUsersList' (Maybe Key)
gulKey = lens _gulKey (\ s a -> s{_gulKey = a})

-- | OAuth 2.0 token for the current user.
gulOAuthToken :: Lens' GrouplicenseUsersList' (Maybe OAuthToken)
gulOAuthToken
  = lens _gulOAuthToken
      (\ s a -> s{_gulOAuthToken = a})

-- | The ID of the product the group license is for, e.g.
-- \"app:com.google.android.gm\".
gulGroupLicenseId :: Lens' GrouplicenseUsersList' Text
gulGroupLicenseId
  = lens _gulGroupLicenseId
      (\ s a -> s{_gulGroupLicenseId = a})

-- | Selector specifying which fields to include in a partial response.
gulFields :: Lens' GrouplicenseUsersList' (Maybe Text)
gulFields
  = lens _gulFields (\ s a -> s{_gulFields = a})

instance GoogleAuth GrouplicenseUsersList' where
        authKey = gulKey . _Just
        authToken = gulOAuthToken . _Just

instance GoogleRequest GrouplicenseUsersList' where
        type Rs GrouplicenseUsersList' =
             GroupLicenseUsersListResponse
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u GrouplicenseUsersList'{..}
          = go _gulEnterpriseId _gulGroupLicenseId
              _gulQuotaUser
              (Just _gulPrettyPrint)
              _gulUserIP
              _gulFields
              _gulKey
              _gulOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GrouplicenseUsersListResource)
                      r
                      u
