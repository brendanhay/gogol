{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.UserRolePermissionGroups.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a list of all supported user role permission groups.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRolePermissionGroups.list@.
module Network.Google.API.DFAReporting.UserRolePermissionGroups.List
    (
    -- * REST Resource
      UserRolePermissionGroupsListAPI

    -- * Creating a Request
    , userRolePermissionGroupsList'
    , UserRolePermissionGroupsList'

    -- * Request Lenses
    , urpglQuotaUser
    , urpglPrettyPrint
    , urpglUserIp
    , urpglProfileId
    , urpglKey
    , urpglOauthToken
    , urpglFields
    , urpglAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.userRolePermissionGroups.list which the
-- 'UserRolePermissionGroupsList'' request conforms to.
type UserRolePermissionGroupsListAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRolePermissionGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] UserRolePermissionGroupsListResponse

-- | Gets a list of all supported user role permission groups.
--
-- /See:/ 'userRolePermissionGroupsList'' smart constructor.
data UserRolePermissionGroupsList' = UserRolePermissionGroupsList'
    { _urpglQuotaUser   :: !(Maybe Text)
    , _urpglPrettyPrint :: !Bool
    , _urpglUserIp      :: !(Maybe Text)
    , _urpglProfileId   :: !Int64
    , _urpglKey         :: !(Maybe Text)
    , _urpglOauthToken  :: !(Maybe Text)
    , _urpglFields      :: !(Maybe Text)
    , _urpglAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionGroupsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpglQuotaUser'
--
-- * 'urpglPrettyPrint'
--
-- * 'urpglUserIp'
--
-- * 'urpglProfileId'
--
-- * 'urpglKey'
--
-- * 'urpglOauthToken'
--
-- * 'urpglFields'
--
-- * 'urpglAlt'
userRolePermissionGroupsList'
    :: Int64 -- ^ 'profileId'
    -> UserRolePermissionGroupsList'
userRolePermissionGroupsList' pUrpglProfileId_ =
    UserRolePermissionGroupsList'
    { _urpglQuotaUser = Nothing
    , _urpglPrettyPrint = True
    , _urpglUserIp = Nothing
    , _urpglProfileId = pUrpglProfileId_
    , _urpglKey = Nothing
    , _urpglOauthToken = Nothing
    , _urpglFields = Nothing
    , _urpglAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urpglQuotaUser :: Lens' UserRolePermissionGroupsList' (Maybe Text)
urpglQuotaUser
  = lens _urpglQuotaUser
      (\ s a -> s{_urpglQuotaUser = a})

-- | Returns response with indentations and line breaks.
urpglPrettyPrint :: Lens' UserRolePermissionGroupsList' Bool
urpglPrettyPrint
  = lens _urpglPrettyPrint
      (\ s a -> s{_urpglPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urpglUserIp :: Lens' UserRolePermissionGroupsList' (Maybe Text)
urpglUserIp
  = lens _urpglUserIp (\ s a -> s{_urpglUserIp = a})

-- | User profile ID associated with this request.
urpglProfileId :: Lens' UserRolePermissionGroupsList' Int64
urpglProfileId
  = lens _urpglProfileId
      (\ s a -> s{_urpglProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpglKey :: Lens' UserRolePermissionGroupsList' (Maybe Text)
urpglKey = lens _urpglKey (\ s a -> s{_urpglKey = a})

-- | OAuth 2.0 token for the current user.
urpglOauthToken :: Lens' UserRolePermissionGroupsList' (Maybe Text)
urpglOauthToken
  = lens _urpglOauthToken
      (\ s a -> s{_urpglOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpglFields :: Lens' UserRolePermissionGroupsList' (Maybe Text)
urpglFields
  = lens _urpglFields (\ s a -> s{_urpglFields = a})

-- | Data format for the response.
urpglAlt :: Lens' UserRolePermissionGroupsList' Alt
urpglAlt = lens _urpglAlt (\ s a -> s{_urpglAlt = a})

instance GoogleRequest UserRolePermissionGroupsList'
         where
        type Rs UserRolePermissionGroupsList' =
             UserRolePermissionGroupsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          UserRolePermissionGroupsList'{..}
          = go _urpglQuotaUser (Just _urpglPrettyPrint)
              _urpglUserIp
              _urpglProfileId
              _urpglKey
              _urpglOauthToken
              _urpglFields
              (Just _urpglAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolePermissionGroupsListAPI)
                      r
                      u
