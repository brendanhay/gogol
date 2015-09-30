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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one ad by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsGet@.
module Network.Google.Resource.DFAReporting.Ads.Get
    (
    -- * REST Resource
      AdsGetResource

    -- * Creating a Request
    , adsGet'
    , AdsGet'

    -- * Request Lenses
    , adsdQuotaUser
    , adsdPrettyPrint
    , adsdUserIp
    , adsdProfileId
    , adsdKey
    , adsdId
    , adsdOauthToken
    , adsdFields
    , adsdAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsGet@ which the
-- 'AdsGet'' request conforms to.
type AdsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Ad

-- | Gets one ad by ID.
--
-- /See:/ 'adsGet'' smart constructor.
data AdsGet' = AdsGet'
    { _adsdQuotaUser   :: !(Maybe Text)
    , _adsdPrettyPrint :: !Bool
    , _adsdUserIp      :: !(Maybe Text)
    , _adsdProfileId   :: !Int64
    , _adsdKey         :: !(Maybe Text)
    , _adsdId          :: !Int64
    , _adsdOauthToken  :: !(Maybe Text)
    , _adsdFields      :: !(Maybe Text)
    , _adsdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsdQuotaUser'
--
-- * 'adsdPrettyPrint'
--
-- * 'adsdUserIp'
--
-- * 'adsdProfileId'
--
-- * 'adsdKey'
--
-- * 'adsdId'
--
-- * 'adsdOauthToken'
--
-- * 'adsdFields'
--
-- * 'adsdAlt'
adsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdsGet'
adsGet' pAdsdProfileId_ pAdsdId_ =
    AdsGet'
    { _adsdQuotaUser = Nothing
    , _adsdPrettyPrint = True
    , _adsdUserIp = Nothing
    , _adsdProfileId = pAdsdProfileId_
    , _adsdKey = Nothing
    , _adsdId = pAdsdId_
    , _adsdOauthToken = Nothing
    , _adsdFields = Nothing
    , _adsdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adsdQuotaUser :: Lens' AdsGet' (Maybe Text)
adsdQuotaUser
  = lens _adsdQuotaUser
      (\ s a -> s{_adsdQuotaUser = a})

-- | Returns response with indentations and line breaks.
adsdPrettyPrint :: Lens' AdsGet' Bool
adsdPrettyPrint
  = lens _adsdPrettyPrint
      (\ s a -> s{_adsdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adsdUserIp :: Lens' AdsGet' (Maybe Text)
adsdUserIp
  = lens _adsdUserIp (\ s a -> s{_adsdUserIp = a})

-- | User profile ID associated with this request.
adsdProfileId :: Lens' AdsGet' Int64
adsdProfileId
  = lens _adsdProfileId
      (\ s a -> s{_adsdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adsdKey :: Lens' AdsGet' (Maybe Text)
adsdKey = lens _adsdKey (\ s a -> s{_adsdKey = a})

-- | Ad ID.
adsdId :: Lens' AdsGet' Int64
adsdId = lens _adsdId (\ s a -> s{_adsdId = a})

-- | OAuth 2.0 token for the current user.
adsdOauthToken :: Lens' AdsGet' (Maybe Text)
adsdOauthToken
  = lens _adsdOauthToken
      (\ s a -> s{_adsdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
adsdFields :: Lens' AdsGet' (Maybe Text)
adsdFields
  = lens _adsdFields (\ s a -> s{_adsdFields = a})

-- | Data format for the response.
adsdAlt :: Lens' AdsGet' Alt
adsdAlt = lens _adsdAlt (\ s a -> s{_adsdAlt = a})

instance GoogleRequest AdsGet' where
        type Rs AdsGet' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsGet'{..}
          = go _adsdQuotaUser (Just _adsdPrettyPrint)
              _adsdUserIp
              _adsdProfileId
              _adsdKey
              _adsdId
              _adsdOauthToken
              _adsdFields
              (Just _adsdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AdsGetResource) r u
