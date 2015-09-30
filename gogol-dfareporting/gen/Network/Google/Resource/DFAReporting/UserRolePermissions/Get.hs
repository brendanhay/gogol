{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.UserRolePermissions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user role permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolePermissionsGet@.
module DFAReporting.UserRolePermissions.Get
    (
    -- * REST Resource
      UserRolePermissionsGetAPI

    -- * Creating a Request
    , userRolePermissionsGet
    , UserRolePermissionsGet

    -- * Request Lenses
    , useQuotaUser
    , usePrettyPrint
    , useUserIp
    , useProfileId
    , useKey
    , useId
    , useOauthToken
    , useFields
    , useAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolePermissionsGet@ which the
-- 'UserRolePermissionsGet' request conforms to.
type UserRolePermissionsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRolePermissions" :>
           Capture "id" Int64 :> Get '[JSON] UserRolePermission

-- | Gets one user role permission by ID.
--
-- /See:/ 'userRolePermissionsGet' smart constructor.
data UserRolePermissionsGet = UserRolePermissionsGet
    { _useQuotaUser   :: !(Maybe Text)
    , _usePrettyPrint :: !Bool
    , _useUserIp      :: !(Maybe Text)
    , _useProfileId   :: !Int64
    , _useKey         :: !(Maybe Text)
    , _useId          :: !Int64
    , _useOauthToken  :: !(Maybe Text)
    , _useFields      :: !(Maybe Text)
    , _useAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'useQuotaUser'
--
-- * 'usePrettyPrint'
--
-- * 'useUserIp'
--
-- * 'useProfileId'
--
-- * 'useKey'
--
-- * 'useId'
--
-- * 'useOauthToken'
--
-- * 'useFields'
--
-- * 'useAlt'
userRolePermissionsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolePermissionsGet
userRolePermissionsGet pUseProfileId_ pUseId_ =
    UserRolePermissionsGet
    { _useQuotaUser = Nothing
    , _usePrettyPrint = True
    , _useUserIp = Nothing
    , _useProfileId = pUseProfileId_
    , _useKey = Nothing
    , _useId = pUseId_
    , _useOauthToken = Nothing
    , _useFields = Nothing
    , _useAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
useQuotaUser :: Lens' UserRolePermissionsGet' (Maybe Text)
useQuotaUser
  = lens _useQuotaUser (\ s a -> s{_useQuotaUser = a})

-- | Returns response with indentations and line breaks.
usePrettyPrint :: Lens' UserRolePermissionsGet' Bool
usePrettyPrint
  = lens _usePrettyPrint
      (\ s a -> s{_usePrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
useUserIp :: Lens' UserRolePermissionsGet' (Maybe Text)
useUserIp
  = lens _useUserIp (\ s a -> s{_useUserIp = a})

-- | User profile ID associated with this request.
useProfileId :: Lens' UserRolePermissionsGet' Int64
useProfileId
  = lens _useProfileId (\ s a -> s{_useProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
useKey :: Lens' UserRolePermissionsGet' (Maybe Text)
useKey = lens _useKey (\ s a -> s{_useKey = a})

-- | User role permission ID.
useId :: Lens' UserRolePermissionsGet' Int64
useId = lens _useId (\ s a -> s{_useId = a})

-- | OAuth 2.0 token for the current user.
useOauthToken :: Lens' UserRolePermissionsGet' (Maybe Text)
useOauthToken
  = lens _useOauthToken
      (\ s a -> s{_useOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
useFields :: Lens' UserRolePermissionsGet' (Maybe Text)
useFields
  = lens _useFields (\ s a -> s{_useFields = a})

-- | Data format for the response.
useAlt :: Lens' UserRolePermissionsGet' Text
useAlt = lens _useAlt (\ s a -> s{_useAlt = a})

instance GoogleRequest UserRolePermissionsGet' where
        type Rs UserRolePermissionsGet' = UserRolePermission
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolePermissionsGet{..}
          = go _useQuotaUser _usePrettyPrint _useUserIp
              _useProfileId
              _useKey
              _useId
              _useOauthToken
              _useFields
              _useAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolePermissionsGetAPI)
                      r
                      u
