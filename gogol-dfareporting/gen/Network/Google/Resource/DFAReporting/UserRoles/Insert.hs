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
    , uriUserIP
    , uriProfileId
    , uriKey
    , uriUserRole
    , uriOAuthToken
    , uriFields
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
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UserRole :> Post '[JSON] UserRole

-- | Inserts a new user role.
--
-- /See:/ 'userRolesInsert'' smart constructor.
data UserRolesInsert' = UserRolesInsert'
    { _uriQuotaUser   :: !(Maybe Text)
    , _uriPrettyPrint :: !Bool
    , _uriUserIP      :: !(Maybe Text)
    , _uriProfileId   :: !Int64
    , _uriKey         :: !(Maybe Key)
    , _uriUserRole    :: !UserRole
    , _uriOAuthToken  :: !(Maybe OAuthToken)
    , _uriFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uriQuotaUser'
--
-- * 'uriPrettyPrint'
--
-- * 'uriUserIP'
--
-- * 'uriProfileId'
--
-- * 'uriKey'
--
-- * 'uriUserRole'
--
-- * 'uriOAuthToken'
--
-- * 'uriFields'
userRolesInsert'
    :: Int64 -- ^ 'profileId'
    -> UserRole -- ^ 'UserRole'
    -> UserRolesInsert'
userRolesInsert' pUriProfileId_ pUriUserRole_ =
    UserRolesInsert'
    { _uriQuotaUser = Nothing
    , _uriPrettyPrint = True
    , _uriUserIP = Nothing
    , _uriProfileId = pUriProfileId_
    , _uriKey = Nothing
    , _uriUserRole = pUriUserRole_
    , _uriOAuthToken = Nothing
    , _uriFields = Nothing
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
uriUserIP :: Lens' UserRolesInsert' (Maybe Text)
uriUserIP
  = lens _uriUserIP (\ s a -> s{_uriUserIP = a})

-- | User profile ID associated with this request.
uriProfileId :: Lens' UserRolesInsert' Int64
uriProfileId
  = lens _uriProfileId (\ s a -> s{_uriProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uriKey :: Lens' UserRolesInsert' (Maybe Key)
uriKey = lens _uriKey (\ s a -> s{_uriKey = a})

-- | Multipart request metadata.
uriUserRole :: Lens' UserRolesInsert' UserRole
uriUserRole
  = lens _uriUserRole (\ s a -> s{_uriUserRole = a})

-- | OAuth 2.0 token for the current user.
uriOAuthToken :: Lens' UserRolesInsert' (Maybe OAuthToken)
uriOAuthToken
  = lens _uriOAuthToken
      (\ s a -> s{_uriOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uriFields :: Lens' UserRolesInsert' (Maybe Text)
uriFields
  = lens _uriFields (\ s a -> s{_uriFields = a})

instance GoogleAuth UserRolesInsert' where
        authKey = uriKey . _Just
        authToken = uriOAuthToken . _Just

instance GoogleRequest UserRolesInsert' where
        type Rs UserRolesInsert' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesInsert'{..}
          = go _uriQuotaUser (Just _uriPrettyPrint) _uriUserIP
              _uriProfileId
              _uriKey
              _uriOAuthToken
              _uriFields
              (Just AltJSON)
              _uriUserRole
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolesInsertResource)
                      r
                      u
