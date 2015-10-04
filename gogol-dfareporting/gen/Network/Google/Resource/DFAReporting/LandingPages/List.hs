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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of landing pages for the specified campaign.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingLandingPagesList@.
module Network.Google.Resource.DFAReporting.LandingPages.List
    (
    -- * REST Resource
      LandingPagesListResource

    -- * Creating a Request
    , landingPagesList'
    , LandingPagesList'

    -- * Request Lenses
    , lplQuotaUser
    , lplPrettyPrint
    , lplUserIP
    , lplCampaignId
    , lplProfileId
    , lplKey
    , lplOAuthToken
    , lplFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesList@ which the
-- 'LandingPagesList'' request conforms to.
type LandingPagesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] LandingPagesListResponse

-- | Retrieves the list of landing pages for the specified campaign.
--
-- /See:/ 'landingPagesList'' smart constructor.
data LandingPagesList' = LandingPagesList'
    { _lplQuotaUser   :: !(Maybe Text)
    , _lplPrettyPrint :: !Bool
    , _lplUserIP      :: !(Maybe Text)
    , _lplCampaignId  :: !Int64
    , _lplProfileId   :: !Int64
    , _lplKey         :: !(Maybe Key)
    , _lplOAuthToken  :: !(Maybe OAuthToken)
    , _lplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lplQuotaUser'
--
-- * 'lplPrettyPrint'
--
-- * 'lplUserIP'
--
-- * 'lplCampaignId'
--
-- * 'lplProfileId'
--
-- * 'lplKey'
--
-- * 'lplOAuthToken'
--
-- * 'lplFields'
landingPagesList'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPagesList'
landingPagesList' pLplCampaignId_ pLplProfileId_ =
    LandingPagesList'
    { _lplQuotaUser = Nothing
    , _lplPrettyPrint = True
    , _lplUserIP = Nothing
    , _lplCampaignId = pLplCampaignId_
    , _lplProfileId = pLplProfileId_
    , _lplKey = Nothing
    , _lplOAuthToken = Nothing
    , _lplFields = Nothing
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
lplUserIP :: Lens' LandingPagesList' (Maybe Text)
lplUserIP
  = lens _lplUserIP (\ s a -> s{_lplUserIP = a})

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
lplKey :: Lens' LandingPagesList' (Maybe Key)
lplKey = lens _lplKey (\ s a -> s{_lplKey = a})

-- | OAuth 2.0 token for the current user.
lplOAuthToken :: Lens' LandingPagesList' (Maybe OAuthToken)
lplOAuthToken
  = lens _lplOAuthToken
      (\ s a -> s{_lplOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lplFields :: Lens' LandingPagesList' (Maybe Text)
lplFields
  = lens _lplFields (\ s a -> s{_lplFields = a})

instance GoogleAuth LandingPagesList' where
        authKey = lplKey . _Just
        authToken = lplOAuthToken . _Just

instance GoogleRequest LandingPagesList' where
        type Rs LandingPagesList' = LandingPagesListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesList'{..}
          = go _lplProfileId _lplCampaignId _lplQuotaUser
              (Just _lplPrettyPrint)
              _lplUserIP
              _lplFields
              _lplKey
              _lplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LandingPagesListResource)
                      r
                      u
