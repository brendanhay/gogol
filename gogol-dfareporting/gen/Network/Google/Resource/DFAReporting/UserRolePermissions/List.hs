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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of user role permissions, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolePermissionsList@.
module Network.Google.Resource.DFAReporting.UserRolePermissions.List
    (
    -- * REST Resource
      UserRolePermissionsListResource

    -- * Creating a Request
    , userRolePermissionsList'
    , UserRolePermissionsList'

    -- * Request Lenses
    , urplQuotaUser
    , urplPrettyPrint
    , urplUserIP
    , urplIds
    , urplProfileId
    , urplKey
    , urplOAuthToken
    , urplFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolePermissionsList@ which the
-- 'UserRolePermissionsList'' request conforms to.
type UserRolePermissionsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRolePermissions" :>
           QueryParams "ids" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] UserRolePermissionsListResponse

-- | Gets a list of user role permissions, possibly filtered.
--
-- /See:/ 'userRolePermissionsList'' smart constructor.
data UserRolePermissionsList' = UserRolePermissionsList'
    { _urplQuotaUser   :: !(Maybe Text)
    , _urplPrettyPrint :: !Bool
    , _urplUserIP      :: !(Maybe Text)
    , _urplIds         :: !(Maybe Int64)
    , _urplProfileId   :: !Int64
    , _urplKey         :: !(Maybe Key)
    , _urplOAuthToken  :: !(Maybe OAuthToken)
    , _urplFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urplQuotaUser'
--
-- * 'urplPrettyPrint'
--
-- * 'urplUserIP'
--
-- * 'urplIds'
--
-- * 'urplProfileId'
--
-- * 'urplKey'
--
-- * 'urplOAuthToken'
--
-- * 'urplFields'
userRolePermissionsList'
    :: Int64 -- ^ 'profileId'
    -> UserRolePermissionsList'
userRolePermissionsList' pUrplProfileId_ =
    UserRolePermissionsList'
    { _urplQuotaUser = Nothing
    , _urplPrettyPrint = True
    , _urplUserIP = Nothing
    , _urplIds = Nothing
    , _urplProfileId = pUrplProfileId_
    , _urplKey = Nothing
    , _urplOAuthToken = Nothing
    , _urplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urplQuotaUser :: Lens' UserRolePermissionsList' (Maybe Text)
urplQuotaUser
  = lens _urplQuotaUser
      (\ s a -> s{_urplQuotaUser = a})

-- | Returns response with indentations and line breaks.
urplPrettyPrint :: Lens' UserRolePermissionsList' Bool
urplPrettyPrint
  = lens _urplPrettyPrint
      (\ s a -> s{_urplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urplUserIP :: Lens' UserRolePermissionsList' (Maybe Text)
urplUserIP
  = lens _urplUserIP (\ s a -> s{_urplUserIP = a})

-- | Select only user role permissions with these IDs.
urplIds :: Lens' UserRolePermissionsList' (Maybe Int64)
urplIds = lens _urplIds (\ s a -> s{_urplIds = a})

-- | User profile ID associated with this request.
urplProfileId :: Lens' UserRolePermissionsList' Int64
urplProfileId
  = lens _urplProfileId
      (\ s a -> s{_urplProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urplKey :: Lens' UserRolePermissionsList' (Maybe Key)
urplKey = lens _urplKey (\ s a -> s{_urplKey = a})

-- | OAuth 2.0 token for the current user.
urplOAuthToken :: Lens' UserRolePermissionsList' (Maybe OAuthToken)
urplOAuthToken
  = lens _urplOAuthToken
      (\ s a -> s{_urplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urplFields :: Lens' UserRolePermissionsList' (Maybe Text)
urplFields
  = lens _urplFields (\ s a -> s{_urplFields = a})

instance GoogleAuth UserRolePermissionsList' where
        authKey = urplKey . _Just
        authToken = urplOAuthToken . _Just

instance GoogleRequest UserRolePermissionsList' where
        type Rs UserRolePermissionsList' =
             UserRolePermissionsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolePermissionsList'{..}
          = go _urplIds _urplProfileId _urplQuotaUser
              (Just _urplPrettyPrint)
              _urplUserIP
              _urplFields
              _urplKey
              _urplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolePermissionsListResource)
                      r
                      u
