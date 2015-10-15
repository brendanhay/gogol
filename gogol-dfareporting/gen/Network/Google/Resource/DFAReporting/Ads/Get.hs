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
-- | Gets one ad by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdsGet@.
module Network.Google.Resource.DFAReporting.Ads.Get
    (
    -- * REST Resource
      AdsGetResource

    -- * Creating a Request
    , adsGet'
    , AdsGet'

    -- * Request Lenses
    , adsdProFileId
    , adsdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdsGet@ method which the
-- 'AdsGet'' request conforms to.
type AdsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "ads" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :> Get '[JSON] Ad

-- | Gets one ad by ID.
--
-- /See:/ 'adsGet'' smart constructor.
data AdsGet' = AdsGet'
    { _adsdProFileId :: !Int64
    , _adsdId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adsdProFileId'
--
-- * 'adsdId'
adsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdsGet'
adsGet' pAdsdProFileId_ pAdsdId_ =
    AdsGet'
    { _adsdProFileId = pAdsdProFileId_
    , _adsdId = pAdsdId_
    }

-- | User profile ID associated with this request.
adsdProFileId :: Lens' AdsGet' Int64
adsdProFileId
  = lens _adsdProFileId
      (\ s a -> s{_adsdProFileId = a})

-- | Ad ID.
adsdId :: Lens' AdsGet' Int64
adsdId = lens _adsdId (\ s a -> s{_adsdId = a})

instance GoogleRequest AdsGet' where
        type Rs AdsGet' = Ad
        requestClient AdsGet'{..}
          = go _adsdProFileId _adsdId (Just AltJSON)
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy AdsGetResource) mempty
