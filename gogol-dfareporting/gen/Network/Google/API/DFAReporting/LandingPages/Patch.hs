{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.LandingPages.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing campaign landing page. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.landingPages.patch@.
module Network.Google.API.DFAReporting.LandingPages.Patch
    (
    -- * REST Resource
      LandingPagesPatchAPI

    -- * Creating a Request
    , landingPagesPatch'
    , LandingPagesPatch'

    -- * Request Lenses
    , lppQuotaUser
    , lppPrettyPrint
    , lppUserIp
    , lppCampaignId
    , lppProfileId
    , lppKey
    , lppId
    , lppOauthToken
    , lppFields
    , lppAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.landingPages.patch which the
-- 'LandingPagesPatch'' request conforms to.
type LandingPagesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "id" Int64 :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Patch '[JSON] LandingPage

-- | Updates an existing campaign landing page. This method supports patch
-- semantics.
--
-- /See:/ 'landingPagesPatch'' smart constructor.
data LandingPagesPatch' = LandingPagesPatch'
    { _lppQuotaUser   :: !(Maybe Text)
    , _lppPrettyPrint :: !Bool
    , _lppUserIp      :: !(Maybe Text)
    , _lppCampaignId  :: !Int64
    , _lppProfileId   :: !Int64
    , _lppKey         :: !(Maybe Text)
    , _lppId          :: !Int64
    , _lppOauthToken  :: !(Maybe Text)
    , _lppFields      :: !(Maybe Text)
    , _lppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppQuotaUser'
--
-- * 'lppPrettyPrint'
--
-- * 'lppUserIp'
--
-- * 'lppCampaignId'
--
-- * 'lppProfileId'
--
-- * 'lppKey'
--
-- * 'lppId'
--
-- * 'lppOauthToken'
--
-- * 'lppFields'
--
-- * 'lppAlt'
landingPagesPatch'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> LandingPagesPatch'
landingPagesPatch' pLppCampaignId_ pLppProfileId_ pLppId_ =
    LandingPagesPatch'
    { _lppQuotaUser = Nothing
    , _lppPrettyPrint = True
    , _lppUserIp = Nothing
    , _lppCampaignId = pLppCampaignId_
    , _lppProfileId = pLppProfileId_
    , _lppKey = Nothing
    , _lppId = pLppId_
    , _lppOauthToken = Nothing
    , _lppFields = Nothing
    , _lppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lppQuotaUser :: Lens' LandingPagesPatch' (Maybe Text)
lppQuotaUser
  = lens _lppQuotaUser (\ s a -> s{_lppQuotaUser = a})

-- | Returns response with indentations and line breaks.
lppPrettyPrint :: Lens' LandingPagesPatch' Bool
lppPrettyPrint
  = lens _lppPrettyPrint
      (\ s a -> s{_lppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lppUserIp :: Lens' LandingPagesPatch' (Maybe Text)
lppUserIp
  = lens _lppUserIp (\ s a -> s{_lppUserIp = a})

-- | Landing page campaign ID.
lppCampaignId :: Lens' LandingPagesPatch' Int64
lppCampaignId
  = lens _lppCampaignId
      (\ s a -> s{_lppCampaignId = a})

-- | User profile ID associated with this request.
lppProfileId :: Lens' LandingPagesPatch' Int64
lppProfileId
  = lens _lppProfileId (\ s a -> s{_lppProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lppKey :: Lens' LandingPagesPatch' (Maybe Text)
lppKey = lens _lppKey (\ s a -> s{_lppKey = a})

-- | Landing page ID.
lppId :: Lens' LandingPagesPatch' Int64
lppId = lens _lppId (\ s a -> s{_lppId = a})

-- | OAuth 2.0 token for the current user.
lppOauthToken :: Lens' LandingPagesPatch' (Maybe Text)
lppOauthToken
  = lens _lppOauthToken
      (\ s a -> s{_lppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
lppFields :: Lens' LandingPagesPatch' (Maybe Text)
lppFields
  = lens _lppFields (\ s a -> s{_lppFields = a})

-- | Data format for the response.
lppAlt :: Lens' LandingPagesPatch' Alt
lppAlt = lens _lppAlt (\ s a -> s{_lppAlt = a})

instance GoogleRequest LandingPagesPatch' where
        type Rs LandingPagesPatch' = LandingPage
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u LandingPagesPatch'{..}
          = go _lppQuotaUser (Just _lppPrettyPrint) _lppUserIp
              _lppCampaignId
              _lppProfileId
              _lppKey
              (Just _lppId)
              _lppOauthToken
              _lppFields
              (Just _lppAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LandingPagesPatchAPI)
                      r
                      u
