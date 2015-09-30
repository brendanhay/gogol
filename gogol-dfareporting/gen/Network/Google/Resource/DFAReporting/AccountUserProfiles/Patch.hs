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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProfiles.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account user profile. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountUserProfilesPatch@.
module Network.Google.Resource.DFAReporting.AccountUserProfiles.Patch
    (
    -- * REST Resource
      AccountUserProfilesPatchResource

    -- * Creating a Request
    , accountUserProfilesPatch'
    , AccountUserProfilesPatch'

    -- * Request Lenses
    , auppQuotaUser
    , auppPrettyPrint
    , auppUserIp
    , auppProfileId
    , auppKey
    , auppId
    , auppOauthToken
    , auppFields
    , auppAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProfilesPatch@ which the
-- 'AccountUserProfilesPatch'' request conforms to.
type AccountUserProfilesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Patch '[JSON] AccountUserProfile

-- | Updates an existing account user profile. This method supports patch
-- semantics.
--
-- /See:/ 'accountUserProfilesPatch'' smart constructor.
data AccountUserProfilesPatch' = AccountUserProfilesPatch'
    { _auppQuotaUser   :: !(Maybe Text)
    , _auppPrettyPrint :: !Bool
    , _auppUserIp      :: !(Maybe Text)
    , _auppProfileId   :: !Int64
    , _auppKey         :: !(Maybe Text)
    , _auppId          :: !Int64
    , _auppOauthToken  :: !(Maybe Text)
    , _auppFields      :: !(Maybe Text)
    , _auppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auppQuotaUser'
--
-- * 'auppPrettyPrint'
--
-- * 'auppUserIp'
--
-- * 'auppProfileId'
--
-- * 'auppKey'
--
-- * 'auppId'
--
-- * 'auppOauthToken'
--
-- * 'auppFields'
--
-- * 'auppAlt'
accountUserProfilesPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountUserProfilesPatch'
accountUserProfilesPatch' pAuppProfileId_ pAuppId_ =
    AccountUserProfilesPatch'
    { _auppQuotaUser = Nothing
    , _auppPrettyPrint = True
    , _auppUserIp = Nothing
    , _auppProfileId = pAuppProfileId_
    , _auppKey = Nothing
    , _auppId = pAuppId_
    , _auppOauthToken = Nothing
    , _auppFields = Nothing
    , _auppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auppQuotaUser :: Lens' AccountUserProfilesPatch' (Maybe Text)
auppQuotaUser
  = lens _auppQuotaUser
      (\ s a -> s{_auppQuotaUser = a})

-- | Returns response with indentations and line breaks.
auppPrettyPrint :: Lens' AccountUserProfilesPatch' Bool
auppPrettyPrint
  = lens _auppPrettyPrint
      (\ s a -> s{_auppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auppUserIp :: Lens' AccountUserProfilesPatch' (Maybe Text)
auppUserIp
  = lens _auppUserIp (\ s a -> s{_auppUserIp = a})

-- | User profile ID associated with this request.
auppProfileId :: Lens' AccountUserProfilesPatch' Int64
auppProfileId
  = lens _auppProfileId
      (\ s a -> s{_auppProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auppKey :: Lens' AccountUserProfilesPatch' (Maybe Text)
auppKey = lens _auppKey (\ s a -> s{_auppKey = a})

-- | User profile ID.
auppId :: Lens' AccountUserProfilesPatch' Int64
auppId = lens _auppId (\ s a -> s{_auppId = a})

-- | OAuth 2.0 token for the current user.
auppOauthToken :: Lens' AccountUserProfilesPatch' (Maybe Text)
auppOauthToken
  = lens _auppOauthToken
      (\ s a -> s{_auppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auppFields :: Lens' AccountUserProfilesPatch' (Maybe Text)
auppFields
  = lens _auppFields (\ s a -> s{_auppFields = a})

-- | Data format for the response.
auppAlt :: Lens' AccountUserProfilesPatch' Alt
auppAlt = lens _auppAlt (\ s a -> s{_auppAlt = a})

instance GoogleRequest AccountUserProfilesPatch'
         where
        type Rs AccountUserProfilesPatch' =
             AccountUserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesPatch'{..}
          = go _auppQuotaUser (Just _auppPrettyPrint)
              _auppUserIp
              _auppProfileId
              _auppKey
              (Just _auppId)
              _auppOauthToken
              _auppFields
              (Just _auppAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesPatchResource)
                      r
                      u
