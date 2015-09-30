{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Adunits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified ad unit in the specified ad client.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAdunitsGet@.
module AdSense.Adunits.Get
    (
    -- * REST Resource
      AdunitsGetAPI

    -- * Creating a Request
    , adunitsGet
    , AdunitsGet

    -- * Request Lenses
    , aggQuotaUser
    , aggPrettyPrint
    , aggUserIp
    , aggAdUnitId
    , aggAdClientId
    , aggKey
    , aggOauthToken
    , aggFields
    , aggAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAdunitsGet@ which the
-- 'AdunitsGet' request conforms to.
type AdunitsGetAPI =
     "adclients" :>
       Capture "adClientId" Text :>
         "adunits" :>
           Capture "adUnitId" Text :> Get '[JSON] AdUnit

-- | Gets the specified ad unit in the specified ad client.
--
-- /See:/ 'adunitsGet' smart constructor.
data AdunitsGet = AdunitsGet
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggPrettyPrint :: !Bool
    , _aggUserIp      :: !(Maybe Text)
    , _aggAdUnitId    :: !Text
    , _aggAdClientId  :: !Text
    , _aggKey         :: !(Maybe Text)
    , _aggOauthToken  :: !(Maybe Text)
    , _aggFields      :: !(Maybe Text)
    , _aggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdunitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggQuotaUser'
--
-- * 'aggPrettyPrint'
--
-- * 'aggUserIp'
--
-- * 'aggAdUnitId'
--
-- * 'aggAdClientId'
--
-- * 'aggKey'
--
-- * 'aggOauthToken'
--
-- * 'aggFields'
--
-- * 'aggAlt'
adunitsGet
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> AdunitsGet
adunitsGet pAggAdUnitId_ pAggAdClientId_ =
    AdunitsGet
    { _aggQuotaUser = Nothing
    , _aggPrettyPrint = True
    , _aggUserIp = Nothing
    , _aggAdUnitId = pAggAdUnitId_
    , _aggAdClientId = pAggAdClientId_
    , _aggKey = Nothing
    , _aggOauthToken = Nothing
    , _aggFields = Nothing
    , _aggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aggQuotaUser :: Lens' AdunitsGet' (Maybe Text)
aggQuotaUser
  = lens _aggQuotaUser (\ s a -> s{_aggQuotaUser = a})

-- | Returns response with indentations and line breaks.
aggPrettyPrint :: Lens' AdunitsGet' Bool
aggPrettyPrint
  = lens _aggPrettyPrint
      (\ s a -> s{_aggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aggUserIp :: Lens' AdunitsGet' (Maybe Text)
aggUserIp
  = lens _aggUserIp (\ s a -> s{_aggUserIp = a})

-- | Ad unit to retrieve.
aggAdUnitId :: Lens' AdunitsGet' Text
aggAdUnitId
  = lens _aggAdUnitId (\ s a -> s{_aggAdUnitId = a})

-- | Ad client for which to get the ad unit.
aggAdClientId :: Lens' AdunitsGet' Text
aggAdClientId
  = lens _aggAdClientId
      (\ s a -> s{_aggAdClientId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AdunitsGet' (Maybe Text)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | OAuth 2.0 token for the current user.
aggOauthToken :: Lens' AdunitsGet' (Maybe Text)
aggOauthToken
  = lens _aggOauthToken
      (\ s a -> s{_aggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AdunitsGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

-- | Data format for the response.
aggAlt :: Lens' AdunitsGet' Text
aggAlt = lens _aggAlt (\ s a -> s{_aggAlt = a})

instance GoogleRequest AdunitsGet' where
        type Rs AdunitsGet' = AdUnit
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AdunitsGet{..}
          = go _aggQuotaUser _aggPrettyPrint _aggUserIp
              _aggAdUnitId
              _aggAdClientId
              _aggKey
              _aggOauthToken
              _aggFields
              _aggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AdunitsGetAPI) r u
