{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.UserRoles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRoles.patch@.
module Network.Google.API.DFAReporting.UserRoles.Patch
    (
    -- * REST Resource
      UserRolesPatchAPI

    -- * Creating a Request
    , userRolesPatch'
    , UserRolesPatch'

    -- * Request Lenses
    , urpQuotaUser
    , urpPrettyPrint
    , urpUserIp
    , urpProfileId
    , urpKey
    , urpId
    , urpOauthToken
    , urpFields
    , urpAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.userRoles.patch which the
-- 'UserRolesPatch'' request conforms to.
type UserRolesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] UserRole

-- | Updates an existing user role. This method supports patch semantics.
--
-- /See:/ 'userRolesPatch'' smart constructor.
data UserRolesPatch' = UserRolesPatch'
    { _urpQuotaUser   :: !(Maybe Text)
    , _urpPrettyPrint :: !Bool
    , _urpUserIp      :: !(Maybe Text)
    , _urpProfileId   :: !Int64
    , _urpKey         :: !(Maybe Text)
    , _urpId          :: !Int64
    , _urpOauthToken  :: !(Maybe Text)
    , _urpFields      :: !(Maybe Text)
    , _urpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urpQuotaUser'
--
-- * 'urpPrettyPrint'
--
-- * 'urpUserIp'
--
-- * 'urpProfileId'
--
-- * 'urpKey'
--
-- * 'urpId'
--
-- * 'urpOauthToken'
--
-- * 'urpFields'
--
-- * 'urpAlt'
userRolesPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolesPatch'
userRolesPatch' pUrpProfileId_ pUrpId_ =
    UserRolesPatch'
    { _urpQuotaUser = Nothing
    , _urpPrettyPrint = True
    , _urpUserIp = Nothing
    , _urpProfileId = pUrpProfileId_
    , _urpKey = Nothing
    , _urpId = pUrpId_
    , _urpOauthToken = Nothing
    , _urpFields = Nothing
    , _urpAlt = JSON
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
urpUserIp :: Lens' UserRolesPatch' (Maybe Text)
urpUserIp
  = lens _urpUserIp (\ s a -> s{_urpUserIp = a})

-- | User profile ID associated with this request.
urpProfileId :: Lens' UserRolesPatch' Int64
urpProfileId
  = lens _urpProfileId (\ s a -> s{_urpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urpKey :: Lens' UserRolesPatch' (Maybe Text)
urpKey = lens _urpKey (\ s a -> s{_urpKey = a})

-- | User role ID.
urpId :: Lens' UserRolesPatch' Int64
urpId = lens _urpId (\ s a -> s{_urpId = a})

-- | OAuth 2.0 token for the current user.
urpOauthToken :: Lens' UserRolesPatch' (Maybe Text)
urpOauthToken
  = lens _urpOauthToken
      (\ s a -> s{_urpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
urpFields :: Lens' UserRolesPatch' (Maybe Text)
urpFields
  = lens _urpFields (\ s a -> s{_urpFields = a})

-- | Data format for the response.
urpAlt :: Lens' UserRolesPatch' Alt
urpAlt = lens _urpAlt (\ s a -> s{_urpAlt = a})

instance GoogleRequest UserRolesPatch' where
        type Rs UserRolesPatch' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesPatch'{..}
          = go _urpQuotaUser (Just _urpPrettyPrint) _urpUserIp
              _urpProfileId
              _urpKey
              (Just _urpId)
              _urpOauthToken
              _urpFields
              (Just _urpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UserRolesPatchAPI)
                      r
                      u
