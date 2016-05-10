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
-- Module      : Network.Google.Resource.DFAReporting.LandingPages.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing campaign landing page. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.landingPages.patch@.
module Network.Google.Resource.DFAReporting.LandingPages.Patch
    (
    -- * REST Resource
      LandingPagesPatchResource

    -- * Creating a Request
    , landingPagesPatch
    , LandingPagesPatch

    -- * Request Lenses
    , lppCampaignId
    , lppProFileId
    , lppPayload
    , lppId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.landingPages.patch@ method which the
-- 'LandingPagesPatch' request conforms to.
type LandingPagesPatchResource =
     "dfareporting" :>
       "v2.5beta1" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "campaigns" :>
               Capture "campaignId" (Textual Int64) :>
                 "landingPages" :>
                   QueryParam "id" (Textual Int64) :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LandingPage :>
                         Patch '[JSON] LandingPage

-- | Updates an existing campaign landing page. This method supports patch
-- semantics.
--
-- /See:/ 'landingPagesPatch' smart constructor.
data LandingPagesPatch = LandingPagesPatch'
    { _lppCampaignId :: !(Textual Int64)
    , _lppProFileId  :: !(Textual Int64)
    , _lppPayload    :: !LandingPage
    , _lppId         :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LandingPagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lppCampaignId'
--
-- * 'lppProFileId'
--
-- * 'lppPayload'
--
-- * 'lppId'
landingPagesPatch
    :: Int64 -- ^ 'lppCampaignId'
    -> Int64 -- ^ 'lppProFileId'
    -> LandingPage -- ^ 'lppPayload'
    -> Int64 -- ^ 'lppId'
    -> LandingPagesPatch
landingPagesPatch pLppCampaignId_ pLppProFileId_ pLppPayload_ pLppId_ =
    LandingPagesPatch'
    { _lppCampaignId = _Coerce # pLppCampaignId_
    , _lppProFileId = _Coerce # pLppProFileId_
    , _lppPayload = pLppPayload_
    , _lppId = _Coerce # pLppId_
    }

-- | Landing page campaign ID.
lppCampaignId :: Lens' LandingPagesPatch Int64
lppCampaignId
  = lens _lppCampaignId
      (\ s a -> s{_lppCampaignId = a})
      . _Coerce

-- | User profile ID associated with this request.
lppProFileId :: Lens' LandingPagesPatch Int64
lppProFileId
  = lens _lppProFileId (\ s a -> s{_lppProFileId = a})
      . _Coerce

-- | Multipart request metadata.
lppPayload :: Lens' LandingPagesPatch LandingPage
lppPayload
  = lens _lppPayload (\ s a -> s{_lppPayload = a})

-- | Landing page ID.
lppId :: Lens' LandingPagesPatch Int64
lppId
  = lens _lppId (\ s a -> s{_lppId = a}) . _Coerce

instance GoogleRequest LandingPagesPatch where
        type Rs LandingPagesPatch = LandingPage
        type Scopes LandingPagesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient LandingPagesPatch'{..}
          = go _lppProFileId _lppCampaignId (Just _lppId)
              (Just AltJSON)
              _lppPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy LandingPagesPatchResource)
                      mempty
