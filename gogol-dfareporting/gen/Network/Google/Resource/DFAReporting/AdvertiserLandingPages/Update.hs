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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing landing page.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserLandingPages.update@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Update
    (
    -- * REST Resource
      AdvertiserLandingPagesUpdateResource

    -- * Creating a Request
    , advertiserLandingPagesUpdate
    , AdvertiserLandingPagesUpdate

    -- * Request Lenses
    , alpuProFileId
    , alpuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.update@ method which the
-- 'AdvertiserLandingPagesUpdate' request conforms to.
type AdvertiserLandingPagesUpdateResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserLandingPages" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] LandingPage :>
                   Put '[JSON] LandingPage

-- | Updates an existing landing page.
--
-- /See:/ 'advertiserLandingPagesUpdate' smart constructor.
data AdvertiserLandingPagesUpdate =
  AdvertiserLandingPagesUpdate'
    { _alpuProFileId :: !(Textual Int64)
    , _alpuPayload   :: !LandingPage
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdvertiserLandingPagesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alpuProFileId'
--
-- * 'alpuPayload'
advertiserLandingPagesUpdate
    :: Int64 -- ^ 'alpuProFileId'
    -> LandingPage -- ^ 'alpuPayload'
    -> AdvertiserLandingPagesUpdate
advertiserLandingPagesUpdate pAlpuProFileId_ pAlpuPayload_ =
  AdvertiserLandingPagesUpdate'
    {_alpuProFileId = _Coerce # pAlpuProFileId_, _alpuPayload = pAlpuPayload_}

-- | User profile ID associated with this request.
alpuProFileId :: Lens' AdvertiserLandingPagesUpdate Int64
alpuProFileId
  = lens _alpuProFileId
      (\ s a -> s{_alpuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
alpuPayload :: Lens' AdvertiserLandingPagesUpdate LandingPage
alpuPayload
  = lens _alpuPayload (\ s a -> s{_alpuPayload = a})

instance GoogleRequest AdvertiserLandingPagesUpdate
         where
        type Rs AdvertiserLandingPagesUpdate = LandingPage
        type Scopes AdvertiserLandingPagesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesUpdate'{..}
          = go _alpuProFileId (Just AltJSON) _alpuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesUpdateResource)
                      mempty
