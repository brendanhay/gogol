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
-- Module      : Network.Google.Resource.Compute.RegionOperations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified region-specific Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionOperations.get@.
module Network.Google.Resource.Compute.RegionOperations.Get
    (
    -- * REST Resource
      RegionOperationsGetResource

    -- * Creating a Request
    , regionOperationsGet
    , RegionOperationsGet

    -- * Request Lenses
    , rogProject
    , rogOperation
    , rogRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionOperations.get@ method which the
-- 'RegionOperationsGet' request conforms to.
type RegionOperationsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified region-specific Operations resource.
--
-- /See:/ 'regionOperationsGet' smart constructor.
data RegionOperationsGet =
  RegionOperationsGet'
    { _rogProject :: !Text
    , _rogOperation :: !Text
    , _rogRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionOperationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rogProject'
--
-- * 'rogOperation'
--
-- * 'rogRegion'
regionOperationsGet
    :: Text -- ^ 'rogProject'
    -> Text -- ^ 'rogOperation'
    -> Text -- ^ 'rogRegion'
    -> RegionOperationsGet
regionOperationsGet pRogProject_ pRogOperation_ pRogRegion_ =
  RegionOperationsGet'
    { _rogProject = pRogProject_
    , _rogOperation = pRogOperation_
    , _rogRegion = pRogRegion_
    }


-- | Project ID for this request.
rogProject :: Lens' RegionOperationsGet Text
rogProject
  = lens _rogProject (\ s a -> s{_rogProject = a})

-- | Name of the Operations resource to return.
rogOperation :: Lens' RegionOperationsGet Text
rogOperation
  = lens _rogOperation (\ s a -> s{_rogOperation = a})

-- | Name of the region for this request.
rogRegion :: Lens' RegionOperationsGet Text
rogRegion
  = lens _rogRegion (\ s a -> s{_rogRegion = a})

instance GoogleRequest RegionOperationsGet where
        type Rs RegionOperationsGet = Operation
        type Scopes RegionOperationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionOperationsGet'{..}
          = go _rogProject _rogRegion _rogOperation
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionOperationsGetResource)
                      mempty
