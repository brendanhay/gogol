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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing landing page. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserLandingPages.patch@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Patch
    (
    -- * REST Resource
      AdvertiserLandingPagesPatchResource

    -- * Creating a Request
    , advertiserLandingPagesPatch
    , AdvertiserLandingPagesPatch

    -- * Request Lenses
    , alppProFileId
    , alppPayload
    , alppId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.patch@ method which the
-- 'AdvertiserLandingPagesPatch' request conforms to.
type AdvertiserLandingPagesPatchResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserLandingPages" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] LandingPage :>
                     Patch '[JSON] LandingPage

-- | Updates an existing landing page. This method supports patch semantics.
--
-- /See:/ 'advertiserLandingPagesPatch' smart constructor.
data AdvertiserLandingPagesPatch =
  AdvertiserLandingPagesPatch'
    { _alppProFileId :: !(Textual Int64)
    , _alppPayload   :: !LandingPage
    , _alppId        :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserLandingPagesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alppProFileId'
--
-- * 'alppPayload'
--
-- * 'alppId'
advertiserLandingPagesPatch
    :: Int64 -- ^ 'alppProFileId'
    -> LandingPage -- ^ 'alppPayload'
    -> Int64 -- ^ 'alppId'
    -> AdvertiserLandingPagesPatch
advertiserLandingPagesPatch pAlppProFileId_ pAlppPayload_ pAlppId_ =
  AdvertiserLandingPagesPatch'
    { _alppProFileId = _Coerce # pAlppProFileId_
    , _alppPayload = pAlppPayload_
    , _alppId = _Coerce # pAlppId_
    }


-- | User profile ID associated with this request.
alppProFileId :: Lens' AdvertiserLandingPagesPatch Int64
alppProFileId
  = lens _alppProFileId
      (\ s a -> s{_alppProFileId = a})
      . _Coerce

-- | Multipart request metadata.
alppPayload :: Lens' AdvertiserLandingPagesPatch LandingPage
alppPayload
  = lens _alppPayload (\ s a -> s{_alppPayload = a})

-- | Landing page ID.
alppId :: Lens' AdvertiserLandingPagesPatch Int64
alppId
  = lens _alppId (\ s a -> s{_alppId = a}) . _Coerce

instance GoogleRequest AdvertiserLandingPagesPatch
         where
        type Rs AdvertiserLandingPagesPatch = LandingPage
        type Scopes AdvertiserLandingPagesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesPatch'{..}
          = go _alppProFileId (Just _alppId) (Just AltJSON)
              _alppPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesPatchResource)
                      mempty
