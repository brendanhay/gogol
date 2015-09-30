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
module Network.Google.Resource.DFAReporting.UserRolePermissions.Get
    (
    -- * REST Resource
      UserRolePermissionsGetResource

    -- * Creating a Request
    , userRolePermissionsGet'
    , UserRolePermissionsGet'

    -- * Request Lenses
    , urpgQuotaUser
    , urpgPrettyPrint
    , urpgUserIp
    , urpgProfileId
    , urpgKey
    , urpgId
    , urpgOauthToken
    , urpgFields
    , urpgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolePermissionsGet@ which the
-- 'UserRolePermissionsGet'' request conforms to.
type UserRolePermissionsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRolePermissions" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] UserRolePermission

-- | Gets one user role permission by ID.
--
-- /See:/ 'userRolePermissionsGet'' smart constructor.
data UserRolePermissionsGet' = UserRolePermissionsGet'
    { _urpgQuotaUser   :: !(Maybe Text)
    , _urpgPrettyPrint :: !Bool
    , _urpgUserIp      :: !(Maybe Text)
    , _urpgProfileId   :: !Int64
    , _urpgKey         :: !(Maybe Text)
    , _urpgId          :: !Int64
    , _urpgOauthToken  :: !(Maybe Text)
    , _urpgFields      :: !(Maybe Text)
    , _urpgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpgQuotaUser'
--
-- * 'urpgPrettyPrint'
--
-- * 'urpgUserIp'
--
-- * 'urpgProfileId'
--
-- * 'urpgKey'
--
-- * 'urpgId'
--
-- * 'urpgOauthToken'
--
-- * 'urpgFields'
--
-- * 'urpgAlt'
userRolePermissionsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolePermissionsGet'
userRolePermissionsGet' pUrpgProfileId_ pUrpgId_ =
    UserRolePermissionsGet'
    { _urpgQuotaUser = Nothing
    , _urpgPrettyPrint = True
    , _urpgUserIp = Nothing
    , _urpgProfileId = pUrpgProfileId_
    , _urpgKey = Nothing
    , _urpgId = pUrpgId_
    , _urpgOauthToken = Nothing
    , _urpgFields = Nothing
    , _urpgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urpgQuotaUser :: Lens' UserRolePermissionsGet' (Maybe Text)
urpgQuotaUser
  = lens _urpgQuotaUser
      (\ s a -> s{_urpgQuotaUser = a})

-- | Returns response with indentations and line breaks.
urpgPrettyPrint :: Lens' UserRolePermissionsGet' Bool
urpgPrettyPrint
  = lens _urpgPrettyPrint
      (\ s a -> s{_urpgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urpgUserIp :: Lens' UserRolePermissionsGet' (Maybe Text)
urpgUserIp
  = lens _urpgUserIp (\ s a -> s{_urpgUserIp = a})

-- | User profile ID associated with this request.
urpgProfileId :: Lens' UserRolePermissionsGet' Int64
urpgProfileId
  = lens _urpgProfileId
      (\ s a -> s{_urpgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpgKey :: Lens' UserRolePermissionsGet' (Maybe Text)
urpgKey = lens _urpgKey (\ s a -> s{_urpgKey = a})

-- | User role permission ID.
urpgId :: Lens' UserRolePermissionsGet' Int64
urpgId = lens _urpgId (\ s a -> s{_urpgId = a})

-- | OAuth 2.0 token for the current user.
urpgOauthToken :: Lens' UserRolePermissionsGet' (Maybe Text)
urpgOauthToken
  = lens _urpgOauthToken
      (\ s a -> s{_urpgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpgFields :: Lens' UserRolePermissionsGet' (Maybe Text)
urpgFields
  = lens _urpgFields (\ s a -> s{_urpgFields = a})

-- | Data format for the response.
urpgAlt :: Lens' UserRolePermissionsGet' Alt
urpgAlt = lens _urpgAlt (\ s a -> s{_urpgAlt = a})

instance GoogleRequest UserRolePermissionsGet' where
        type Rs UserRolePermissionsGet' = UserRolePermission
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolePermissionsGet'{..}
          = go _urpgQuotaUser (Just _urpgPrettyPrint)
              _urpgUserIp
              _urpgProfileId
              _urpgKey
              _urpgId
              _urpgOauthToken
              _urpgFields
              (Just _urpgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolePermissionsGetResource)
                      r
                      u
