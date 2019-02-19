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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one landing page by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserLandingPages.get@.
module Network.Google.Resource.DFAReporting.AdvertiserLandingPages.Get
    (
    -- * REST Resource
      AdvertiserLandingPagesGetResource

    -- * Creating a Request
    , advertiserLandingPagesGet
    , AdvertiserLandingPagesGet

    -- * Request Lenses
    , alpgProFileId
    , alpgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserLandingPages.get@ method which the
-- 'AdvertiserLandingPagesGet' request conforms to.
type AdvertiserLandingPagesGetResource =
     "dfareporting" :>
       "v3.3" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserLandingPages" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] LandingPage

-- | Gets one landing page by ID.
--
-- /See:/ 'advertiserLandingPagesGet' smart constructor.
data AdvertiserLandingPagesGet =
  AdvertiserLandingPagesGet'
    { _alpgProFileId :: !(Textual Int64)
    , _alpgId        :: !(Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserLandingPagesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alpgProFileId'
--
-- * 'alpgId'
advertiserLandingPagesGet
    :: Int64 -- ^ 'alpgProFileId'
    -> Int64 -- ^ 'alpgId'
    -> AdvertiserLandingPagesGet
advertiserLandingPagesGet pAlpgProFileId_ pAlpgId_ =
  AdvertiserLandingPagesGet'
    {_alpgProFileId = _Coerce # pAlpgProFileId_, _alpgId = _Coerce # pAlpgId_}


-- | User profile ID associated with this request.
alpgProFileId :: Lens' AdvertiserLandingPagesGet Int64
alpgProFileId
  = lens _alpgProFileId
      (\ s a -> s{_alpgProFileId = a})
      . _Coerce

-- | Landing page ID.
alpgId :: Lens' AdvertiserLandingPagesGet Int64
alpgId
  = lens _alpgId (\ s a -> s{_alpgId = a}) . _Coerce

instance GoogleRequest AdvertiserLandingPagesGet
         where
        type Rs AdvertiserLandingPagesGet = LandingPage
        type Scopes AdvertiserLandingPagesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserLandingPagesGet'{..}
          = go _alpgProFileId _alpgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserLandingPagesGetResource)
                      mempty
