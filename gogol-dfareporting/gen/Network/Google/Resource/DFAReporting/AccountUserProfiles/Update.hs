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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProfiles.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProfilesUpdate@.
module Network.Google.Resource.DFAReporting.AccountUserProfiles.Update
    (
    -- * REST Resource
      AccountUserProfilesUpdateResource

    -- * Creating a Request
    , accountUserProfilesUpdate'
    , AccountUserProfilesUpdate'

    -- * Request Lenses
    , aupuQuotaUser
    , aupuPrettyPrint
    , aupuUserIP
    , aupuAccountUserProfile
    , aupuProfileId
    , aupuKey
    , aupuOAuthToken
    , aupuFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProfilesUpdate@ which the
-- 'AccountUserProfilesUpdate'' request conforms to.
type AccountUserProfilesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccountUserProfile :>
                           Put '[JSON] AccountUserProfile

-- | Updates an existing account user profile.
--
-- /See:/ 'accountUserProfilesUpdate'' smart constructor.
data AccountUserProfilesUpdate' = AccountUserProfilesUpdate'
    { _aupuQuotaUser          :: !(Maybe Text)
    , _aupuPrettyPrint        :: !Bool
    , _aupuUserIP             :: !(Maybe Text)
    , _aupuAccountUserProfile :: !AccountUserProfile
    , _aupuProfileId          :: !Int64
    , _aupuKey                :: !(Maybe Key)
    , _aupuOAuthToken         :: !(Maybe OAuthToken)
    , _aupuFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupuQuotaUser'
--
-- * 'aupuPrettyPrint'
--
-- * 'aupuUserIP'
--
-- * 'aupuAccountUserProfile'
--
-- * 'aupuProfileId'
--
-- * 'aupuKey'
--
-- * 'aupuOAuthToken'
--
-- * 'aupuFields'
accountUserProfilesUpdate'
    :: AccountUserProfile -- ^ 'AccountUserProfile'
    -> Int64 -- ^ 'profileId'
    -> AccountUserProfilesUpdate'
accountUserProfilesUpdate' pAupuAccountUserProfile_ pAupuProfileId_ =
    AccountUserProfilesUpdate'
    { _aupuQuotaUser = Nothing
    , _aupuPrettyPrint = True
    , _aupuUserIP = Nothing
    , _aupuAccountUserProfile = pAupuAccountUserProfile_
    , _aupuProfileId = pAupuProfileId_
    , _aupuKey = Nothing
    , _aupuOAuthToken = Nothing
    , _aupuFields = Nothing
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
aupuUserIP :: Lens' AccountUserProfilesUpdate' (Maybe Text)
aupuUserIP
  = lens _aupuUserIP (\ s a -> s{_aupuUserIP = a})

-- | Multipart request metadata.
aupuAccountUserProfile :: Lens' AccountUserProfilesUpdate' AccountUserProfile
aupuAccountUserProfile
  = lens _aupuAccountUserProfile
      (\ s a -> s{_aupuAccountUserProfile = a})

-- | User profile ID associated with this request.
aupuProfileId :: Lens' AccountUserProfilesUpdate' Int64
aupuProfileId
  = lens _aupuProfileId
      (\ s a -> s{_aupuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupuKey :: Lens' AccountUserProfilesUpdate' (Maybe Key)
aupuKey = lens _aupuKey (\ s a -> s{_aupuKey = a})

-- | OAuth 2.0 token for the current user.
aupuOAuthToken :: Lens' AccountUserProfilesUpdate' (Maybe OAuthToken)
aupuOAuthToken
  = lens _aupuOAuthToken
      (\ s a -> s{_aupuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupuFields :: Lens' AccountUserProfilesUpdate' (Maybe Text)
aupuFields
  = lens _aupuFields (\ s a -> s{_aupuFields = a})

instance GoogleAuth AccountUserProfilesUpdate' where
        authKey = aupuKey . _Just
        authToken = aupuOAuthToken . _Just

instance GoogleRequest AccountUserProfilesUpdate'
         where
        type Rs AccountUserProfilesUpdate' =
             AccountUserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesUpdate'{..}
          = go _aupuQuotaUser (Just _aupuPrettyPrint)
              _aupuUserIP
              _aupuProfileId
              _aupuKey
              _aupuOAuthToken
              _aupuFields
              (Just AltJSON)
              _aupuAccountUserProfile
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesUpdateResource)
                      r
                      u
