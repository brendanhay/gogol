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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one ad by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.ads.get@.
module Network.Google.Resource.DFAReporting.Ads.Get
    (
    -- * REST Resource
      AdsGetResource

    -- * Creating a Request
    , adsGet
    , AdsGet

    -- * Request Lenses
    , adsProFileId
    , adsId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.ads.get@ method which the
-- 'AdsGet' request conforms to.
type AdsGetResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" Int64 :>
             "ads" :>
               Capture "id" Int64 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Ad

-- | Gets one ad by ID.
--
-- /See:/ 'adsGet' smart constructor.
data AdsGet = AdsGet
    { _adsProFileId :: !Int64
    , _adsId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsProFileId'
--
-- * 'adsId'
adsGet
    :: Int64 -- ^ 'adsProFileId'
    -> Int64 -- ^ 'adsId'
    -> AdsGet
adsGet pAdsProFileId_ pAdsId_ =
    AdsGet
    { _adsProFileId = pAdsProFileId_
    , _adsId = pAdsId_
    }

-- | User profile ID associated with this request.
adsProFileId :: Lens' AdsGet Int64
adsProFileId
  = lens _adsProFileId (\ s a -> s{_adsProFileId = a})

-- | Ad ID.
adsId :: Lens' AdsGet Int64
adsId = lens _adsId (\ s a -> s{_adsId = a})

instance GoogleRequest AdsGet where
        type Rs AdsGet = Ad
        requestClient AdsGet{..}
          = go _adsProFileId _adsId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsGetResource) mempty
