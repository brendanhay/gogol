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
-- Module      : Network.Google.Resource.AdSense.AdUnits.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified ad unit in the specified ad client.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.adunits.get@.
module Network.Google.Resource.AdSense.AdUnits.Get
    (
    -- * REST Resource
      AdUnitsGetResource

    -- * Creating a Request
    , adUnitsGet
    , AdUnitsGet

    -- * Request Lenses
    , augAdUnitId
    , augAdClientId
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @adsense.adunits.get@ method which the
-- 'AdUnitsGet' request conforms to.
type AdUnitsGetResource =
     "adsense" :>
       "v1.4" :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] AdUnit

-- | Gets the specified ad unit in the specified ad client.
--
-- /See:/ 'adUnitsGet' smart constructor.
data AdUnitsGet = AdUnitsGet
    { _augAdUnitId   :: !Text
    , _augAdClientId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdUnitsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'augAdUnitId'
--
-- * 'augAdClientId'
adUnitsGet
    :: Text -- ^ 'augAdUnitId'
    -> Text -- ^ 'augAdClientId'
    -> AdUnitsGet
adUnitsGet pAugAdUnitId_ pAugAdClientId_ =
    AdUnitsGet
    { _augAdUnitId = pAugAdUnitId_
    , _augAdClientId = pAugAdClientId_
    }

-- | Ad unit to retrieve.
augAdUnitId :: Lens' AdUnitsGet Text
augAdUnitId
  = lens _augAdUnitId (\ s a -> s{_augAdUnitId = a})

-- | Ad client for which to get the ad unit.
augAdClientId :: Lens' AdUnitsGet Text
augAdClientId
  = lens _augAdClientId
      (\ s a -> s{_augAdClientId = a})

instance GoogleRequest AdUnitsGet where
        type Rs AdUnitsGet = AdUnit
        requestClient AdUnitsGet{..}
          = go _augAdClientId _augAdUnitId (Just AltJSON)
              adSenseService
          where go
                  = buildClient (Proxy :: Proxy AdUnitsGetResource)
                      mempty
