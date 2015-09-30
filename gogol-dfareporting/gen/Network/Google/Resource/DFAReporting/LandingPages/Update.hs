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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing campaign landing page.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesUpdate@.
module Network.Google.Resource.DFAReporting.LandingPages.Update
    (
    -- * REST Resource
      LandingPagesUpdateResource

    -- * Creating a Request
    , landingPagesUpdate'
    , LandingPagesUpdate'

    -- * Request Lenses
    , lpuQuotaUser
    , lpuPrettyPrint
    , lpuUserIp
    , lpuCampaignId
    , lpuProfileId
    , lpuKey
    , lpuOauthToken
    , lpuFields
    , lpuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesUpdate@ which the
-- 'LandingPagesUpdate'' request conforms to.
type LandingPagesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Put '[JSON] LandingPage

-- | Updates an existing campaign landing page.
--
-- /See:/ 'landingPagesUpdate'' smart constructor.
data LandingPagesUpdate' = LandingPagesUpdate'
    { _lpuQuotaUser   :: !(Maybe Text)
    , _lpuPrettyPrint :: !Bool
    , _lpuUserIp      :: !(Maybe Text)
    , _lpuCampaignId  :: !Int64
    , _lpuProfileId   :: !Int64
    , _lpuKey         :: !(Maybe Text)
    , _lpuOauthToken  :: !(Maybe Text)
    , _lpuFields      :: !(Maybe Text)
    , _lpuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpuQuotaUser'
--
-- * 'lpuPrettyPrint'
--
-- * 'lpuUserIp'
--
-- * 'lpuCampaignId'
--
-- * 'lpuProfileId'
--
-- * 'lpuKey'
--
-- * 'lpuOauthToken'
--
-- * 'lpuFields'
--
-- * 'lpuAlt'
landingPagesUpdate'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPagesUpdate'
landingPagesUpdate' pLpuCampaignId_ pLpuProfileId_ =
    LandingPagesUpdate'
    { _lpuQuotaUser = Nothing
    , _lpuPrettyPrint = True
    , _lpuUserIp = Nothing
    , _lpuCampaignId = pLpuCampaignId_
    , _lpuProfileId = pLpuProfileId_
    , _lpuKey = Nothing
    , _lpuOauthToken = Nothing
    , _lpuFields = Nothing
    , _lpuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpuQuotaUser :: Lens' LandingPagesUpdate' (Maybe Text)
lpuQuotaUser
  = lens _lpuQuotaUser (\ s a -> s{_lpuQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpuPrettyPrint :: Lens' LandingPagesUpdate' Bool
lpuPrettyPrint
  = lens _lpuPrettyPrint
      (\ s a -> s{_lpuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpuUserIp :: Lens' LandingPagesUpdate' (Maybe Text)
lpuUserIp
  = lens _lpuUserIp (\ s a -> s{_lpuUserIp = a})

-- | Landing page campaign ID.
lpuCampaignId :: Lens' LandingPagesUpdate' Int64
lpuCampaignId
  = lens _lpuCampaignId
      (\ s a -> s{_lpuCampaignId = a})

-- | User profile ID associated with this request.
lpuProfileId :: Lens' LandingPagesUpdate' Int64
lpuProfileId
  = lens _lpuProfileId (\ s a -> s{_lpuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpuKey :: Lens' LandingPagesUpdate' (Maybe Text)
lpuKey = lens _lpuKey (\ s a -> s{_lpuKey = a})

-- | OAuth 2.0 token for the current user.
lpuOauthToken :: Lens' LandingPagesUpdate' (Maybe Text)
lpuOauthToken
  = lens _lpuOauthToken
      (\ s a -> s{_lpuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpuFields :: Lens' LandingPagesUpdate' (Maybe Text)
lpuFields
  = lens _lpuFields (\ s a -> s{_lpuFields = a})

-- | Data format for the response.
lpuAlt :: Lens' LandingPagesUpdate' Alt
lpuAlt = lens _lpuAlt (\ s a -> s{_lpuAlt = a})

instance GoogleRequest LandingPagesUpdate' where
        type Rs LandingPagesUpdate' = LandingPage
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesUpdate'{..}
          = go _lpuQuotaUser (Just _lpuPrettyPrint) _lpuUserIp
              _lpuCampaignId
              _lpuProfileId
              _lpuKey
              _lpuOauthToken
              _lpuFields
              (Just _lpuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LandingPagesUpdateResource)
                      r
                      u
