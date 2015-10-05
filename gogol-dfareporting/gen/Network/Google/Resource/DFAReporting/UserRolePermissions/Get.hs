{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    , urpgUserIP
    , urpgProFileId
    , urpgKey
    , urpgId
    , urpgOAuthToken
    , urpgFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] UserRolePermission

-- | Gets one user role permission by ID.
--
-- /See:/ 'userRolePermissionsGet'' smart constructor.
data UserRolePermissionsGet' = UserRolePermissionsGet'
    { _urpgQuotaUser   :: !(Maybe Text)
    , _urpgPrettyPrint :: !Bool
    , _urpgUserIP      :: !(Maybe Text)
    , _urpgProFileId   :: !Int64
    , _urpgKey         :: !(Maybe Key)
    , _urpgId          :: !Int64
    , _urpgOAuthToken  :: !(Maybe OAuthToken)
    , _urpgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolePermissionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpgQuotaUser'
--
-- * 'urpgPrettyPrint'
--
-- * 'urpgUserIP'
--
-- * 'urpgProFileId'
--
-- * 'urpgKey'
--
-- * 'urpgId'
--
-- * 'urpgOAuthToken'
--
-- * 'urpgFields'
userRolePermissionsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolePermissionsGet'
userRolePermissionsGet' pUrpgProFileId_ pUrpgId_ =
    UserRolePermissionsGet'
    { _urpgQuotaUser = Nothing
    , _urpgPrettyPrint = True
    , _urpgUserIP = Nothing
    , _urpgProFileId = pUrpgProFileId_
    , _urpgKey = Nothing
    , _urpgId = pUrpgId_
    , _urpgOAuthToken = Nothing
    , _urpgFields = Nothing
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
urpgUserIP :: Lens' UserRolePermissionsGet' (Maybe Text)
urpgUserIP
  = lens _urpgUserIP (\ s a -> s{_urpgUserIP = a})

-- | User profile ID associated with this request.
urpgProFileId :: Lens' UserRolePermissionsGet' Int64
urpgProFileId
  = lens _urpgProFileId
      (\ s a -> s{_urpgProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpgKey :: Lens' UserRolePermissionsGet' (Maybe Key)
urpgKey = lens _urpgKey (\ s a -> s{_urpgKey = a})

-- | User role permission ID.
urpgId :: Lens' UserRolePermissionsGet' Int64
urpgId = lens _urpgId (\ s a -> s{_urpgId = a})

-- | OAuth 2.0 token for the current user.
urpgOAuthToken :: Lens' UserRolePermissionsGet' (Maybe OAuthToken)
urpgOAuthToken
  = lens _urpgOAuthToken
      (\ s a -> s{_urpgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpgFields :: Lens' UserRolePermissionsGet' (Maybe Text)
urpgFields
  = lens _urpgFields (\ s a -> s{_urpgFields = a})

instance GoogleAuth UserRolePermissionsGet' where
        authKey = urpgKey . _Just
        authToken = urpgOAuthToken . _Just

instance GoogleRequest UserRolePermissionsGet' where
        type Rs UserRolePermissionsGet' = UserRolePermission
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolePermissionsGet'{..}
          = go _urpgProFileId _urpgId _urpgQuotaUser
              (Just _urpgPrettyPrint)
              _urpgUserIP
              _urpgFields
              _urpgKey
              _urpgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolePermissionsGetResource)
                      r
                      u
