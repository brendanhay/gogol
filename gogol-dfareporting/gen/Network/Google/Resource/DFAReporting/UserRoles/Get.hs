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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one user role by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesGet@.
module Network.Google.Resource.DFAReporting.UserRoles.Get
    (
    -- * REST Resource
      UserRolesGetResource

    -- * Creating a Request
    , userRolesGet'
    , UserRolesGet'

    -- * Request Lenses
    , urgQuotaUser
    , urgPrettyPrint
    , urgUserIP
    , urgProfileId
    , urgKey
    , urgId
    , urgOAuthToken
    , urgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesGet@ which the
-- 'UserRolesGet'' request conforms to.
type UserRolesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] UserRole

-- | Gets one user role by ID.
--
-- /See:/ 'userRolesGet'' smart constructor.
data UserRolesGet' = UserRolesGet'
    { _urgQuotaUser   :: !(Maybe Text)
    , _urgPrettyPrint :: !Bool
    , _urgUserIP      :: !(Maybe Text)
    , _urgProfileId   :: !Int64
    , _urgKey         :: !(Maybe Key)
    , _urgId          :: !Int64
    , _urgOAuthToken  :: !(Maybe OAuthToken)
    , _urgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urgQuotaUser'
--
-- * 'urgPrettyPrint'
--
-- * 'urgUserIP'
--
-- * 'urgProfileId'
--
-- * 'urgKey'
--
-- * 'urgId'
--
-- * 'urgOAuthToken'
--
-- * 'urgFields'
userRolesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolesGet'
userRolesGet' pUrgProfileId_ pUrgId_ =
    UserRolesGet'
    { _urgQuotaUser = Nothing
    , _urgPrettyPrint = True
    , _urgUserIP = Nothing
    , _urgProfileId = pUrgProfileId_
    , _urgKey = Nothing
    , _urgId = pUrgId_
    , _urgOAuthToken = Nothing
    , _urgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urgQuotaUser :: Lens' UserRolesGet' (Maybe Text)
urgQuotaUser
  = lens _urgQuotaUser (\ s a -> s{_urgQuotaUser = a})

-- | Returns response with indentations and line breaks.
urgPrettyPrint :: Lens' UserRolesGet' Bool
urgPrettyPrint
  = lens _urgPrettyPrint
      (\ s a -> s{_urgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urgUserIP :: Lens' UserRolesGet' (Maybe Text)
urgUserIP
  = lens _urgUserIP (\ s a -> s{_urgUserIP = a})

-- | User profile ID associated with this request.
urgProfileId :: Lens' UserRolesGet' Int64
urgProfileId
  = lens _urgProfileId (\ s a -> s{_urgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urgKey :: Lens' UserRolesGet' (Maybe Key)
urgKey = lens _urgKey (\ s a -> s{_urgKey = a})

-- | User role ID.
urgId :: Lens' UserRolesGet' Int64
urgId = lens _urgId (\ s a -> s{_urgId = a})

-- | OAuth 2.0 token for the current user.
urgOAuthToken :: Lens' UserRolesGet' (Maybe OAuthToken)
urgOAuthToken
  = lens _urgOAuthToken
      (\ s a -> s{_urgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urgFields :: Lens' UserRolesGet' (Maybe Text)
urgFields
  = lens _urgFields (\ s a -> s{_urgFields = a})

instance GoogleAuth UserRolesGet' where
        authKey = urgKey . _Just
        authToken = urgOAuthToken . _Just

instance GoogleRequest UserRolesGet' where
        type Rs UserRolesGet' = UserRole
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesGet'{..}
          = go _urgProfileId _urgId _urgQuotaUser
              (Just _urgPrettyPrint)
              _urgUserIP
              _urgFields
              _urgKey
              _urgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolesGetResource)
                      r
                      u
