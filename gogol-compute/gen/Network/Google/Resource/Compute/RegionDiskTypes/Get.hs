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
-- Module      : Network.Google.Resource.Compute.RegionDiskTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified regional disk type. Gets a list of available disk
-- types by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDiskTypes.get@.
module Network.Google.Resource.Compute.RegionDiskTypes.Get
    (
    -- * REST Resource
      RegionDiskTypesGetResource

    -- * Creating a Request
    , regionDiskTypesGet
    , RegionDiskTypesGet

    -- * Request Lenses
    , rdtgProject
    , rdtgDiskType
    , rdtgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionDiskTypes.get@ method which the
-- 'RegionDiskTypesGet' request conforms to.
type RegionDiskTypesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "diskTypes" :>
                   Capture "diskType" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] DiskType

-- | Returns the specified regional disk type. Gets a list of available disk
-- types by making a list() request.
--
-- /See:/ 'regionDiskTypesGet' smart constructor.
data RegionDiskTypesGet =
  RegionDiskTypesGet'
    { _rdtgProject :: !Text
    , _rdtgDiskType :: !Text
    , _rdtgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDiskTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdtgProject'
--
-- * 'rdtgDiskType'
--
-- * 'rdtgRegion'
regionDiskTypesGet
    :: Text -- ^ 'rdtgProject'
    -> Text -- ^ 'rdtgDiskType'
    -> Text -- ^ 'rdtgRegion'
    -> RegionDiskTypesGet
regionDiskTypesGet pRdtgProject_ pRdtgDiskType_ pRdtgRegion_ =
  RegionDiskTypesGet'
    { _rdtgProject = pRdtgProject_
    , _rdtgDiskType = pRdtgDiskType_
    , _rdtgRegion = pRdtgRegion_
    }


-- | Project ID for this request.
rdtgProject :: Lens' RegionDiskTypesGet Text
rdtgProject
  = lens _rdtgProject (\ s a -> s{_rdtgProject = a})

-- | Name of the disk type to return.
rdtgDiskType :: Lens' RegionDiskTypesGet Text
rdtgDiskType
  = lens _rdtgDiskType (\ s a -> s{_rdtgDiskType = a})

-- | The name of the region for this request.
rdtgRegion :: Lens' RegionDiskTypesGet Text
rdtgRegion
  = lens _rdtgRegion (\ s a -> s{_rdtgRegion = a})

instance GoogleRequest RegionDiskTypesGet where
        type Rs RegionDiskTypesGet = DiskType
        type Scopes RegionDiskTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionDiskTypesGet'{..}
          = go _rdtgProject _rdtgRegion _rdtgDiskType
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDiskTypesGetResource)
                      mempty
