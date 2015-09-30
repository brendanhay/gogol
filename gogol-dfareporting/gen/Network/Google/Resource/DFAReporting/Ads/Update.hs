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
module Network.Google.Resource.DFAReporting.Ads.Update
    (
    -- * REST Resource
      AdsUpdateResource

    -- * Creating a Request
    , adsUpdate'
    , AdsUpdate'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIp
    , aProfileId
    , aKey
    , aOauthToken
    , aFields
    , aAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsUpdate@ which the
-- 'AdsUpdate'' request conforms to.
type AdsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Ad

-- | Updates an existing ad.
--
-- /See:/ 'adsUpdate'' smart constructor.
data AdsUpdate' = AdsUpdate'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIp      :: !(Maybe Text)
    , _aProfileId   :: !Int64
    , _aKey         :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aProfileId'
--
-- * 'aKey'
--
-- * 'aOauthToken'
--
-- * 'aFields'
--
-- * 'aAlt'
adsUpdate'
    :: Int64 -- ^ 'profileId'
    -> AdsUpdate'
adsUpdate' pAProfileId_ =
    AdsUpdate'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aProfileId = pAProfileId_
    , _aKey = Nothing
    , _aOauthToken = Nothing
    , _aFields = Nothing
    , _aAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AdsUpdate' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AdsUpdate' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AdsUpdate' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | User profile ID associated with this request.
aProfileId :: Lens' AdsUpdate' Int64
aProfileId
  = lens _aProfileId (\ s a -> s{_aProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AdsUpdate' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AdsUpdate' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AdsUpdate' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AdsUpdate' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AdsUpdate' where
        type Rs AdsUpdate' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsUpdate'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aUserIp
              _aProfileId
              _aKey
              _aOauthToken
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AdsUpdateResource)
                      r
                      u
