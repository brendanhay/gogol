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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one campaign landing page by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.landingPages.get@.
module Network.Google.Resource.DFAReporting.LandingPages.Get
    (
    -- * REST Resource
      LandingPagesGetResource

    -- * Creating a Request
    , landingPagesGet
    , LandingPagesGet

    -- * Request Lenses
    , lpgCampaignId
    , lpgProFileId
    , lpgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.landingPages.get@ method which the
-- 'LandingPagesGet' request conforms to.
type LandingPagesGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               Capture "campaignId" (Textual Int64) :>
                 "landingPages" :>
                   Capture "id" (Textual Int64) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] LandingPage

-- | Gets one campaign landing page by ID.
--
-- /See:/ 'landingPagesGet' smart constructor.
data LandingPagesGet = LandingPagesGet
    { _lpgCampaignId :: !(Textual Int64)
    , _lpgProFileId  :: !(Textual Int64)
    , _lpgId         :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpgCampaignId'
--
-- * 'lpgProFileId'
--
-- * 'lpgId'
landingPagesGet
    :: Int64 -- ^ 'lpgCampaignId'
    -> Int64 -- ^ 'lpgProFileId'
    -> Int64 -- ^ 'lpgId'
    -> LandingPagesGet
landingPagesGet pLpgCampaignId_ pLpgProFileId_ pLpgId_ =
    LandingPagesGet
    { _lpgCampaignId = _Coerce # pLpgCampaignId_
    , _lpgProFileId = _Coerce # pLpgProFileId_
    , _lpgId = _Coerce # pLpgId_
    }

-- | Landing page campaign ID.
lpgCampaignId :: Lens' LandingPagesGet Int64
lpgCampaignId
  = lens _lpgCampaignId
      (\ s a -> s{_lpgCampaignId = a})
      . _Coerce

-- | User profile ID associated with this request.
lpgProFileId :: Lens' LandingPagesGet Int64
lpgProFileId
  = lens _lpgProFileId (\ s a -> s{_lpgProFileId = a})
      . _Coerce

-- | Landing page ID.
lpgId :: Lens' LandingPagesGet Int64
lpgId
  = lens _lpgId (\ s a -> s{_lpgId = a}) . _Coerce

instance GoogleRequest LandingPagesGet where
        type Rs LandingPagesGet = LandingPage
        requestClient LandingPagesGet{..}
          = go _lpgProFileId _lpgCampaignId _lpgId
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy LandingPagesGetResource)
                      mempty
