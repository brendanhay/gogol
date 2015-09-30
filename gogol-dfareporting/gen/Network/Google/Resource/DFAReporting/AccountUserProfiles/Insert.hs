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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProfiles.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProfilesInsert@.
module Network.Google.Resource.DFAReporting.AccountUserProfiles.Insert
    (
    -- * REST Resource
      AccountUserProfilesInsertResource

    -- * Creating a Request
    , accountUserProfilesInsert'
    , AccountUserProfilesInsert'

    -- * Request Lenses
    , aupiQuotaUser
    , aupiPrettyPrint
    , aupiUserIp
    , aupiProfileId
    , aupiKey
    , aupiOauthToken
    , aupiFields
    , aupiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProfilesInsert@ which the
-- 'AccountUserProfilesInsert'' request conforms to.
type AccountUserProfilesInsertResource =
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
                         Post '[JSON] AccountUserProfile

-- | Inserts a new account user profile.
--
-- /See:/ 'accountUserProfilesInsert'' smart constructor.
data AccountUserProfilesInsert' = AccountUserProfilesInsert'
    { _aupiQuotaUser   :: !(Maybe Text)
    , _aupiPrettyPrint :: !Bool
    , _aupiUserIp      :: !(Maybe Text)
    , _aupiProfileId   :: !Int64
    , _aupiKey         :: !(Maybe Text)
    , _aupiOauthToken  :: !(Maybe Text)
    , _aupiFields      :: !(Maybe Text)
    , _aupiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupiQuotaUser'
--
-- * 'aupiPrettyPrint'
--
-- * 'aupiUserIp'
--
-- * 'aupiProfileId'
--
-- * 'aupiKey'
--
-- * 'aupiOauthToken'
--
-- * 'aupiFields'
--
-- * 'aupiAlt'
accountUserProfilesInsert'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProfilesInsert'
accountUserProfilesInsert' pAupiProfileId_ =
    AccountUserProfilesInsert'
    { _aupiQuotaUser = Nothing
    , _aupiPrettyPrint = True
    , _aupiUserIp = Nothing
    , _aupiProfileId = pAupiProfileId_
    , _aupiKey = Nothing
    , _aupiOauthToken = Nothing
    , _aupiFields = Nothing
    , _aupiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aupiQuotaUser :: Lens' AccountUserProfilesInsert' (Maybe Text)
aupiQuotaUser
  = lens _aupiQuotaUser
      (\ s a -> s{_aupiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aupiPrettyPrint :: Lens' AccountUserProfilesInsert' Bool
aupiPrettyPrint
  = lens _aupiPrettyPrint
      (\ s a -> s{_aupiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aupiUserIp :: Lens' AccountUserProfilesInsert' (Maybe Text)
aupiUserIp
  = lens _aupiUserIp (\ s a -> s{_aupiUserIp = a})

-- | User profile ID associated with this request.
aupiProfileId :: Lens' AccountUserProfilesInsert' Int64
aupiProfileId
  = lens _aupiProfileId
      (\ s a -> s{_aupiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupiKey :: Lens' AccountUserProfilesInsert' (Maybe Text)
aupiKey = lens _aupiKey (\ s a -> s{_aupiKey = a})

-- | OAuth 2.0 token for the current user.
aupiOauthToken :: Lens' AccountUserProfilesInsert' (Maybe Text)
aupiOauthToken
  = lens _aupiOauthToken
      (\ s a -> s{_aupiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupiFields :: Lens' AccountUserProfilesInsert' (Maybe Text)
aupiFields
  = lens _aupiFields (\ s a -> s{_aupiFields = a})

-- | Data format for the response.
aupiAlt :: Lens' AccountUserProfilesInsert' Alt
aupiAlt = lens _aupiAlt (\ s a -> s{_aupiAlt = a})

instance GoogleRequest AccountUserProfilesInsert'
         where
        type Rs AccountUserProfilesInsert' =
             AccountUserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesInsert'{..}
          = go _aupiQuotaUser (Just _aupiPrettyPrint)
              _aupiUserIp
              _aupiProfileId
              _aupiKey
              _aupiOauthToken
              _aupiFields
              (Just _aupiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesInsertResource)
                      r
                      u
