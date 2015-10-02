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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProfiles.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one account user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProfilesGet@.
module Network.Google.Resource.DFAReporting.AccountUserProfiles.Get
    (
    -- * REST Resource
      AccountUserProfilesGetResource

    -- * Creating a Request
    , accountUserProfilesGet'
    , AccountUserProfilesGet'

    -- * Request Lenses
    , aupgQuotaUser
    , aupgPrettyPrint
    , aupgUserIP
    , aupgProfileId
    , aupgKey
    , aupgId
    , aupgOAuthToken
    , aupgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProfilesGet@ which the
-- 'AccountUserProfilesGet'' request conforms to.
type AccountUserProfilesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountUserProfile

-- | Gets one account user profile by ID.
--
-- /See:/ 'accountUserProfilesGet'' smart constructor.
data AccountUserProfilesGet' = AccountUserProfilesGet'
    { _aupgQuotaUser   :: !(Maybe Text)
    , _aupgPrettyPrint :: !Bool
    , _aupgUserIP      :: !(Maybe Text)
    , _aupgProfileId   :: !Int64
    , _aupgKey         :: !(Maybe Key)
    , _aupgId          :: !Int64
    , _aupgOAuthToken  :: !(Maybe OAuthToken)
    , _aupgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupgQuotaUser'
--
-- * 'aupgPrettyPrint'
--
-- * 'aupgUserIP'
--
-- * 'aupgProfileId'
--
-- * 'aupgKey'
--
-- * 'aupgId'
--
-- * 'aupgOAuthToken'
--
-- * 'aupgFields'
accountUserProfilesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountUserProfilesGet'
accountUserProfilesGet' pAupgProfileId_ pAupgId_ =
    AccountUserProfilesGet'
    { _aupgQuotaUser = Nothing
    , _aupgPrettyPrint = True
    , _aupgUserIP = Nothing
    , _aupgProfileId = pAupgProfileId_
    , _aupgKey = Nothing
    , _aupgId = pAupgId_
    , _aupgOAuthToken = Nothing
    , _aupgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aupgQuotaUser :: Lens' AccountUserProfilesGet' (Maybe Text)
aupgQuotaUser
  = lens _aupgQuotaUser
      (\ s a -> s{_aupgQuotaUser = a})

-- | Returns response with indentations and line breaks.
aupgPrettyPrint :: Lens' AccountUserProfilesGet' Bool
aupgPrettyPrint
  = lens _aupgPrettyPrint
      (\ s a -> s{_aupgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aupgUserIP :: Lens' AccountUserProfilesGet' (Maybe Text)
aupgUserIP
  = lens _aupgUserIP (\ s a -> s{_aupgUserIP = a})

-- | User profile ID associated with this request.
aupgProfileId :: Lens' AccountUserProfilesGet' Int64
aupgProfileId
  = lens _aupgProfileId
      (\ s a -> s{_aupgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupgKey :: Lens' AccountUserProfilesGet' (Maybe Key)
aupgKey = lens _aupgKey (\ s a -> s{_aupgKey = a})

-- | User profile ID.
aupgId :: Lens' AccountUserProfilesGet' Int64
aupgId = lens _aupgId (\ s a -> s{_aupgId = a})

-- | OAuth 2.0 token for the current user.
aupgOAuthToken :: Lens' AccountUserProfilesGet' (Maybe OAuthToken)
aupgOAuthToken
  = lens _aupgOAuthToken
      (\ s a -> s{_aupgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupgFields :: Lens' AccountUserProfilesGet' (Maybe Text)
aupgFields
  = lens _aupgFields (\ s a -> s{_aupgFields = a})

instance GoogleAuth AccountUserProfilesGet' where
        authKey = aupgKey . _Just
        authToken = aupgOAuthToken . _Just

instance GoogleRequest AccountUserProfilesGet' where
        type Rs AccountUserProfilesGet' = AccountUserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesGet'{..}
          = go _aupgProfileId _aupgId _aupgQuotaUser
              (Just _aupgPrettyPrint)
              _aupgUserIP
              _aupgFields
              _aupgKey
              _aupgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesGetResource)
                      r
                      u
