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
    , lpuCampaignId
    , lpuProFileId
    , lpuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingLandingPagesUpdate@ method which the
-- 'LandingPagesUpdate'' request conforms to.
type LandingPagesUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "campaigns" :>
           Capture "campaignId" Int64 :>
             "landingPages" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LandingPage :>
                   Put '[JSON] LandingPage

-- | Updates an existing campaign landing page.
--
-- /See:/ 'landingPagesUpdate'' smart constructor.
data LandingPagesUpdate' = LandingPagesUpdate'
    { _lpuCampaignId :: !Int64
    , _lpuProFileId  :: !Int64
    , _lpuPayload    :: !LandingPage
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpuCampaignId'
--
-- * 'lpuProFileId'
--
-- * 'lpuPayload'
landingPagesUpdate'
    :: Int64 -- ^ 'campaignId'
    -> Int64 -- ^ 'profileId'
    -> LandingPage -- ^ 'payload'
    -> LandingPagesUpdate'
landingPagesUpdate' pLpuCampaignId_ pLpuProFileId_ pLpuPayload_ =
    LandingPagesUpdate'
    { _lpuCampaignId = pLpuCampaignId_
    , _lpuProFileId = pLpuProFileId_
    , _lpuPayload = pLpuPayload_
    }

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

instance GoogleRequest LandingPagesUpdate' where
        type Rs LandingPagesUpdate' = LandingPage
        requestClient LandingPagesUpdate'{..}
          = go _lpuProFileId _lpuCampaignId (Just AltJSON)
              _lpuPayload
              dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy LandingPagesUpdateResource)
                      mempty
