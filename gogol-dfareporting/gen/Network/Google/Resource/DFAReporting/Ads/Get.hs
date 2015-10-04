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
    , adsdUserIP
    , adsdProfileId
    , adsdKey
    , adsdId
    , adsdOAuthToken
    , adsdFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Ad

-- | Gets one ad by ID.
--
-- /See:/ 'adsGet'' smart constructor.
data AdsGet' = AdsGet'
    { _adsdQuotaUser   :: !(Maybe Text)
    , _adsdPrettyPrint :: !Bool
    , _adsdUserIP      :: !(Maybe Text)
    , _adsdProfileId   :: !Int64
    , _adsdKey         :: !(Maybe Key)
    , _adsdId          :: !Int64
    , _adsdOAuthToken  :: !(Maybe OAuthToken)
    , _adsdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsdQuotaUser'
--
-- * 'adsdPrettyPrint'
--
-- * 'adsdUserIP'
--
-- * 'adsdProfileId'
--
-- * 'adsdKey'
--
-- * 'adsdId'
--
-- * 'adsdOAuthToken'
--
-- * 'adsdFields'
adsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdsGet'
adsGet' pAdsdProfileId_ pAdsdId_ =
    AdsGet'
    { _adsdQuotaUser = Nothing
    , _adsdPrettyPrint = True
    , _adsdUserIP = Nothing
    , _adsdProfileId = pAdsdProfileId_
    , _adsdKey = Nothing
    , _adsdId = pAdsdId_
    , _adsdOAuthToken = Nothing
    , _adsdFields = Nothing
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
adsdUserIP :: Lens' AdsGet' (Maybe Text)
adsdUserIP
  = lens _adsdUserIP (\ s a -> s{_adsdUserIP = a})

-- | User profile ID associated with this request.
adsdProfileId :: Lens' AdsGet' Int64
adsdProfileId
  = lens _adsdProfileId
      (\ s a -> s{_adsdProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adsdKey :: Lens' AdsGet' (Maybe Key)
adsdKey = lens _adsdKey (\ s a -> s{_adsdKey = a})

-- | Ad ID.
adsdId :: Lens' AdsGet' Int64
adsdId = lens _adsdId (\ s a -> s{_adsdId = a})

-- | OAuth 2.0 token for the current user.
adsdOAuthToken :: Lens' AdsGet' (Maybe OAuthToken)
adsdOAuthToken
  = lens _adsdOAuthToken
      (\ s a -> s{_adsdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
adsdFields :: Lens' AdsGet' (Maybe Text)
adsdFields
  = lens _adsdFields (\ s a -> s{_adsdFields = a})

instance GoogleAuth AdsGet' where
        authKey = adsdKey . _Just
        authToken = adsdOAuthToken . _Just

instance GoogleRequest AdsGet' where
        type Rs AdsGet' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsGet'{..}
          = go _adsdProfileId _adsdId _adsdQuotaUser
              (Just _adsdPrettyPrint)
              _adsdUserIP
              _adsdFields
              _adsdKey
              _adsdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy AdsGetResource) r u
