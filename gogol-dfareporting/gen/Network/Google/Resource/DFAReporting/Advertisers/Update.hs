{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersUpdate@.
module DFAReporting.Advertisers.Update
    (
    -- * REST Resource
      AdvertisersUpdateAPI

    -- * Creating a Request
    , advertisersUpdate
    , AdvertisersUpdate

    -- * Request Lenses
    , auuQuotaUser
    , auuPrettyPrint
    , auuUserIp
    , auuProfileId
    , auuKey
    , auuOauthToken
    , auuFields
    , auuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersUpdate@ which the
-- 'AdvertisersUpdate' request conforms to.
type AdvertisersUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :> Put '[JSON] Advertiser

-- | Updates an existing advertiser.
--
-- /See:/ 'advertisersUpdate' smart constructor.
data AdvertisersUpdate = AdvertisersUpdate
    { _auuQuotaUser   :: !(Maybe Text)
    , _auuPrettyPrint :: !Bool
    , _auuUserIp      :: !(Maybe Text)
    , _auuProfileId   :: !Int64
    , _auuKey         :: !(Maybe Text)
    , _auuOauthToken  :: !(Maybe Text)
    , _auuFields      :: !(Maybe Text)
    , _auuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auuQuotaUser'
--
-- * 'auuPrettyPrint'
--
-- * 'auuUserIp'
--
-- * 'auuProfileId'
--
-- * 'auuKey'
--
-- * 'auuOauthToken'
--
-- * 'auuFields'
--
-- * 'auuAlt'
advertisersUpdate
    :: Int64 -- ^ 'profileId'
    -> AdvertisersUpdate
advertisersUpdate pAuuProfileId_ =
    AdvertisersUpdate
    { _auuQuotaUser = Nothing
    , _auuPrettyPrint = True
    , _auuUserIp = Nothing
    , _auuProfileId = pAuuProfileId_
    , _auuKey = Nothing
    , _auuOauthToken = Nothing
    , _auuFields = Nothing
    , _auuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
auuQuotaUser :: Lens' AdvertisersUpdate' (Maybe Text)
auuQuotaUser
  = lens _auuQuotaUser (\ s a -> s{_auuQuotaUser = a})

-- | Returns response with indentations and line breaks.
auuPrettyPrint :: Lens' AdvertisersUpdate' Bool
auuPrettyPrint
  = lens _auuPrettyPrint
      (\ s a -> s{_auuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
auuUserIp :: Lens' AdvertisersUpdate' (Maybe Text)
auuUserIp
  = lens _auuUserIp (\ s a -> s{_auuUserIp = a})

-- | User profile ID associated with this request.
auuProfileId :: Lens' AdvertisersUpdate' Int64
auuProfileId
  = lens _auuProfileId (\ s a -> s{_auuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
auuKey :: Lens' AdvertisersUpdate' (Maybe Text)
auuKey = lens _auuKey (\ s a -> s{_auuKey = a})

-- | OAuth 2.0 token for the current user.
auuOauthToken :: Lens' AdvertisersUpdate' (Maybe Text)
auuOauthToken
  = lens _auuOauthToken
      (\ s a -> s{_auuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
auuFields :: Lens' AdvertisersUpdate' (Maybe Text)
auuFields
  = lens _auuFields (\ s a -> s{_auuFields = a})

-- | Data format for the response.
auuAlt :: Lens' AdvertisersUpdate' Text
auuAlt = lens _auuAlt (\ s a -> s{_auuAlt = a})

instance GoogleRequest AdvertisersUpdate' where
        type Rs AdvertisersUpdate' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersUpdate{..}
          = go _auuQuotaUser _auuPrettyPrint _auuUserIp
              _auuProfileId
              _auuKey
              _auuOauthToken
              _auuFields
              _auuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersUpdateAPI)
                      r
                      u
