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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one campaign landing page by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesGet@.
module Network.Google.Resource.DFAReporting.LandingPages.Get
    (
    -- * REST Resource
      LandingPagesGetResource

    -- * Creating a Request
    , landingPagesGet'
    , LandingPagesGet'

    -- * Request Lenses
    , lpgQuotaUser
    , lpgPrettyPrint
    , lpgUserIP
    , lpgCampaignId
    , lpgProfileId
    , lpgKey
    , lpgId
    , lpgOAuthToken
    , lpgFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesGet@ which the
-- 'LandingPagesGet'' request conforms to.
type LandingPagesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] LandingPage

-- | Gets one campaign landing page by ID.
--
-- /See:/ 'landingPagesGet'' smart constructor.
data LandingPagesGet' = LandingPagesGet'
    { _lpgQuotaUser   :: !(Maybe Text)
    , _lpgPrettyPrint :: !Bool
    , _lpgUserIP      :: !(Maybe Text)
    , _lpgCampaignId  :: !Int64
    , _lpgProfileId   :: !Int64
    , _lpgKey         :: !(Maybe Key)
    , _lpgId          :: !Int64
    , _lpgOAuthToken  :: !(Maybe OAuthToken)
    , _lpgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpgQuotaUser'
--
-- * 'lpgPrettyPrint'
--
-- * 'lpgUserIP'
--
-- * 'lpgCampaignId'
--
-- * 'lpgProfileId'
--
-- * 'lpgKey'
--
-- * 'lpgId'
--
-- * 'lpgOAuthToken'
--
-- * 'lpgFields'
landingPagesGet'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> LandingPagesGet'
landingPagesGet' pLpgCampaignId_ pLpgProfileId_ pLpgId_ =
    LandingPagesGet'
    { _lpgQuotaUser = Nothing
    , _lpgPrettyPrint = True
    , _lpgUserIP = Nothing
    , _lpgCampaignId = pLpgCampaignId_
    , _lpgProfileId = pLpgProfileId_
    , _lpgKey = Nothing
    , _lpgId = pLpgId_
    , _lpgOAuthToken = Nothing
    , _lpgFields = Nothing
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
lpgUserIP :: Lens' LandingPagesGet' (Maybe Text)
lpgUserIP
  = lens _lpgUserIP (\ s a -> s{_lpgUserIP = a})

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
lpgKey :: Lens' LandingPagesGet' (Maybe Key)
lpgKey = lens _lpgKey (\ s a -> s{_lpgKey = a})

-- | Landing page ID.
lpgId :: Lens' LandingPagesGet' Int64
lpgId = lens _lpgId (\ s a -> s{_lpgId = a})

-- | OAuth 2.0 token for the current user.
lpgOAuthToken :: Lens' LandingPagesGet' (Maybe OAuthToken)
lpgOAuthToken
  = lens _lpgOAuthToken
      (\ s a -> s{_lpgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpgFields :: Lens' LandingPagesGet' (Maybe Text)
lpgFields
  = lens _lpgFields (\ s a -> s{_lpgFields = a})

instance GoogleAuth LandingPagesGet' where
        authKey = lpgKey . _Just
        authToken = lpgOAuthToken . _Just

instance GoogleRequest LandingPagesGet' where
        type Rs LandingPagesGet' = LandingPage
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesGet'{..}
          = go _lpgProfileId _lpgCampaignId _lpgId
              _lpgQuotaUser
              (Just _lpgPrettyPrint)
              _lpgUserIP
              _lpgFields
              _lpgKey
              _lpgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LandingPagesGetResource)
                      r
                      u
