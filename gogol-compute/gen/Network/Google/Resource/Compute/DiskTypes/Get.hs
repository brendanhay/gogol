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
-- Module      : Network.Google.Resource.Compute.DiskTypes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified disk type resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDiskTypesGet@.
module Network.Google.Resource.Compute.DiskTypes.Get
    (
    -- * REST Resource
      DiskTypesGetResource

    -- * Creating a Request
    , diskTypesGet'
    , DiskTypesGet'

    -- * Request Lenses
    , dtgProject
    , dtgZone
    , dtgDiskType
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDiskTypesGet@ method which the
-- 'DiskTypesGet'' request conforms to.
type DiskTypesGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "diskTypes" :>
             Capture "diskType" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] DiskType

-- | Returns the specified disk type resource.
--
-- /See:/ 'diskTypesGet'' smart constructor.
data DiskTypesGet' = DiskTypesGet'
    { _dtgProject  :: !Text
    , _dtgZone     :: !Text
    , _dtgDiskType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgProject'
--
-- * 'dtgZone'
--
-- * 'dtgDiskType'
diskTypesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'diskType'
    -> DiskTypesGet'
diskTypesGet' pDtgProject_ pDtgZone_ pDtgDiskType_ =
    DiskTypesGet'
    { _dtgProject = pDtgProject_
    , _dtgZone = pDtgZone_
    , _dtgDiskType = pDtgDiskType_
    }

-- | Project ID for this request.
dtgProject :: Lens' DiskTypesGet' Text
dtgProject
  = lens _dtgProject (\ s a -> s{_dtgProject = a})

-- | The name of the zone for this request.
dtgZone :: Lens' DiskTypesGet' Text
dtgZone = lens _dtgZone (\ s a -> s{_dtgZone = a})

-- | Name of the disk type resource to return.
dtgDiskType :: Lens' DiskTypesGet' Text
dtgDiskType
  = lens _dtgDiskType (\ s a -> s{_dtgDiskType = a})

instance GoogleRequest DiskTypesGet' where
        type Rs DiskTypesGet' = DiskType
        requestClient DiskTypesGet'{..}
          = go _dtgProject _dtgZone _dtgDiskType (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy DiskTypesGetResource)
                      mempty
