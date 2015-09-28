{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.LandingPages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of landing pages for the specified campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.landingPages.list@.
module Network.Google.API.DFAReporting.LandingPages.List
    (
    -- * REST Resource
      LandingPagesListAPI

    -- * Creating a Request
    , landingPagesList'
    , LandingPagesList'

    -- * Request Lenses
    , lplQuotaUser
    , lplPrettyPrint
    , lplUserIp
    , lplCampaignId
    , lplProfileId
    , lplKey
    , lplOauthToken
    , lplFields
    , lplAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.landingPages.list which the
-- 'LandingPagesList'' request conforms to.
type LandingPagesListAPI =
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
                           QueryParam "alt" Alt :>
                             Get '[JSON] LandingPagesListResponse

-- | Retrieves the list of landing pages for the specified campaign.
--
-- /See:/ 'landingPagesList'' smart constructor.
data LandingPagesList' = LandingPagesList'
    { _lplQuotaUser   :: !(Maybe Text)
    , _lplPrettyPrint :: !Bool
    , _lplUserIp      :: !(Maybe Text)
    , _lplCampaignId  :: !Int64
    , _lplProfileId   :: !Int64
    , _lplKey         :: !(Maybe Text)
    , _lplOauthToken  :: !(Maybe Text)
    , _lplFields      :: !(Maybe Text)
    , _lplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplQuotaUser'
--
-- * 'lplPrettyPrint'
--
-- * 'lplUserIp'
--
-- * 'lplCampaignId'
--
-- * 'lplProfileId'
--
-- * 'lplKey'
--
-- * 'lplOauthToken'
--
-- * 'lplFields'
--
-- * 'lplAlt'
landingPagesList'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPagesList'
landingPagesList' pLplCampaignId_ pLplProfileId_ =
    LandingPagesList'
    { _lplQuotaUser = Nothing
    , _lplPrettyPrint = True
    , _lplUserIp = Nothing
    , _lplCampaignId = pLplCampaignId_
    , _lplProfileId = pLplProfileId_
    , _lplKey = Nothing
    , _lplOauthToken = Nothing
    , _lplFields = Nothing
    , _lplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lplQuotaUser :: Lens' LandingPagesList' (Maybe Text)
lplQuotaUser
  = lens _lplQuotaUser (\ s a -> s{_lplQuotaUser = a})

-- | Returns response with indentations and line breaks.
lplPrettyPrint :: Lens' LandingPagesList' Bool
lplPrettyPrint
  = lens _lplPrettyPrint
      (\ s a -> s{_lplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lplUserIp :: Lens' LandingPagesList' (Maybe Text)
lplUserIp
  = lens _lplUserIp (\ s a -> s{_lplUserIp = a})

-- | Landing page campaign ID.
lplCampaignId :: Lens' LandingPagesList' Int64
lplCampaignId
  = lens _lplCampaignId
      (\ s a -> s{_lplCampaignId = a})

-- | User profile ID associated with this request.
lplProfileId :: Lens' LandingPagesList' Int64
lplProfileId
  = lens _lplProfileId (\ s a -> s{_lplProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lplKey :: Lens' LandingPagesList' (Maybe Text)
lplKey = lens _lplKey (\ s a -> s{_lplKey = a})

-- | OAuth 2.0 token for the current user.
lplOauthToken :: Lens' LandingPagesList' (Maybe Text)
lplOauthToken
  = lens _lplOauthToken
      (\ s a -> s{_lplOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lplFields :: Lens' LandingPagesList' (Maybe Text)
lplFields
  = lens _lplFields (\ s a -> s{_lplFields = a})

-- | Data format for the response.
lplAlt :: Lens' LandingPagesList' Alt
lplAlt = lens _lplAlt (\ s a -> s{_lplAlt = a})

instance GoogleRequest LandingPagesList' where
        type Rs LandingPagesList' = LandingPagesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesList'{..}
          = go _lplQuotaUser (Just _lplPrettyPrint) _lplUserIp
              _lplCampaignId
              _lplProfileId
              _lplKey
              _lplOauthToken
              _lplFields
              (Just _lplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LandingPagesListAPI)
                      r
                      u
