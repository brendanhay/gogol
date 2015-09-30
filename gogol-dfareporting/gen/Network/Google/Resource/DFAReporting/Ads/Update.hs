{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Ads.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing ad.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsUpdate@.
module DFAReporting.Ads.Update
    (
    -- * REST Resource
      AdsUpdateAPI

    -- * Creating a Request
    , adsUpdate
    , AdsUpdate

    -- * Request Lenses
    , aaQuotaUser
    , aaPrettyPrint
    , aaUserIp
    , aaProfileId
    , aaKey
    , aaOauthToken
    , aaFields
    , aaAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsUpdate@ which the
-- 'AdsUpdate' request conforms to.
type AdsUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :> "ads" :> Put '[JSON] Ad

-- | Updates an existing ad.
--
-- /See:/ 'adsUpdate' smart constructor.
data AdsUpdate = AdsUpdate
    { _aaQuotaUser   :: !(Maybe Text)
    , _aaPrettyPrint :: !Bool
    , _aaUserIp      :: !(Maybe Text)
    , _aaProfileId   :: !Int64
    , _aaKey         :: !(Maybe Text)
    , _aaOauthToken  :: !(Maybe Text)
    , _aaFields      :: !(Maybe Text)
    , _aaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaQuotaUser'
--
-- * 'aaPrettyPrint'
--
-- * 'aaUserIp'
--
-- * 'aaProfileId'
--
-- * 'aaKey'
--
-- * 'aaOauthToken'
--
-- * 'aaFields'
--
-- * 'aaAlt'
adsUpdate
    :: Int64 -- ^ 'profileId'
    -> AdsUpdate
adsUpdate pAaProfileId_ =
    AdsUpdate
    { _aaQuotaUser = Nothing
    , _aaPrettyPrint = True
    , _aaUserIp = Nothing
    , _aaProfileId = pAaProfileId_
    , _aaKey = Nothing
    , _aaOauthToken = Nothing
    , _aaFields = Nothing
    , _aaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaQuotaUser :: Lens' AdsUpdate' (Maybe Text)
aaQuotaUser
  = lens _aaQuotaUser (\ s a -> s{_aaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaPrettyPrint :: Lens' AdsUpdate' Bool
aaPrettyPrint
  = lens _aaPrettyPrint
      (\ s a -> s{_aaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaUserIp :: Lens' AdsUpdate' (Maybe Text)
aaUserIp = lens _aaUserIp (\ s a -> s{_aaUserIp = a})

-- | User profile ID associated with this request.
aaProfileId :: Lens' AdsUpdate' Int64
aaProfileId
  = lens _aaProfileId (\ s a -> s{_aaProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaKey :: Lens' AdsUpdate' (Maybe Text)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

-- | OAuth 2.0 token for the current user.
aaOauthToken :: Lens' AdsUpdate' (Maybe Text)
aaOauthToken
  = lens _aaOauthToken (\ s a -> s{_aaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaFields :: Lens' AdsUpdate' (Maybe Text)
aaFields = lens _aaFields (\ s a -> s{_aaFields = a})

-- | Data format for the response.
aaAlt :: Lens' AdsUpdate' Text
aaAlt = lens _aaAlt (\ s a -> s{_aaAlt = a})

instance GoogleRequest AdsUpdate' where
        type Rs AdsUpdate' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsUpdate{..}
          = go _aaQuotaUser _aaPrettyPrint _aaUserIp
              _aaProfileId
              _aaKey
              _aaOauthToken
              _aaFields
              _aaAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AdsUpdateAPI) r u
