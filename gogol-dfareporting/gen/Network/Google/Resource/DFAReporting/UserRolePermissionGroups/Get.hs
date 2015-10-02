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
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user role permission group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolePermissionGroupsGet@.
module Network.Google.Resource.DFAReporting.UserRolePermissionGroups.Get
    (
    -- * REST Resource
      UserRolePermissionGroupsGetResource

    -- * Creating a Request
    , userRolePermissionGroupsGet'
    , UserRolePermissionGroupsGet'

    -- * Request Lenses
    , urpggQuotaUser
    , urpggPrettyPrint
    , urpggUserIP
    , urpggProfileId
    , urpggKey
    , urpggId
    , urpggOAuthToken
    , urpggFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolePermissionGroupsGet@ which the
-- 'UserRolePermissionGroupsGet'' request conforms to.
type UserRolePermissionGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRolePermissionGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] UserRolePermissionGroup

-- | Gets one user role permission group by ID.
--
-- /See:/ 'userRolePermissionGroupsGet'' smart constructor.
data UserRolePermissionGroupsGet' = UserRolePermissionGroupsGet'
    { _urpggQuotaUser   :: !(Maybe Text)
    , _urpggPrettyPrint :: !Bool
    , _urpggUserIP      :: !(Maybe Text)
    , _urpggProfileId   :: !Int64
    , _urpggKey         :: !(Maybe Key)
    , _urpggId          :: !Int64
    , _urpggOAuthToken  :: !(Maybe OAuthToken)
    , _urpggFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpggQuotaUser'
--
-- * 'urpggPrettyPrint'
--
-- * 'urpggUserIP'
--
-- * 'urpggProfileId'
--
-- * 'urpggKey'
--
-- * 'urpggId'
--
-- * 'urpggOAuthToken'
--
-- * 'urpggFields'
userRolePermissionGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolePermissionGroupsGet'
userRolePermissionGroupsGet' pUrpggProfileId_ pUrpggId_ =
    UserRolePermissionGroupsGet'
    { _urpggQuotaUser = Nothing
    , _urpggPrettyPrint = True
    , _urpggUserIP = Nothing
    , _urpggProfileId = pUrpggProfileId_
    , _urpggKey = Nothing
    , _urpggId = pUrpggId_
    , _urpggOAuthToken = Nothing
    , _urpggFields = Nothing
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
urpggUserIP :: Lens' UserRolePermissionGroupsGet' (Maybe Text)
urpggUserIP
  = lens _urpggUserIP (\ s a -> s{_urpggUserIP = a})

-- | User profile ID associated with this request.
urpggProfileId :: Lens' UserRolePermissionGroupsGet' Int64
urpggProfileId
  = lens _urpggProfileId
      (\ s a -> s{_urpggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpggKey :: Lens' UserRolePermissionGroupsGet' (Maybe Key)
urpggKey = lens _urpggKey (\ s a -> s{_urpggKey = a})

-- | User role permission group ID.
urpggId :: Lens' UserRolePermissionGroupsGet' Int64
urpggId = lens _urpggId (\ s a -> s{_urpggId = a})

-- | OAuth 2.0 token for the current user.
urpggOAuthToken :: Lens' UserRolePermissionGroupsGet' (Maybe OAuthToken)
urpggOAuthToken
  = lens _urpggOAuthToken
      (\ s a -> s{_urpggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpggFields :: Lens' UserRolePermissionGroupsGet' (Maybe Text)
urpggFields
  = lens _urpggFields (\ s a -> s{_urpggFields = a})

instance GoogleAuth UserRolePermissionGroupsGet'
         where
        authKey = urpggKey . _Just
        authToken = urpggOAuthToken . _Just

instance GoogleRequest UserRolePermissionGroupsGet'
         where
        type Rs UserRolePermissionGroupsGet' =
             UserRolePermissionGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolePermissionGroupsGet'{..}
          = go _urpggQuotaUser (Just _urpggPrettyPrint)
              _urpggUserIP
              _urpggProfileId
              _urpggKey
              _urpggId
              _urpggOAuthToken
              _urpggFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolePermissionGroupsGetResource)
                      r
                      u
