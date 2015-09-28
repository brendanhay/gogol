{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.AccountUserProfiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accountUserProfiles.update@.
module Network.Google.API.DFAReporting.AccountUserProfiles.Update
    (
    -- * REST Resource
      AccountUserProfilesUpdateAPI

    -- * Creating a Request
    , accountUserProfilesUpdate'
    , AccountUserProfilesUpdate'

    -- * Request Lenses
    , aupuQuotaUser
    , aupuPrettyPrint
    , aupuUserIp
    , aupuProfileId
    , aupuKey
    , aupuOauthToken
    , aupuFields
    , aupuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.accountUserProfiles.update which the
-- 'AccountUserProfilesUpdate'' request conforms to.
type AccountUserProfilesUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Put '[JSON] AccountUserProfile

-- | Updates an existing account user profile.
--
-- /See:/ 'accountUserProfilesUpdate'' smart constructor.
data AccountUserProfilesUpdate' = AccountUserProfilesUpdate'
    { _aupuQuotaUser   :: !(Maybe Text)
    , _aupuPrettyPrint :: !Bool
    , _aupuUserIp      :: !(Maybe Text)
    , _aupuProfileId   :: !Int64
    , _aupuKey         :: !(Maybe Text)
    , _aupuOauthToken  :: !(Maybe Text)
    , _aupuFields      :: !(Maybe Text)
    , _aupuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupuQuotaUser'
--
-- * 'aupuPrettyPrint'
--
-- * 'aupuUserIp'
--
-- * 'aupuProfileId'
--
-- * 'aupuKey'
--
-- * 'aupuOauthToken'
--
-- * 'aupuFields'
--
-- * 'aupuAlt'
accountUserProfilesUpdate'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProfilesUpdate'
accountUserProfilesUpdate' pAupuProfileId_ =
    AccountUserProfilesUpdate'
    { _aupuQuotaUser = Nothing
    , _aupuPrettyPrint = True
    , _aupuUserIp = Nothing
    , _aupuProfileId = pAupuProfileId_
    , _aupuKey = Nothing
    , _aupuOauthToken = Nothing
    , _aupuFields = Nothing
    , _aupuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aupuQuotaUser :: Lens' AccountUserProfilesUpdate' (Maybe Text)
aupuQuotaUser
  = lens _aupuQuotaUser
      (\ s a -> s{_aupuQuotaUser = a})

-- | Returns response with indentations and line breaks.
aupuPrettyPrint :: Lens' AccountUserProfilesUpdate' Bool
aupuPrettyPrint
  = lens _aupuPrettyPrint
      (\ s a -> s{_aupuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aupuUserIp :: Lens' AccountUserProfilesUpdate' (Maybe Text)
aupuUserIp
  = lens _aupuUserIp (\ s a -> s{_aupuUserIp = a})

-- | User profile ID associated with this request.
aupuProfileId :: Lens' AccountUserProfilesUpdate' Int64
aupuProfileId
  = lens _aupuProfileId
      (\ s a -> s{_aupuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupuKey :: Lens' AccountUserProfilesUpdate' (Maybe Text)
aupuKey = lens _aupuKey (\ s a -> s{_aupuKey = a})

-- | OAuth 2.0 token for the current user.
aupuOauthToken :: Lens' AccountUserProfilesUpdate' (Maybe Text)
aupuOauthToken
  = lens _aupuOauthToken
      (\ s a -> s{_aupuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupuFields :: Lens' AccountUserProfilesUpdate' (Maybe Text)
aupuFields
  = lens _aupuFields (\ s a -> s{_aupuFields = a})

-- | Data format for the response.
aupuAlt :: Lens' AccountUserProfilesUpdate' Alt
aupuAlt = lens _aupuAlt (\ s a -> s{_aupuAlt = a})

instance GoogleRequest AccountUserProfilesUpdate'
         where
        type Rs AccountUserProfilesUpdate' =
             AccountUserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesUpdate'{..}
          = go _aupuQuotaUser (Just _aupuPrettyPrint)
              _aupuUserIp
              _aupuProfileId
              _aupuKey
              _aupuOauthToken
              _aupuFields
              (Just _aupuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesUpdateAPI)
                      r
                      u
