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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesUpdate@.
module Network.Google.Resource.DFAReporting.UserRoles.Update
    (
    -- * REST Resource
      UserRolesUpdateResource

    -- * Creating a Request
    , userRolesUpdate'
    , UserRolesUpdate'

    -- * Request Lenses
    , uruQuotaUser
    , uruPrettyPrint
    , uruUserIP
    , uruProfileId
    , uruKey
    , uruUserRole
    , uruOAuthToken
    , uruFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesUpdate@ which the
-- 'UserRolesUpdate'' request conforms to.
type UserRolesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UserRole :> Put '[JSON] UserRole

-- | Updates an existing user role.
--
-- /See:/ 'userRolesUpdate'' smart constructor.
data UserRolesUpdate' = UserRolesUpdate'
    { _uruQuotaUser   :: !(Maybe Text)
    , _uruPrettyPrint :: !Bool
    , _uruUserIP      :: !(Maybe Text)
    , _uruProfileId   :: !Int64
    , _uruKey         :: !(Maybe Key)
    , _uruUserRole    :: !UserRole
    , _uruOAuthToken  :: !(Maybe OAuthToken)
    , _uruFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uruQuotaUser'
--
-- * 'uruPrettyPrint'
--
-- * 'uruUserIP'
--
-- * 'uruProfileId'
--
-- * 'uruKey'
--
-- * 'uruUserRole'
--
-- * 'uruOAuthToken'
--
-- * 'uruFields'
userRolesUpdate'
    :: Int64 -- ^ 'profileId'
    -> UserRole -- ^ 'UserRole'
    -> UserRolesUpdate'
userRolesUpdate' pUruProfileId_ pUruUserRole_ =
    UserRolesUpdate'
    { _uruQuotaUser = Nothing
    , _uruPrettyPrint = True
    , _uruUserIP = Nothing
    , _uruProfileId = pUruProfileId_
    , _uruKey = Nothing
    , _uruUserRole = pUruUserRole_
    , _uruOAuthToken = Nothing
    , _uruFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uruQuotaUser :: Lens' UserRolesUpdate' (Maybe Text)
uruQuotaUser
  = lens _uruQuotaUser (\ s a -> s{_uruQuotaUser = a})

-- | Returns response with indentations and line breaks.
uruPrettyPrint :: Lens' UserRolesUpdate' Bool
uruPrettyPrint
  = lens _uruPrettyPrint
      (\ s a -> s{_uruPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uruUserIP :: Lens' UserRolesUpdate' (Maybe Text)
uruUserIP
  = lens _uruUserIP (\ s a -> s{_uruUserIP = a})

-- | User profile ID associated with this request.
uruProfileId :: Lens' UserRolesUpdate' Int64
uruProfileId
  = lens _uruProfileId (\ s a -> s{_uruProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uruKey :: Lens' UserRolesUpdate' (Maybe Key)
uruKey = lens _uruKey (\ s a -> s{_uruKey = a})

-- | Multipart request metadata.
uruUserRole :: Lens' UserRolesUpdate' UserRole
uruUserRole
  = lens _uruUserRole (\ s a -> s{_uruUserRole = a})

-- | OAuth 2.0 token for the current user.
uruOAuthToken :: Lens' UserRolesUpdate' (Maybe OAuthToken)
uruOAuthToken
  = lens _uruOAuthToken
      (\ s a -> s{_uruOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uruFields :: Lens' UserRolesUpdate' (Maybe Text)
uruFields
  = lens _uruFields (\ s a -> s{_uruFields = a})

instance GoogleAuth UserRolesUpdate' where
        authKey = uruKey . _Just
        authToken = uruOAuthToken . _Just

instance GoogleRequest UserRolesUpdate' where
        type Rs UserRolesUpdate' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesUpdate'{..}
          = go _uruQuotaUser (Just _uruPrettyPrint) _uruUserIP
              _uruProfileId
              _uruKey
              _uruOAuthToken
              _uruFields
              (Just AltJSON)
              _uruUserRole
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolesUpdateResource)
                      r
                      u
