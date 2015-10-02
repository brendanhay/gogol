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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesPatch@.
module Network.Google.Resource.DFAReporting.UserRoles.Patch
    (
    -- * REST Resource
      UserRolesPatchResource

    -- * Creating a Request
    , userRolesPatch'
    , UserRolesPatch'

    -- * Request Lenses
    , urpQuotaUser
    , urpPrettyPrint
    , urpUserIP
    , urpProfileId
    , urpKey
    , urpId
    , urpUserRole
    , urpOAuthToken
    , urpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesPatch@ which the
-- 'UserRolesPatch'' request conforms to.
type UserRolesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UserRole :> Patch '[JSON] UserRole

-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ 'userRolesPatch'' smart constructor.
data UserRolesPatch' = UserRolesPatch'
    { _urpQuotaUser   :: !(Maybe Text)
    , _urpPrettyPrint :: !Bool
    , _urpUserIP      :: !(Maybe Text)
    , _urpProfileId   :: !Int64
    , _urpKey         :: !(Maybe Key)
    , _urpId          :: !Int64
    , _urpUserRole    :: !UserRole
    , _urpOAuthToken  :: !(Maybe OAuthToken)
    , _urpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpQuotaUser'
--
-- * 'urpPrettyPrint'
--
-- * 'urpUserIP'
--
-- * 'urpProfileId'
--
-- * 'urpKey'
--
-- * 'urpId'
--
-- * 'urpUserRole'
--
-- * 'urpOAuthToken'
--
-- * 'urpFields'
userRolesPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRole -- ^ 'UserRole'
    -> UserRolesPatch'
userRolesPatch' pUrpProfileId_ pUrpId_ pUrpUserRole_ =
    UserRolesPatch'
    { _urpQuotaUser = Nothing
    , _urpPrettyPrint = True
    , _urpUserIP = Nothing
    , _urpProfileId = pUrpProfileId_
    , _urpKey = Nothing
    , _urpId = pUrpId_
    , _urpUserRole = pUrpUserRole_
    , _urpOAuthToken = Nothing
    , _urpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urpQuotaUser :: Lens' UserRolesPatch' (Maybe Text)
urpQuotaUser
  = lens _urpQuotaUser (\ s a -> s{_urpQuotaUser = a})

-- | Returns response with indentations and line breaks.
urpPrettyPrint :: Lens' UserRolesPatch' Bool
urpPrettyPrint
  = lens _urpPrettyPrint
      (\ s a -> s{_urpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urpUserIP :: Lens' UserRolesPatch' (Maybe Text)
urpUserIP
  = lens _urpUserIP (\ s a -> s{_urpUserIP = a})

-- | User profile ID associated with this request.
urpProfileId :: Lens' UserRolesPatch' Int64
urpProfileId
  = lens _urpProfileId (\ s a -> s{_urpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpKey :: Lens' UserRolesPatch' (Maybe Key)
urpKey = lens _urpKey (\ s a -> s{_urpKey = a})

-- | User role ID.
urpId :: Lens' UserRolesPatch' Int64
urpId = lens _urpId (\ s a -> s{_urpId = a})

-- | Multipart request metadata.
urpUserRole :: Lens' UserRolesPatch' UserRole
urpUserRole
  = lens _urpUserRole (\ s a -> s{_urpUserRole = a})

-- | OAuth 2.0 token for the current user.
urpOAuthToken :: Lens' UserRolesPatch' (Maybe OAuthToken)
urpOAuthToken
  = lens _urpOAuthToken
      (\ s a -> s{_urpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpFields :: Lens' UserRolesPatch' (Maybe Text)
urpFields
  = lens _urpFields (\ s a -> s{_urpFields = a})

instance GoogleAuth UserRolesPatch' where
        authKey = urpKey . _Just
        authToken = urpOAuthToken . _Just

instance GoogleRequest UserRolesPatch' where
        type Rs UserRolesPatch' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesPatch'{..}
          = go _urpProfileId (Just _urpId) _urpQuotaUser
              (Just _urpPrettyPrint)
              _urpUserIP
              _urpFields
              _urpKey
              _urpOAuthToken
              (Just AltJSON)
              _urpUserRole
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolesPatchResource)
                      r
                      u
