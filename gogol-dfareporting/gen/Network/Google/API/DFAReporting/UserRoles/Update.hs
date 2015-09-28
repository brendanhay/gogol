{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.UserRoles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.userRoles.update@.
module Network.Google.API.DFAReporting.UserRoles.Update
    (
    -- * REST Resource
      UserRolesUpdateAPI

    -- * Creating a Request
    , userRolesUpdate'
    , UserRolesUpdate'

    -- * Request Lenses
    , uruQuotaUser
    , uruPrettyPrint
    , uruUserIp
    , uruProfileId
    , uruKey
    , uruOauthToken
    , uruFields
    , uruAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.userRoles.update which the
-- 'UserRolesUpdate'' request conforms to.
type UserRolesUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] UserRole

-- | Updates an existing user role.
--
-- /See:/ 'userRolesUpdate'' smart constructor.
data UserRolesUpdate' = UserRolesUpdate'
    { _uruQuotaUser   :: !(Maybe Text)
    , _uruPrettyPrint :: !Bool
    , _uruUserIp      :: !(Maybe Text)
    , _uruProfileId   :: !Int64
    , _uruKey         :: !(Maybe Text)
    , _uruOauthToken  :: !(Maybe Text)
    , _uruFields      :: !(Maybe Text)
    , _uruAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uruQuotaUser'
--
-- * 'uruPrettyPrint'
--
-- * 'uruUserIp'
--
-- * 'uruProfileId'
--
-- * 'uruKey'
--
-- * 'uruOauthToken'
--
-- * 'uruFields'
--
-- * 'uruAlt'
userRolesUpdate'
    :: Int64 -- ^ 'profileId'
    -> UserRolesUpdate'
userRolesUpdate' pUruProfileId_ =
    UserRolesUpdate'
    { _uruQuotaUser = Nothing
    , _uruPrettyPrint = True
    , _uruUserIp = Nothing
    , _uruProfileId = pUruProfileId_
    , _uruKey = Nothing
    , _uruOauthToken = Nothing
    , _uruFields = Nothing
    , _uruAlt = JSON
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
uruUserIp :: Lens' UserRolesUpdate' (Maybe Text)
uruUserIp
  = lens _uruUserIp (\ s a -> s{_uruUserIp = a})

-- | User profile ID associated with this request.
uruProfileId :: Lens' UserRolesUpdate' Int64
uruProfileId
  = lens _uruProfileId (\ s a -> s{_uruProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uruKey :: Lens' UserRolesUpdate' (Maybe Text)
uruKey = lens _uruKey (\ s a -> s{_uruKey = a})

-- | OAuth 2.0 token for the current user.
uruOauthToken :: Lens' UserRolesUpdate' (Maybe Text)
uruOauthToken
  = lens _uruOauthToken
      (\ s a -> s{_uruOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uruFields :: Lens' UserRolesUpdate' (Maybe Text)
uruFields
  = lens _uruFields (\ s a -> s{_uruFields = a})

-- | Data format for the response.
uruAlt :: Lens' UserRolesUpdate' Alt
uruAlt = lens _uruAlt (\ s a -> s{_uruAlt = a})

instance GoogleRequest UserRolesUpdate' where
        type Rs UserRolesUpdate' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesUpdate'{..}
          = go _uruQuotaUser (Just _uruPrettyPrint) _uruUserIp
              _uruProfileId
              _uruKey
              _uruOauthToken
              _uruFields
              (Just _uruAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy UserRolesUpdateAPI)
                      r
                      u
