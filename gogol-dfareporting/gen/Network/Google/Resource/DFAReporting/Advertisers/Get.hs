{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one advertiser by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersGet@.
module DFAReporting.Advertisers.Get
    (
    -- * REST Resource
      AdvertisersGetAPI

    -- * Creating a Request
    , advertisersGet
    , AdvertisersGet

    -- * Request Lenses
    , aggQuotaUser
    , aggPrettyPrint
    , aggUserIp
    , aggProfileId
    , aggKey
    , aggId
    , aggOauthToken
    , aggFields
    , aggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersGet@ which the
-- 'AdvertisersGet' request conforms to.
type AdvertisersGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           Capture "id" Int64 :> Get '[JSON] Advertiser

-- | Gets one advertiser by ID.
--
-- /See:/ 'advertisersGet' smart constructor.
data AdvertisersGet = AdvertisersGet
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggPrettyPrint :: !Bool
    , _aggUserIp      :: !(Maybe Text)
    , _aggProfileId   :: !Int64
    , _aggKey         :: !(Maybe Text)
    , _aggId          :: !Int64
    , _aggOauthToken  :: !(Maybe Text)
    , _aggFields      :: !(Maybe Text)
    , _aggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggQuotaUser'
--
-- * 'aggPrettyPrint'
--
-- * 'aggUserIp'
--
-- * 'aggProfileId'
--
-- * 'aggKey'
--
-- * 'aggId'
--
-- * 'aggOauthToken'
--
-- * 'aggFields'
--
-- * 'aggAlt'
advertisersGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertisersGet
advertisersGet pAggProfileId_ pAggId_ =
    AdvertisersGet
    { _aggQuotaUser = Nothing
    , _aggPrettyPrint = True
    , _aggUserIp = Nothing
    , _aggProfileId = pAggProfileId_
    , _aggKey = Nothing
    , _aggId = pAggId_
    , _aggOauthToken = Nothing
    , _aggFields = Nothing
    , _aggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aggQuotaUser :: Lens' AdvertisersGet' (Maybe Text)
aggQuotaUser
  = lens _aggQuotaUser (\ s a -> s{_aggQuotaUser = a})

-- | Returns response with indentations and line breaks.
aggPrettyPrint :: Lens' AdvertisersGet' Bool
aggPrettyPrint
  = lens _aggPrettyPrint
      (\ s a -> s{_aggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aggUserIp :: Lens' AdvertisersGet' (Maybe Text)
aggUserIp
  = lens _aggUserIp (\ s a -> s{_aggUserIp = a})

-- | User profile ID associated with this request.
aggProfileId :: Lens' AdvertisersGet' Int64
aggProfileId
  = lens _aggProfileId (\ s a -> s{_aggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AdvertisersGet' (Maybe Text)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | Advertiser ID.
aggId :: Lens' AdvertisersGet' Int64
aggId = lens _aggId (\ s a -> s{_aggId = a})

-- | OAuth 2.0 token for the current user.
aggOauthToken :: Lens' AdvertisersGet' (Maybe Text)
aggOauthToken
  = lens _aggOauthToken
      (\ s a -> s{_aggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AdvertisersGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

-- | Data format for the response.
aggAlt :: Lens' AdvertisersGet' Text
aggAlt = lens _aggAlt (\ s a -> s{_aggAlt = a})

instance GoogleRequest AdvertisersGet' where
        type Rs AdvertisersGet' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersGet{..}
          = go _aggQuotaUser _aggPrettyPrint _aggUserIp
              _aggProfileId
              _aggKey
              _aggId
              _aggOauthToken
              _aggFields
              _aggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AdvertisersGetAPI)
                      r
                      u
