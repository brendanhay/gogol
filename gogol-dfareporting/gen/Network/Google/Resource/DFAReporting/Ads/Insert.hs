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
module Network.Google.Resource.DFAReporting.Ads.Insert
    (
    -- * REST Resource
      AdsInsertResource

    -- * Creating a Request
    , adsInsert'
    , AdsInsert'

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

-- | A resource alias for @DfareportingAdsInsert@ which the
-- 'AdsInsert'' request conforms to.
type AdsInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Ad

-- | Inserts a new ad.
--
-- /See:/ 'adsInsert'' smart constructor.
data AdsInsert' = AdsInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiUserIp      :: !(Maybe Text)
    , _aiProfileId   :: !Int64
    , _aiKey         :: !(Maybe Text)
    , _aiOauthToken  :: !(Maybe Text)
    , _aiFields      :: !(Maybe Text)
    , _aiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsInsert'' with the minimum fields required to make a request.
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
adsInsert'
    :: Int64 -- ^ 'profileId'
    -> AdsInsert'
adsInsert' pAiProfileId_ =
    AdsInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiUserIp = Nothing
    , _aiProfileId = pAiProfileId_
    , _aiKey = Nothing
    , _aiOauthToken = Nothing
    , _aiFields = Nothing
    , _aiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' AdsInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' AdsInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIp :: Lens' AdsInsert' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | User profile ID associated with this request.
aiProfileId :: Lens' AdsInsert' Int64
aiProfileId
  = lens _aiProfileId (\ s a -> s{_aiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' AdsInsert' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' AdsInsert' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' AdsInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' AdsInsert' Alt
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest AdsInsert' where
        type Rs AdsInsert' = Ad
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdsInsert'{..}
          = go _aiQuotaUser (Just _aiPrettyPrint) _aiUserIp
              _aiProfileId
              _aiKey
              _aiOauthToken
              _aiFields
              (Just _aiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AdsInsertResource)
                      r
                      u
