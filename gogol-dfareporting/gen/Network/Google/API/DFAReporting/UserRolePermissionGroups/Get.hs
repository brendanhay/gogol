{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.UserRolePermissionGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user role permission group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRolePermissionGroups.get@.
module Network.Google.API.DFAReporting.UserRolePermissionGroups.Get
    (
    -- * REST Resource
      UserRolePermissionGroupsGetAPI

    -- * Creating a Request
    , userRolePermissionGroupsGet'
    , UserRolePermissionGroupsGet'

    -- * Request Lenses
    , urpggQuotaUser
    , urpggPrettyPrint
    , urpggUserIp
    , urpggProfileId
    , urpggKey
    , urpggId
    , urpggOauthToken
    , urpggFields
    , urpggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.userRolePermissionGroups.get which the
-- 'UserRolePermissionGroupsGet'' request conforms to.
type UserRolePermissionGroupsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRolePermissionGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] UserRolePermissionGroup

-- | Gets one user role permission group by ID.
--
-- /See:/ 'userRolePermissionGroupsGet'' smart constructor.
data UserRolePermissionGroupsGet' = UserRolePermissionGroupsGet'
    { _urpggQuotaUser   :: !(Maybe Text)
    , _urpggPrettyPrint :: !Bool
    , _urpggUserIp      :: !(Maybe Text)
    , _urpggProfileId   :: !Int64
    , _urpggKey         :: !(Maybe Text)
    , _urpggId          :: !Int64
    , _urpggOauthToken  :: !(Maybe Text)
    , _urpggFields      :: !(Maybe Text)
    , _urpggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpggQuotaUser'
--
-- * 'urpggPrettyPrint'
--
-- * 'urpggUserIp'
--
-- * 'urpggProfileId'
--
-- * 'urpggKey'
--
-- * 'urpggId'
--
-- * 'urpggOauthToken'
--
-- * 'urpggFields'
--
-- * 'urpggAlt'
userRolePermissionGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolePermissionGroupsGet'
userRolePermissionGroupsGet' pUrpggProfileId_ pUrpggId_ =
    UserRolePermissionGroupsGet'
    { _urpggQuotaUser = Nothing
    , _urpggPrettyPrint = True
    , _urpggUserIp = Nothing
    , _urpggProfileId = pUrpggProfileId_
    , _urpggKey = Nothing
    , _urpggId = pUrpggId_
    , _urpggOauthToken = Nothing
    , _urpggFields = Nothing
    , _urpggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urpggQuotaUser :: Lens' UserRolePermissionGroupsGet' (Maybe Text)
urpggQuotaUser
  = lens _urpggQuotaUser
      (\ s a -> s{_urpggQuotaUser = a})

-- | Returns response with indentations and line breaks.
urpggPrettyPrint :: Lens' UserRolePermissionGroupsGet' Bool
urpggPrettyPrint
  = lens _urpggPrettyPrint
      (\ s a -> s{_urpggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urpggUserIp :: Lens' UserRolePermissionGroupsGet' (Maybe Text)
urpggUserIp
  = lens _urpggUserIp (\ s a -> s{_urpggUserIp = a})

-- | User profile ID associated with this request.
urpggProfileId :: Lens' UserRolePermissionGroupsGet' Int64
urpggProfileId
  = lens _urpggProfileId
      (\ s a -> s{_urpggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpggKey :: Lens' UserRolePermissionGroupsGet' (Maybe Text)
urpggKey = lens _urpggKey (\ s a -> s{_urpggKey = a})

-- | User role permission group ID.
urpggId :: Lens' UserRolePermissionGroupsGet' Int64
urpggId = lens _urpggId (\ s a -> s{_urpggId = a})

-- | OAuth 2.0 token for the current user.
urpggOauthToken :: Lens' UserRolePermissionGroupsGet' (Maybe Text)
urpggOauthToken
  = lens _urpggOauthToken
      (\ s a -> s{_urpggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpggFields :: Lens' UserRolePermissionGroupsGet' (Maybe Text)
urpggFields
  = lens _urpggFields (\ s a -> s{_urpggFields = a})

-- | Data format for the response.
urpggAlt :: Lens' UserRolePermissionGroupsGet' Alt
urpggAlt = lens _urpggAlt (\ s a -> s{_urpggAlt = a})

instance GoogleRequest UserRolePermissionGroupsGet'
         where
        type Rs UserRolePermissionGroupsGet' =
             UserRolePermissionGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolePermissionGroupsGet'{..}
          = go _urpggQuotaUser (Just _urpggPrettyPrint)
              _urpggUserIp
              _urpggProfileId
              _urpggKey
              _urpggId
              _urpggOauthToken
              _urpggFields
              (Just _urpggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolePermissionGroupsGetAPI)
                      r
                      u
