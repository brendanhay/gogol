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
-- Module      : Network.Google.Resource.DFAReporting.UserRoles.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing user role.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserRolesDelete@.
module Network.Google.Resource.DFAReporting.UserRoles.Delete
    (
    -- * REST Resource
      UserRolesDeleteResource

    -- * Creating a Request
    , userRolesDelete'
    , UserRolesDelete'

    -- * Request Lenses
    , urdQuotaUser
    , urdPrettyPrint
    , urdUserIP
    , urdProfileId
    , urdKey
    , urdId
    , urdOAuthToken
    , urdFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserRolesDelete@ which the
-- 'UserRolesDelete'' request conforms to.
type UserRolesDeleteResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "userRoles" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing user role.
--
-- /See:/ 'userRolesDelete'' smart constructor.
data UserRolesDelete' = UserRolesDelete'
    { _urdQuotaUser   :: !(Maybe Text)
    , _urdPrettyPrint :: !Bool
    , _urdUserIP      :: !(Maybe Text)
    , _urdProfileId   :: !Int64
    , _urdKey         :: !(Maybe Key)
    , _urdId          :: !Int64
    , _urdOAuthToken  :: !(Maybe OAuthToken)
    , _urdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserRolesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urdQuotaUser'
--
-- * 'urdPrettyPrint'
--
-- * 'urdUserIP'
--
-- * 'urdProfileId'
--
-- * 'urdKey'
--
-- * 'urdId'
--
-- * 'urdOAuthToken'
--
-- * 'urdFields'
userRolesDelete'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> UserRolesDelete'
userRolesDelete' pUrdProfileId_ pUrdId_ =
    UserRolesDelete'
    { _urdQuotaUser = Nothing
    , _urdPrettyPrint = True
    , _urdUserIP = Nothing
    , _urdProfileId = pUrdProfileId_
    , _urdKey = Nothing
    , _urdId = pUrdId_
    , _urdOAuthToken = Nothing
    , _urdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
urdQuotaUser :: Lens' UserRolesDelete' (Maybe Text)
urdQuotaUser
  = lens _urdQuotaUser (\ s a -> s{_urdQuotaUser = a})

-- | Returns response with indentations and line breaks.
urdPrettyPrint :: Lens' UserRolesDelete' Bool
urdPrettyPrint
  = lens _urdPrettyPrint
      (\ s a -> s{_urdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
urdUserIP :: Lens' UserRolesDelete' (Maybe Text)
urdUserIP
  = lens _urdUserIP (\ s a -> s{_urdUserIP = a})

-- | User profile ID associated with this request.
urdProfileId :: Lens' UserRolesDelete' Int64
urdProfileId
  = lens _urdProfileId (\ s a -> s{_urdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
urdKey :: Lens' UserRolesDelete' (Maybe Key)
urdKey = lens _urdKey (\ s a -> s{_urdKey = a})

-- | User role ID.
urdId :: Lens' UserRolesDelete' Int64
urdId = lens _urdId (\ s a -> s{_urdId = a})

-- | OAuth 2.0 token for the current user.
urdOAuthToken :: Lens' UserRolesDelete' (Maybe OAuthToken)
urdOAuthToken
  = lens _urdOAuthToken
      (\ s a -> s{_urdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
urdFields :: Lens' UserRolesDelete' (Maybe Text)
urdFields
  = lens _urdFields (\ s a -> s{_urdFields = a})

instance GoogleAuth UserRolesDelete' where
        authKey = urdKey . _Just
        authToken = urdOAuthToken . _Just

instance GoogleRequest UserRolesDelete' where
        type Rs UserRolesDelete' = ()
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserRolesDelete'{..}
          = go _urdQuotaUser (Just _urdPrettyPrint) _urdUserIP
              _urdProfileId
              _urdKey
              _urdId
              _urdOAuthToken
              _urdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserRolesDeleteResource)
                      r
                      u
