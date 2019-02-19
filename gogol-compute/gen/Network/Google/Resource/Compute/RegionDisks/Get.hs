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
-- Module      : Network.Google.Resource.Compute.RegionDisks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a specified regional persistent disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.get@.
module Network.Google.Resource.Compute.RegionDisks.Get
    (
    -- * REST Resource
      RegionDisksGetResource

    -- * Creating a Request
    , regionDisksGet
    , RegionDisksGet

    -- * Request Lenses
    , rdgProject
    , rdgDisk
    , rdgRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.get@ method which the
-- 'RegionDisksGet' request conforms to.
type RegionDisksGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Disk

-- | Returns a specified regional persistent disk.
--
-- /See:/ 'regionDisksGet' smart constructor.
data RegionDisksGet =
  RegionDisksGet'
    { _rdgProject :: !Text
    , _rdgDisk    :: !Text
    , _rdgRegion  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdgProject'
--
-- * 'rdgDisk'
--
-- * 'rdgRegion'
regionDisksGet
    :: Text -- ^ 'rdgProject'
    -> Text -- ^ 'rdgDisk'
    -> Text -- ^ 'rdgRegion'
    -> RegionDisksGet
regionDisksGet pRdgProject_ pRdgDisk_ pRdgRegion_ =
  RegionDisksGet'
    {_rdgProject = pRdgProject_, _rdgDisk = pRdgDisk_, _rdgRegion = pRdgRegion_}


-- | Project ID for this request.
rdgProject :: Lens' RegionDisksGet Text
rdgProject
  = lens _rdgProject (\ s a -> s{_rdgProject = a})

-- | Name of the regional persistent disk to return.
rdgDisk :: Lens' RegionDisksGet Text
rdgDisk = lens _rdgDisk (\ s a -> s{_rdgDisk = a})

-- | Name of the region for this request.
rdgRegion :: Lens' RegionDisksGet Text
rdgRegion
  = lens _rdgRegion (\ s a -> s{_rdgRegion = a})

instance GoogleRequest RegionDisksGet where
        type Rs RegionDisksGet = Disk
        type Scopes RegionDisksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionDisksGet'{..}
          = go _rdgProject _rdgRegion _rdgDisk (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy RegionDisksGetResource)
                      mempty
