{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersInsert@.
module DFAReporting.Advertisers.Insert
    (
    -- * REST Resource
      AdvertisersInsertAPI

    -- * Creating a Request
    , advertisersInsert
    , AdvertisersInsert

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiUserIp
    , aiProfileId
    , aiKey
    , aiOauthToken
    , aiFields
    , aiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersInsert@ which the
-- 'AdvertisersInsert' request conforms to.
type AdvertisersInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :> Post '[JSON] Advertiser

-- | Inserts a new advertiser.
--
-- /See:/ 'advertisersInsert' smart constructor.
data AdvertisersInsert = AdvertisersInsert
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiUserIp      :: !(Maybe Text)
    , _aiProfileId   :: !Int64
    , _aiKey         :: !(Maybe Text)
    , _aiOauthToken  :: !(Maybe Text)
    , _aiFields      :: !(Maybe Text)
    , _aiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIp'
--
-- * 'aiProfileId'
--
-- * 'aiKey'
--
-- * 'aiOauthToken'
--
-- * 'aiFields'
--
-- * 'aiAlt'
advertisersInsert
    :: Int64 -- ^ 'profileId'
    -> AdvertisersInsert
advertisersInsert pAiProfileId_ =
    AdvertisersInsert
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiUserIp = Nothing
    , _aiProfileId = pAiProfileId_
    , _aiKey = Nothing
    , _aiOauthToken = Nothing
    , _aiFields = Nothing
    , _aiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' AdvertisersInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' AdvertisersInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIp :: Lens' AdvertisersInsert' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | User profile ID associated with this request.
aiProfileId :: Lens' AdvertisersInsert' Int64
aiProfileId
  = lens _aiProfileId (\ s a -> s{_aiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AdvertisersInsert' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' AdvertisersInsert' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AdvertisersInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' AdvertisersInsert' Text
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest AdvertisersInsert' where
        type Rs AdvertisersInsert' = Advertiser
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertisersInsert{..}
          = go _aiQuotaUser _aiPrettyPrint _aiUserIp
              _aiProfileId
              _aiKey
              _aiOauthToken
              _aiFields
              _aiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertisersInsertAPI)
                      r
                      u
