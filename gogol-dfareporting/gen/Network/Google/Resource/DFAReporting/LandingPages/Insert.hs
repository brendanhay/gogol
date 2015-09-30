{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new landing page for the specified campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesInsert@.
module DFAReporting.LandingPages.Insert
    (
    -- * REST Resource
      LandingPagesInsertAPI

    -- * Creating a Request
    , landingPagesInsert
    , LandingPagesInsert

    -- * Request Lenses
    , lpiQuotaUser
    , lpiPrettyPrint
    , lpiUserIp
    , lpiCampaignId
    , lpiProfileId
    , lpiKey
    , lpiOauthToken
    , lpiFields
    , lpiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesInsert@ which the
-- 'LandingPagesInsert' request conforms to.
type LandingPagesInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :> Post '[JSON] LandingPage

-- | Inserts a new landing page for the specified campaign.
--
-- /See:/ 'landingPagesInsert' smart constructor.
data LandingPagesInsert = LandingPagesInsert
    { _lpiQuotaUser   :: !(Maybe Text)
    , _lpiPrettyPrint :: !Bool
    , _lpiUserIp      :: !(Maybe Text)
    , _lpiCampaignId  :: !Int64
    , _lpiProfileId   :: !Int64
    , _lpiKey         :: !(Maybe Text)
    , _lpiOauthToken  :: !(Maybe Text)
    , _lpiFields      :: !(Maybe Text)
    , _lpiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpiQuotaUser'
--
-- * 'lpiPrettyPrint'
--
-- * 'lpiUserIp'
--
-- * 'lpiCampaignId'
--
-- * 'lpiProfileId'
--
-- * 'lpiKey'
--
-- * 'lpiOauthToken'
--
-- * 'lpiFields'
--
-- * 'lpiAlt'
landingPagesInsert
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPagesInsert
landingPagesInsert pLpiCampaignId_ pLpiProfileId_ =
    LandingPagesInsert
    { _lpiQuotaUser = Nothing
    , _lpiPrettyPrint = True
    , _lpiUserIp = Nothing
    , _lpiCampaignId = pLpiCampaignId_
    , _lpiProfileId = pLpiProfileId_
    , _lpiKey = Nothing
    , _lpiOauthToken = Nothing
    , _lpiFields = Nothing
    , _lpiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpiQuotaUser :: Lens' LandingPagesInsert' (Maybe Text)
lpiQuotaUser
  = lens _lpiQuotaUser (\ s a -> s{_lpiQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpiPrettyPrint :: Lens' LandingPagesInsert' Bool
lpiPrettyPrint
  = lens _lpiPrettyPrint
      (\ s a -> s{_lpiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpiUserIp :: Lens' LandingPagesInsert' (Maybe Text)
lpiUserIp
  = lens _lpiUserIp (\ s a -> s{_lpiUserIp = a})

-- | Landing page campaign ID.
lpiCampaignId :: Lens' LandingPagesInsert' Int64
lpiCampaignId
  = lens _lpiCampaignId
      (\ s a -> s{_lpiCampaignId = a})

-- | User profile ID associated with this request.
lpiProfileId :: Lens' LandingPagesInsert' Int64
lpiProfileId
  = lens _lpiProfileId (\ s a -> s{_lpiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpiKey :: Lens' LandingPagesInsert' (Maybe Text)
lpiKey = lens _lpiKey (\ s a -> s{_lpiKey = a})

-- | OAuth 2.0 token for the current user.
lpiOauthToken :: Lens' LandingPagesInsert' (Maybe Text)
lpiOauthToken
  = lens _lpiOauthToken
      (\ s a -> s{_lpiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpiFields :: Lens' LandingPagesInsert' (Maybe Text)
lpiFields
  = lens _lpiFields (\ s a -> s{_lpiFields = a})

-- | Data format for the response.
lpiAlt :: Lens' LandingPagesInsert' Text
lpiAlt = lens _lpiAlt (\ s a -> s{_lpiAlt = a})

instance GoogleRequest LandingPagesInsert' where
        type Rs LandingPagesInsert' = LandingPage
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesInsert{..}
          = go _lpiQuotaUser _lpiPrettyPrint _lpiUserIp
              _lpiCampaignId
              _lpiProfileId
              _lpiKey
              _lpiOauthToken
              _lpiFields
              _lpiAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LandingPagesInsertAPI)
                      r
                      u
