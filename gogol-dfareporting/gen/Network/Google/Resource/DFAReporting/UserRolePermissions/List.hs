{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.UserRolePermissions.List
    (
    -- * REST Resource
      UserRolePermissionsListAPI

    -- * Creating a Request
    , userRolePermissionsList
    , UserRolePermissionsList

    -- * Request Lenses
    , urplQuotaUser
    , urplPrettyPrint
    , urplUserIp
    , urplIds
    , urplProfileId
    , urplKey
    , urplOauthToken
    , urplFields
    , urplAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolePermissionsList@ which the
-- 'UserRolePermissionsList' request conforms to.
type UserRolePermissionsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRolePermissions" :>
           QueryParams "ids" Int64 :>
             Get '[JSON] UserRolePermissionsListResponse

-- | Gets a list of user role permissions, possibly filtered.
--
-- /See:/ 'userRolePermissionsList' smart constructor.
data UserRolePermissionsList = UserRolePermissionsList
    { _urplQuotaUser   :: !(Maybe Text)
    , _urplPrettyPrint :: !Bool
    , _urplUserIp      :: !(Maybe Text)
    , _urplIds         :: !(Maybe Int64)
    , _urplProfileId   :: !Int64
    , _urplKey         :: !(Maybe Text)
    , _urplOauthToken  :: !(Maybe Text)
    , _urplFields      :: !(Maybe Text)
    , _urplAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urplQuotaUser'
--
-- * 'urplPrettyPrint'
--
-- * 'urplUserIp'
--
-- * 'urplIds'
--
-- * 'urplProfileId'
--
-- * 'urplKey'
--
-- * 'urplOauthToken'
--
-- * 'urplFields'
--
-- * 'urplAlt'
userRolePermissionsList
    :: Int64 -- ^ 'profileId'
    -> UserRolePermissionsList
userRolePermissionsList pUrplProfileId_ =
    UserRolePermissionsList
    { _urplQuotaUser = Nothing
    , _urplPrettyPrint = True
    , _urplUserIp = Nothing
    , _urplIds = Nothing
    , _urplProfileId = pUrplProfileId_
    , _urplKey = Nothing
    , _urplOauthToken = Nothing
    , _urplFields = Nothing
    , _urplAlt = "json"
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
urplUserIp :: Lens' UserRolePermissionsList' (Maybe Text)
urplUserIp
  = lens _urplUserIp (\ s a -> s{_urplUserIp = a})

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
urplKey :: Lens' UserRolePermissionsList' (Maybe Text)
urplKey = lens _urplKey (\ s a -> s{_urplKey = a})

-- | OAuth 2.0 token for the current user.
urplOauthToken :: Lens' UserRolePermissionsList' (Maybe Text)
urplOauthToken
  = lens _urplOauthToken
      (\ s a -> s{_urplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urplFields :: Lens' UserRolePermissionsList' (Maybe Text)
urplFields
  = lens _urplFields (\ s a -> s{_urplFields = a})

-- | Data format for the response.
urplAlt :: Lens' UserRolePermissionsList' Text
urplAlt = lens _urplAlt (\ s a -> s{_urplAlt = a})

instance GoogleRequest UserRolePermissionsList' where
        type Rs UserRolePermissionsList' =
             UserRolePermissionsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolePermissionsList{..}
          = go _urplQuotaUser _urplPrettyPrint _urplUserIp
              _urplIds
              _urplProfileId
              _urplKey
              _urplOauthToken
              _urplFields
              _urplAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolePermissionsListAPI)
                      r
                      u
