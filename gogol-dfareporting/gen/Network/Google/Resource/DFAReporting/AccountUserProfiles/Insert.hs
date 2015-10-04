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
    , aupiUserIP
    , aupiProfileId
    , aupiPayload
    , aupiKey
    , aupiOAuthToken
    , aupiFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccountUserProfile :>
                           Post '[JSON] AccountUserProfile

-- | Inserts a new account user profile.
--
-- /See:/ 'accountUserProfilesInsert'' smart constructor.
data AccountUserProfilesInsert' = AccountUserProfilesInsert'
    { _aupiQuotaUser   :: !(Maybe Text)
    , _aupiPrettyPrint :: !Bool
    , _aupiUserIP      :: !(Maybe Text)
    , _aupiProfileId   :: !Int64
    , _aupiPayload     :: !AccountUserProfile
    , _aupiKey         :: !(Maybe Key)
    , _aupiOAuthToken  :: !(Maybe OAuthToken)
    , _aupiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUserProfilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupiQuotaUser'
--
-- * 'aupiPrettyPrint'
--
-- * 'aupiUserIP'
--
-- * 'aupiProfileId'
--
-- * 'aupiPayload'
--
-- * 'aupiKey'
--
-- * 'aupiOAuthToken'
--
-- * 'aupiFields'
accountUserProfilesInsert'
    :: Int64 -- ^ 'profileId'
    -> AccountUserProfile -- ^ 'payload'
    -> AccountUserProfilesInsert'
accountUserProfilesInsert' pAupiProfileId_ pAupiPayload_ =
    AccountUserProfilesInsert'
    { _aupiQuotaUser = Nothing
    , _aupiPrettyPrint = True
    , _aupiUserIP = Nothing
    , _aupiProfileId = pAupiProfileId_
    , _aupiPayload = pAupiPayload_
    , _aupiKey = Nothing
    , _aupiOAuthToken = Nothing
    , _aupiFields = Nothing
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
aupiUserIP :: Lens' AccountUserProfilesInsert' (Maybe Text)
aupiUserIP
  = lens _aupiUserIP (\ s a -> s{_aupiUserIP = a})

-- | User profile ID associated with this request.
aupiProfileId :: Lens' AccountUserProfilesInsert' Int64
aupiProfileId
  = lens _aupiProfileId
      (\ s a -> s{_aupiProfileId = a})

-- | Multipart request metadata.
aupiPayload :: Lens' AccountUserProfilesInsert' AccountUserProfile
aupiPayload
  = lens _aupiPayload (\ s a -> s{_aupiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aupiKey :: Lens' AccountUserProfilesInsert' (Maybe Key)
aupiKey = lens _aupiKey (\ s a -> s{_aupiKey = a})

-- | OAuth 2.0 token for the current user.
aupiOAuthToken :: Lens' AccountUserProfilesInsert' (Maybe OAuthToken)
aupiOAuthToken
  = lens _aupiOAuthToken
      (\ s a -> s{_aupiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aupiFields :: Lens' AccountUserProfilesInsert' (Maybe Text)
aupiFields
  = lens _aupiFields (\ s a -> s{_aupiFields = a})

instance GoogleAuth AccountUserProfilesInsert' where
        authKey = aupiKey . _Just
        authToken = aupiOAuthToken . _Just

instance GoogleRequest AccountUserProfilesInsert'
         where
        type Rs AccountUserProfilesInsert' =
             AccountUserProfile
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountUserProfilesInsert'{..}
          = go _aupiProfileId _aupiQuotaUser
              (Just _aupiPrettyPrint)
              _aupiUserIP
              _aupiFields
              _aupiKey
              _aupiOAuthToken
              (Just AltJSON)
              _aupiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountUserProfilesInsertResource)
                      r
                      u
