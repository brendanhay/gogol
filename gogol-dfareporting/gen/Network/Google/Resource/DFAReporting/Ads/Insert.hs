{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Ads.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new ad.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsInsert@.
module DFAReporting.Ads.Insert
    (
    -- * REST Resource
      AdsInsertAPI

    -- * Creating a Request
    , adsInsert
    , AdsInsert

    -- * Request Lenses
    , adsQuotaUser
    , adsPrettyPrint
    , adsUserIp
    , adsProfileId
    , adsKey
    , adsOauthToken
    , adsFields
    , adsAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsInsert@ which the
-- 'AdsInsert' request conforms to.
type AdsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :> "ads" :> Post '[JSON] Ad

-- | Inserts a new ad.
--
-- /See:/ 'adsInsert' smart constructor.
data AdsInsert = AdsInsert
    { _adsQuotaUser   :: !(Maybe Text)
    , _adsPrettyPrint :: !Bool
    , _adsUserIp      :: !(Maybe Text)
    , _adsProfileId   :: !Int64
    , _adsKey         :: !(Maybe Text)
    , _adsOauthToken  :: !(Maybe Text)
    , _adsFields      :: !(Maybe Text)
    , _adsAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsQuotaUser'
--
-- * 'adsPrettyPrint'
--
-- * 'adsUserIp'
--
-- * 'adsProfileId'
--
-- * 'adsKey'
--
-- * 'adsOauthToken'
--
-- * 'adsFields'
--
-- * 'adsAlt'
adsInsert
    :: Int64 -- ^ 'profileId'
    -> AdsInsert
adsInsert pAdsProfileId_ =
    AdsInsert
    { _adsQuotaUser = Nothing
    , _adsPrettyPrint = True
    , _adsUserIp = Nothing
    , _adsProfileId = pAdsProfileId_
    , _adsKey = Nothing
    , _adsOauthToken = Nothing
    , _adsFields = Nothing
    , _adsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adsQuotaUser :: Lens' AdsInsert' (Maybe Text)
adsQuotaUser
  = lens _adsQuotaUser (\ s a -> s{_adsQuotaUser = a})

-- | Returns response with indentations and line breaks.
adsPrettyPrint :: Lens' AdsInsert' Bool
adsPrettyPrint
  = lens _adsPrettyPrint
      (\ s a -> s{_adsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adsUserIp :: Lens' AdsInsert' (Maybe Text)
adsUserIp
  = lens _adsUserIp (\ s a -> s{_adsUserIp = a})

-- | User profile ID associated with this request.
adsProfileId :: Lens' AdsInsert' Int64
adsProfileId
  = lens _adsProfileId (\ s a -> s{_adsProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adsKey :: Lens' AdsInsert' (Maybe Text)
adsKey = lens _adsKey (\ s a -> s{_adsKey = a})

-- | OAuth 2.0 token for the current user.
adsOauthToken :: Lens' AdsInsert' (Maybe Text)
adsOauthToken
  = lens _adsOauthToken
      (\ s a -> s{_adsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
adsFields :: Lens' AdsInsert' (Maybe Text)
adsFields
  = lens _adsFields (\ s a -> s{_adsFields = a})

-- | Data format for the response.
adsAlt :: Lens' AdsInsert' Text
adsAlt = lens _adsAlt (\ s a -> s{_adsAlt = a})

instance GoogleRequest AdsInsert' where
        type Rs AdsInsert' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsInsert{..}
          = go _adsQuotaUser _adsPrettyPrint _adsUserIp
              _adsProfileId
              _adsKey
              _adsOauthToken
              _adsFields
              _adsAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AdsInsertAPI) r u
