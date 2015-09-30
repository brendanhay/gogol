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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesInsert@.
module Network.Google.Resource.DFAReporting.UserRoles.Insert
    (
    -- * REST Resource
      UserRolesInsertResource

    -- * Creating a Request
    , userRolesInsert'
    , UserRolesInsert'

    -- * Request Lenses
    , uriQuotaUser
    , uriPrettyPrint
    , uriUserIp
    , uriProfileId
    , uriKey
    , uriOauthToken
    , uriFields
    , uriAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesInsert@ which the
-- 'UserRolesInsert'' request conforms to.
type UserRolesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] UserRole

-- | Inserts a new user role.
--
-- /See:/ 'userRolesInsert'' smart constructor.
data UserRolesInsert' = UserRolesInsert'
    { _uriQuotaUser   :: !(Maybe Text)
    , _uriPrettyPrint :: !Bool
    , _uriUserIp      :: !(Maybe Text)
    , _uriProfileId   :: !Int64
    , _uriKey         :: !(Maybe Text)
    , _uriOauthToken  :: !(Maybe Text)
    , _uriFields      :: !(Maybe Text)
    , _uriAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uriQuotaUser'
--
-- * 'uriPrettyPrint'
--
-- * 'uriUserIp'
--
-- * 'uriProfileId'
--
-- * 'uriKey'
--
-- * 'uriOauthToken'
--
-- * 'uriFields'
--
-- * 'uriAlt'
userRolesInsert'
    :: Int64 -- ^ 'profileId'
    -> UserRolesInsert'
userRolesInsert' pUriProfileId_ =
    UserRolesInsert'
    { _uriQuotaUser = Nothing
    , _uriPrettyPrint = True
    , _uriUserIp = Nothing
    , _uriProfileId = pUriProfileId_
    , _uriKey = Nothing
    , _uriOauthToken = Nothing
    , _uriFields = Nothing
    , _uriAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uriQuotaUser :: Lens' UserRolesInsert' (Maybe Text)
uriQuotaUser
  = lens _uriQuotaUser (\ s a -> s{_uriQuotaUser = a})

-- | Returns response with indentations and line breaks.
uriPrettyPrint :: Lens' UserRolesInsert' Bool
uriPrettyPrint
  = lens _uriPrettyPrint
      (\ s a -> s{_uriPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uriUserIp :: Lens' UserRolesInsert' (Maybe Text)
uriUserIp
  = lens _uriUserIp (\ s a -> s{_uriUserIp = a})

-- | User profile ID associated with this request.
uriProfileId :: Lens' UserRolesInsert' Int64
uriProfileId
  = lens _uriProfileId (\ s a -> s{_uriProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uriKey :: Lens' UserRolesInsert' (Maybe Text)
uriKey = lens _uriKey (\ s a -> s{_uriKey = a})

-- | OAuth 2.0 token for the current user.
uriOauthToken :: Lens' UserRolesInsert' (Maybe Text)
uriOauthToken
  = lens _uriOauthToken
      (\ s a -> s{_uriOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uriFields :: Lens' UserRolesInsert' (Maybe Text)
uriFields
  = lens _uriFields (\ s a -> s{_uriFields = a})

-- | Data format for the response.
uriAlt :: Lens' UserRolesInsert' Alt
uriAlt = lens _uriAlt (\ s a -> s{_uriAlt = a})

instance GoogleRequest UserRolesInsert' where
        type Rs UserRolesInsert' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesInsert'{..}
          = go _uriQuotaUser (Just _uriPrettyPrint) _uriUserIp
              _uriProfileId
              _uriKey
              _uriOauthToken
              _uriFields
              (Just _uriAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolesInsertResource)
                      r
                      u
