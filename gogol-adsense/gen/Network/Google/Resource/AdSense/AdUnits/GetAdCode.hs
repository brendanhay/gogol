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
-- Module      : Network.Google.Resource.AdSense.AdUnits.GetAdCode
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get ad code for the specified ad unit.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.adunits.getAdCode@.
module Network.Google.Resource.AdSense.AdUnits.GetAdCode
    (
    -- * REST Resource
      AdUnitsGetAdCodeResource

    -- * Creating a Request
    , adUnitsGetAdCode
    , AdUnitsGetAdCode

    -- * Request Lenses
    , augacAdUnitId
    , augacAdClientId
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.adunits.getAdCode@ method which the
-- 'AdUnitsGetAdCode' request conforms to.
type AdUnitsGetAdCodeResource =
     "adsense" :>
       "v1.4" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 "adcode" :>
                   QueryParam "alt" AltJSON :> Get '[JSON] AdCode

-- | Get ad code for the specified ad unit.
--
-- /See:/ 'adUnitsGetAdCode' smart constructor.
data AdUnitsGetAdCode = AdUnitsGetAdCode
    { _augacAdUnitId   :: !Text
    , _augacAdClientId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitsGetAdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'augacAdUnitId'
--
-- * 'augacAdClientId'
adUnitsGetAdCode
    :: Text -- ^ 'augacAdUnitId'
    -> Text -- ^ 'augacAdClientId'
    -> AdUnitsGetAdCode
adUnitsGetAdCode pAugacAdUnitId_ pAugacAdClientId_ =
    AdUnitsGetAdCode
    { _augacAdUnitId = pAugacAdUnitId_
    , _augacAdClientId = pAugacAdClientId_
    }

-- | Ad unit to get the code for.
augacAdUnitId :: Lens' AdUnitsGetAdCode Text
augacAdUnitId
  = lens _augacAdUnitId
      (\ s a -> s{_augacAdUnitId = a})

-- | Ad client with contains the ad unit.
augacAdClientId :: Lens' AdUnitsGetAdCode Text
augacAdClientId
  = lens _augacAdClientId
      (\ s a -> s{_augacAdClientId = a})

instance GoogleRequest AdUnitsGetAdCode where
        type Rs AdUnitsGetAdCode = AdCode
        type Scopes AdUnitsGetAdCode =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AdUnitsGetAdCode{..}
          = go _augacAdClientId _augacAdUnitId (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AdUnitsGetAdCodeResource)
                      mempty
