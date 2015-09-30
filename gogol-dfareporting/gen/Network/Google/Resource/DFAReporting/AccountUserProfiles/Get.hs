{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.AccountUserProfiles.Get
    (
    -- * REST Resource
      AccountUserProfilesGetAPI

    -- * Creating a Request
    , accountUserProfilesGet
    , AccountUserProfilesGet

    -- * Request Lenses
    , aupgQuotaUser
    , aupgPrettyPrint
    , aupgUserIp
    , aupgProfileId
    , aupgKey
    , aupgId
    , aupgOauthToken
    , aupgFields
    , aupgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProfilesGet@ which the
-- 'AccountUserProfilesGet' request conforms to.
type AccountUserProfilesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           Capture "id" Int64 :> Get '[JSON] AccountUserProfile

-- | Gets one account user profile by ID.
--
-- /See:/ 'accountUserProfilesGet' smart constructor.
data AccountUserProfilesGet = AccountUserProfilesGet
    { _aupgQuotaUser   :: !(Maybe Text)
    , _aupgPrettyPrint :: !Bool
    , _aupgUserIp      :: !(Maybe Text)
    , _aupgProfileId   :: !Int64
    , _aupgKey         :: !(Maybe Text)
    , _aupgId          :: !Int64
    , _aupgOauthToken  :: !(Maybe Text)
    , _aupgFields      :: !(Maybe Text)
    , _aupgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupgQuotaUser'
--
-- * 'aupgPrettyPrint'
--
-- * 'aupgUserIp'
--
-- * 'aupgProfileId'
--
-- * 'aupgKey'
--
-- * 'aupgId'
--
-- * 'aupgOauthToken'
--
-- * 'aupgFields'
--
-- * 'aupgAlt'
accountUserProfilesGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountUserProfilesGet
accountUserProfilesGet pAupgProfileId_ pAupgId_ =
    AccountUserProfilesGet
    { _aupgQuotaUser = Nothing
    , _aupgPrettyPrint = True
    , _aupgUserIp = Nothing
    , _aupgProfileId = pAupgProfileId_
    , _aupgKey = Nothing
    , _aupgId = pAupgId_
    , _aupgOauthToken = Nothing
    , _aupgFields = Nothing
    , _aupgAlt = "json"
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
aupgUserIp :: Lens' AccountUserProfilesGet' (Maybe Text)
aupgUserIp
  = lens _aupgUserIp (\ s a -> s{_aupgUserIp = a})

-- | User profile ID associated with this request.
aupgProfileId :: Lens' AccountUserProfilesGet' Int64
aupgProfileId
  = lens _aupgProfileId
      (\ s a -> s{_aupgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupgKey :: Lens' AccountUserProfilesGet' (Maybe Text)
aupgKey = lens _aupgKey (\ s a -> s{_aupgKey = a})

-- | User profile ID.
aupgId :: Lens' AccountUserProfilesGet' Int64
aupgId = lens _aupgId (\ s a -> s{_aupgId = a})

-- | OAuth 2.0 token for the current user.
aupgOauthToken :: Lens' AccountUserProfilesGet' (Maybe Text)
aupgOauthToken
  = lens _aupgOauthToken
      (\ s a -> s{_aupgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupgFields :: Lens' AccountUserProfilesGet' (Maybe Text)
aupgFields
  = lens _aupgFields (\ s a -> s{_aupgFields = a})

-- | Data format for the response.
aupgAlt :: Lens' AccountUserProfilesGet' Text
aupgAlt = lens _aupgAlt (\ s a -> s{_aupgAlt = a})

instance GoogleRequest AccountUserProfilesGet' where
        type Rs AccountUserProfilesGet' = AccountUserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesGet{..}
          = go _aupgQuotaUser _aupgPrettyPrint _aupgUserIp
              _aupgProfileId
              _aupgKey
              _aupgId
              _aupgOauthToken
              _aupgFields
              _aupgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesGetAPI)
                      r
                      u
