{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , auppUserIP
    , auppProfileId
    , auppPayload
    , auppKey
    , auppId
    , auppOAuthToken
    , auppFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountUserProfilesPatch@ which the
-- 'AccountUserProfilesPatch'' request conforms to.
type AccountUserProfilesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accountUserProfiles" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountUserProfile :>
                             Patch '[JSON] AccountUserProfile

-- | Updates an existing account user profile. This method supports patch
-- semantics.
--
-- /See:/ 'accountUserProfilesPatch'' smart constructor.
data AccountUserProfilesPatch' = AccountUserProfilesPatch'
    { _auppQuotaUser   :: !(Maybe Text)
    , _auppPrettyPrint :: !Bool
    , _auppUserIP      :: !(Maybe Text)
    , _auppProfileId   :: !Int64
    , _auppPayload     :: !AccountUserProfile
    , _auppKey         :: !(Maybe Key)
    , _auppId          :: !Int64
    , _auppOAuthToken  :: !(Maybe OAuthToken)
    , _auppFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auppQuotaUser'
--
-- * 'auppPrettyPrint'
--
-- * 'auppUserIP'
--
-- * 'auppProfileId'
--
-- * 'auppPayload'
--
-- * 'auppKey'
--
-- * 'auppId'
--
-- * 'auppOAuthToken'
--
-- * 'auppFields'
accountUserProfilesPatch'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProfile -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> AccountUserProfilesPatch'
accountUserProfilesPatch' pAuppProfileId_ pAuppPayload_ pAuppId_ =
    AccountUserProfilesPatch'
    { _auppQuotaUser = Nothing
    , _auppPrettyPrint = True
    , _auppUserIP = Nothing
    , _auppProfileId = pAuppProfileId_
    , _auppPayload = pAuppPayload_
    , _auppKey = Nothing
    , _auppId = pAuppId_
    , _auppOAuthToken = Nothing
    , _auppFields = Nothing
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
auppUserIP :: Lens' AccountUserProfilesPatch' (Maybe Text)
auppUserIP
  = lens _auppUserIP (\ s a -> s{_auppUserIP = a})

-- | User profile ID associated with this request.
auppProfileId :: Lens' AccountUserProfilesPatch' Int64
auppProfileId
  = lens _auppProfileId
      (\ s a -> s{_auppProfileId = a})

-- | Multipart request metadata.
auppPayload :: Lens' AccountUserProfilesPatch' AccountUserProfile
auppPayload
  = lens _auppPayload (\ s a -> s{_auppPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auppKey :: Lens' AccountUserProfilesPatch' (Maybe Key)
auppKey = lens _auppKey (\ s a -> s{_auppKey = a})

-- | User profile ID.
auppId :: Lens' AccountUserProfilesPatch' Int64
auppId = lens _auppId (\ s a -> s{_auppId = a})

-- | OAuth 2.0 token for the current user.
auppOAuthToken :: Lens' AccountUserProfilesPatch' (Maybe OAuthToken)
auppOAuthToken
  = lens _auppOAuthToken
      (\ s a -> s{_auppOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
auppFields :: Lens' AccountUserProfilesPatch' (Maybe Text)
auppFields
  = lens _auppFields (\ s a -> s{_auppFields = a})

instance GoogleAuth AccountUserProfilesPatch' where
        authKey = auppKey . _Just
        authToken = auppOAuthToken . _Just

instance GoogleRequest AccountUserProfilesPatch'
         where
        type Rs AccountUserProfilesPatch' =
             AccountUserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesPatch'{..}
          = go _auppProfileId (Just _auppId) _auppQuotaUser
              (Just _auppPrettyPrint)
              _auppUserIP
              _auppFields
              _auppKey
              _auppOAuthToken
              (Just AltJSON)
              _auppPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesPatchResource)
                      r
                      u
