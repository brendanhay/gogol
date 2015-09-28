{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Ads.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.ads.patch@.
module Network.Google.API.DFAReporting.Ads.Patch
    (
    -- * REST Resource
      AdsPatchAPI

    -- * Creating a Request
    , adsPatch'
    , AdsPatch'

    -- * Request Lenses
    , apQuotaUser
    , apPrettyPrint
    , apUserIp
    , apProfileId
    , apKey
    , apId
    , apOauthToken
    , apFields
    , apAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.ads.patch which the
-- 'AdsPatch'' request conforms to.
type AdsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Ad

-- | Updates an existing ad. This method supports patch semantics.
--
-- /See:/ 'adsPatch'' smart constructor.
data AdsPatch' = AdsPatch'
    { _apQuotaUser   :: !(Maybe Text)
    , _apPrettyPrint :: !Bool
    , _apUserIp      :: !(Maybe Text)
    , _apProfileId   :: !Int64
    , _apKey         :: !(Maybe Text)
    , _apId          :: !Int64
    , _apOauthToken  :: !(Maybe Text)
    , _apFields      :: !(Maybe Text)
    , _apAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apQuotaUser'
--
-- * 'apPrettyPrint'
--
-- * 'apUserIp'
--
-- * 'apProfileId'
--
-- * 'apKey'
--
-- * 'apId'
--
-- * 'apOauthToken'
--
-- * 'apFields'
--
-- * 'apAlt'
adsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdsPatch'
adsPatch' pApProfileId_ pApId_ =
    AdsPatch'
    { _apQuotaUser = Nothing
    , _apPrettyPrint = True
    , _apUserIp = Nothing
    , _apProfileId = pApProfileId_
    , _apKey = Nothing
    , _apId = pApId_
    , _apOauthToken = Nothing
    , _apFields = Nothing
    , _apAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apQuotaUser :: Lens' AdsPatch' (Maybe Text)
apQuotaUser
  = lens _apQuotaUser (\ s a -> s{_apQuotaUser = a})

-- | Returns response with indentations and line breaks.
apPrettyPrint :: Lens' AdsPatch' Bool
apPrettyPrint
  = lens _apPrettyPrint
      (\ s a -> s{_apPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apUserIp :: Lens' AdsPatch' (Maybe Text)
apUserIp = lens _apUserIp (\ s a -> s{_apUserIp = a})

-- | User profile ID associated with this request.
apProfileId :: Lens' AdsPatch' Int64
apProfileId
  = lens _apProfileId (\ s a -> s{_apProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apKey :: Lens' AdsPatch' (Maybe Text)
apKey = lens _apKey (\ s a -> s{_apKey = a})

-- | Ad ID.
apId :: Lens' AdsPatch' Int64
apId = lens _apId (\ s a -> s{_apId = a})

-- | OAuth 2.0 token for the current user.
apOauthToken :: Lens' AdsPatch' (Maybe Text)
apOauthToken
  = lens _apOauthToken (\ s a -> s{_apOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
apFields :: Lens' AdsPatch' (Maybe Text)
apFields = lens _apFields (\ s a -> s{_apFields = a})

-- | Data format for the response.
apAlt :: Lens' AdsPatch' Alt
apAlt = lens _apAlt (\ s a -> s{_apAlt = a})

instance GoogleRequest AdsPatch' where
        type Rs AdsPatch' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsPatch'{..}
          = go _apQuotaUser (Just _apPrettyPrint) _apUserIp
              _apProfileId
              _apKey
              (Just _apId)
              _apOauthToken
              _apFields
              (Just _apAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AdsPatchAPI) r u
