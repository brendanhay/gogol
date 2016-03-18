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
-- Module      : Network.Google.Resource.Compute.RegionOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified region-specific Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionOperations.delete@.
module Network.Google.Resource.Compute.RegionOperations.Delete
    (
    -- * REST Resource
      RegionOperationsDeleteResource

    -- * Creating a Request
    , regionOperationsDelete
    , RegionOperationsDelete

    -- * Request Lenses
    , rodProject
    , rodOperation
    , rodRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionOperations.delete@ method which the
-- 'RegionOperationsDelete' request conforms to.
type RegionOperationsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified region-specific Operations resource.
--
-- /See:/ 'regionOperationsDelete' smart constructor.
data RegionOperationsDelete = RegionOperationsDelete
    { _rodProject   :: !Text
    , _rodOperation :: !Text
    , _rodRegion    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rodProject'
--
-- * 'rodOperation'
--
-- * 'rodRegion'
regionOperationsDelete
    :: Text -- ^ 'rodProject'
    -> Text -- ^ 'rodOperation'
    -> Text -- ^ 'rodRegion'
    -> RegionOperationsDelete
regionOperationsDelete pRodProject_ pRodOperation_ pRodRegion_ =
    RegionOperationsDelete
    { _rodProject = pRodProject_
    , _rodOperation = pRodOperation_
    , _rodRegion = pRodRegion_
    }

-- | Project ID for this request.
rodProject :: Lens' RegionOperationsDelete Text
rodProject
  = lens _rodProject (\ s a -> s{_rodProject = a})

-- | Name of the Operations resource to delete.
rodOperation :: Lens' RegionOperationsDelete Text
rodOperation
  = lens _rodOperation (\ s a -> s{_rodOperation = a})

-- | Name of the region for this request.
rodRegion :: Lens' RegionOperationsDelete Text
rodRegion
  = lens _rodRegion (\ s a -> s{_rodRegion = a})

instance GoogleRequest RegionOperationsDelete where
        type Rs RegionOperationsDelete = ()
        requestClient RegionOperationsDelete{..}
          = go _rodProject _rodRegion _rodOperation
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionOperationsDeleteResource)
                      mempty
