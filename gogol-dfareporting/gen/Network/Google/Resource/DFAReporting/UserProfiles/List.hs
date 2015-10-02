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
-- Module      : Network.Google.Resource.DFAReporting.UserProfiles.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves list of user profiles for a user.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingUserProfilesList@.
module Network.Google.Resource.DFAReporting.UserProfiles.List
    (
    -- * REST Resource
      UserProfilesListResource

    -- * Creating a Request
    , userProfilesList'
    , UserProfilesList'

    -- * Request Lenses
    , uplQuotaUser
    , uplPrettyPrint
    , uplUserIP
    , uplKey
    , uplOAuthToken
    , uplFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingUserProfilesList@ which the
-- 'UserProfilesList'' request conforms to.
type UserProfilesListResource =
     "userprofiles" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] UserProfileList

-- | Retrieves list of user profiles for a user.
--
-- /See:/ 'userProfilesList'' smart constructor.
data UserProfilesList' = UserProfilesList'
    { _uplQuotaUser   :: !(Maybe Text)
    , _uplPrettyPrint :: !Bool
    , _uplUserIP      :: !(Maybe Text)
    , _uplKey         :: !(Maybe Key)
    , _uplOAuthToken  :: !(Maybe OAuthToken)
    , _uplFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProfilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uplQuotaUser'
--
-- * 'uplPrettyPrint'
--
-- * 'uplUserIP'
--
-- * 'uplKey'
--
-- * 'uplOAuthToken'
--
-- * 'uplFields'
userProfilesList'
    :: UserProfilesList'
userProfilesList' =
    UserProfilesList'
    { _uplQuotaUser = Nothing
    , _uplPrettyPrint = True
    , _uplUserIP = Nothing
    , _uplKey = Nothing
    , _uplOAuthToken = Nothing
    , _uplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uplQuotaUser :: Lens' UserProfilesList' (Maybe Text)
uplQuotaUser
  = lens _uplQuotaUser (\ s a -> s{_uplQuotaUser = a})

-- | Returns response with indentations and line breaks.
uplPrettyPrint :: Lens' UserProfilesList' Bool
uplPrettyPrint
  = lens _uplPrettyPrint
      (\ s a -> s{_uplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uplUserIP :: Lens' UserProfilesList' (Maybe Text)
uplUserIP
  = lens _uplUserIP (\ s a -> s{_uplUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uplKey :: Lens' UserProfilesList' (Maybe Key)
uplKey = lens _uplKey (\ s a -> s{_uplKey = a})

-- | OAuth 2.0 token for the current user.
uplOAuthToken :: Lens' UserProfilesList' (Maybe OAuthToken)
uplOAuthToken
  = lens _uplOAuthToken
      (\ s a -> s{_uplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uplFields :: Lens' UserProfilesList' (Maybe Text)
uplFields
  = lens _uplFields (\ s a -> s{_uplFields = a})

instance GoogleAuth UserProfilesList' where
        authKey = uplKey . _Just
        authToken = uplOAuthToken . _Just

instance GoogleRequest UserProfilesList' where
        type Rs UserProfilesList' = UserProfileList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u UserProfilesList'{..}
          = go _uplQuotaUser (Just _uplPrettyPrint) _uplUserIP
              _uplFields
              _uplKey
              _uplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UserProfilesListResource)
                      r
                      u
