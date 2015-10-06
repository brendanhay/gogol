{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , lpuUserIP
    , lpuCampaignId
    , lpuProFileId
    , lpuPayload
    , lpuKey
    , lpuOAuthToken
    , lpuFields
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
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LandingPage :>
                               Put '[JSON] LandingPage

-- | Updates an existing campaign landing page.
--
-- /See:/ 'landingPagesUpdate'' smart constructor.
data LandingPagesUpdate' = LandingPagesUpdate'
    { _lpuQuotaUser   :: !(Maybe Text)
    , _lpuPrettyPrint :: !Bool
    , _lpuUserIP      :: !(Maybe Text)
    , _lpuCampaignId  :: !Int64
    , _lpuProFileId   :: !Int64
    , _lpuPayload     :: !LandingPage
    , _lpuKey         :: !(Maybe AuthKey)
    , _lpuOAuthToken  :: !(Maybe OAuthToken)
    , _lpuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpuQuotaUser'
--
-- * 'lpuPrettyPrint'
--
-- * 'lpuUserIP'
--
-- * 'lpuCampaignId'
--
-- * 'lpuProFileId'
--
-- * 'lpuPayload'
--
-- * 'lpuKey'
--
-- * 'lpuOAuthToken'
--
-- * 'lpuFields'
landingPagesUpdate'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPage -- ^ 'payload'
    -> LandingPagesUpdate'
landingPagesUpdate' pLpuCampaignId_ pLpuProFileId_ pLpuPayload_ =
    LandingPagesUpdate'
    { _lpuQuotaUser = Nothing
    , _lpuPrettyPrint = True
    , _lpuUserIP = Nothing
    , _lpuCampaignId = pLpuCampaignId_
    , _lpuProFileId = pLpuProFileId_
    , _lpuPayload = pLpuPayload_
    , _lpuKey = Nothing
    , _lpuOAuthToken = Nothing
    , _lpuFields = Nothing
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
lpuUserIP :: Lens' LandingPagesUpdate' (Maybe Text)
lpuUserIP
  = lens _lpuUserIP (\ s a -> s{_lpuUserIP = a})

-- | Landing page campaign ID.
lpuCampaignId :: Lens' LandingPagesUpdate' Int64
lpuCampaignId
  = lens _lpuCampaignId
      (\ s a -> s{_lpuCampaignId = a})

-- | User profile ID associated with this request.
lpuProFileId :: Lens' LandingPagesUpdate' Int64
lpuProFileId
  = lens _lpuProFileId (\ s a -> s{_lpuProFileId = a})

-- | Multipart request metadata.
lpuPayload :: Lens' LandingPagesUpdate' LandingPage
lpuPayload
  = lens _lpuPayload (\ s a -> s{_lpuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lpuKey :: Lens' LandingPagesUpdate' (Maybe AuthKey)
lpuKey = lens _lpuKey (\ s a -> s{_lpuKey = a})

-- | OAuth 2.0 token for the current user.
lpuOAuthToken :: Lens' LandingPagesUpdate' (Maybe OAuthToken)
lpuOAuthToken
  = lens _lpuOAuthToken
      (\ s a -> s{_lpuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
lpuFields :: Lens' LandingPagesUpdate' (Maybe Text)
lpuFields
  = lens _lpuFields (\ s a -> s{_lpuFields = a})

instance GoogleAuth LandingPagesUpdate' where
        authKey = lpuKey . _Just
        authToken = lpuOAuthToken . _Just

instance GoogleRequest LandingPagesUpdate' where
        type Rs LandingPagesUpdate' = LandingPage
        request = requestWith dFAReportingRequest
        requestWith rq LandingPagesUpdate'{..}
          = go _lpuProFileId _lpuCampaignId _lpuQuotaUser
              (Just _lpuPrettyPrint)
              _lpuUserIP
              _lpuFields
              _lpuKey
              _lpuOAuthToken
              (Just AltJSON)
              _lpuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy LandingPagesUpdateResource)
                      rq
