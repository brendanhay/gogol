{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.LandingPages.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one campaign landing page by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.landingPages.get@.
module Network.Google.API.DFAReporting.LandingPages.Get
    (
    -- * REST Resource
      LandingPagesGetAPI

    -- * Creating a Request
    , landingPagesGet'
    , LandingPagesGet'

    -- * Request Lenses
    , lpgQuotaUser
    , lpgPrettyPrint
    , lpgUserIp
    , lpgCampaignId
    , lpgProfileId
    , lpgKey
    , lpgId
    , lpgOauthToken
    , lpgFields
    , lpgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.landingPages.get which the
-- 'LandingPagesGet'' request conforms to.
type LandingPagesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] LandingPage

-- | Gets one campaign landing page by ID.
--
-- /See:/ 'landingPagesGet'' smart constructor.
data LandingPagesGet' = LandingPagesGet'
    { _lpgQuotaUser   :: !(Maybe Text)
    , _lpgPrettyPrint :: !Bool
    , _lpgUserIp      :: !(Maybe Text)
    , _lpgCampaignId  :: !Int64
    , _lpgProfileId   :: !Int64
    , _lpgKey         :: !(Maybe Text)
    , _lpgId          :: !Int64
    , _lpgOauthToken  :: !(Maybe Text)
    , _lpgFields      :: !(Maybe Text)
    , _lpgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpgQuotaUser'
--
-- * 'lpgPrettyPrint'
--
-- * 'lpgUserIp'
--
-- * 'lpgCampaignId'
--
-- * 'lpgProfileId'
--
-- * 'lpgKey'
--
-- * 'lpgId'
--
-- * 'lpgOauthToken'
--
-- * 'lpgFields'
--
-- * 'lpgAlt'
landingPagesGet'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> LandingPagesGet'
landingPagesGet' pLpgCampaignId_ pLpgProfileId_ pLpgId_ =
    LandingPagesGet'
    { _lpgQuotaUser = Nothing
    , _lpgPrettyPrint = True
    , _lpgUserIp = Nothing
    , _lpgCampaignId = pLpgCampaignId_
    , _lpgProfileId = pLpgProfileId_
    , _lpgKey = Nothing
    , _lpgId = pLpgId_
    , _lpgOauthToken = Nothing
    , _lpgFields = Nothing
    , _lpgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lpgQuotaUser :: Lens' LandingPagesGet' (Maybe Text)
lpgQuotaUser
  = lens _lpgQuotaUser (\ s a -> s{_lpgQuotaUser = a})

-- | Returns response with indentations and line breaks.
lpgPrettyPrint :: Lens' LandingPagesGet' Bool
lpgPrettyPrint
  = lens _lpgPrettyPrint
      (\ s a -> s{_lpgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lpgUserIp :: Lens' LandingPagesGet' (Maybe Text)
lpgUserIp
  = lens _lpgUserIp (\ s a -> s{_lpgUserIp = a})

-- | Landing page campaign ID.
lpgCampaignId :: Lens' LandingPagesGet' Int64
lpgCampaignId
  = lens _lpgCampaignId
      (\ s a -> s{_lpgCampaignId = a})

-- | User profile ID associated with this request.
lpgProfileId :: Lens' LandingPagesGet' Int64
lpgProfileId
  = lens _lpgProfileId (\ s a -> s{_lpgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpgKey :: Lens' LandingPagesGet' (Maybe Text)
lpgKey = lens _lpgKey (\ s a -> s{_lpgKey = a})

-- | Landing page ID.
lpgId :: Lens' LandingPagesGet' Int64
lpgId = lens _lpgId (\ s a -> s{_lpgId = a})

-- | OAuth 2.0 token for the current user.
lpgOauthToken :: Lens' LandingPagesGet' (Maybe Text)
lpgOauthToken
  = lens _lpgOauthToken
      (\ s a -> s{_lpgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpgFields :: Lens' LandingPagesGet' (Maybe Text)
lpgFields
  = lens _lpgFields (\ s a -> s{_lpgFields = a})

-- | Data format for the response.
lpgAlt :: Lens' LandingPagesGet' Alt
lpgAlt = lens _lpgAlt (\ s a -> s{_lpgAlt = a})

instance GoogleRequest LandingPagesGet' where
        type Rs LandingPagesGet' = LandingPage
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesGet'{..}
          = go _lpgQuotaUser (Just _lpgPrettyPrint) _lpgUserIp
              _lpgCampaignId
              _lpgProfileId
              _lpgKey
              _lpgId
              _lpgOauthToken
              _lpgFields
              (Just _lpgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy LandingPagesGetAPI)
                      r
                      u
