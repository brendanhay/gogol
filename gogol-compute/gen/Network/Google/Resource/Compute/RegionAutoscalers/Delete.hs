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
-- Module      : Network.Google.Resource.Compute.RegionAutoscalers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified autoscaler.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionAutoscalers.delete@.
module Network.Google.Resource.Compute.RegionAutoscalers.Delete
    (
    -- * REST Resource
      RegionAutoscalersDeleteResource

    -- * Creating a Request
    , regionAutoscalersDelete
    , RegionAutoscalersDelete

    -- * Request Lenses
    , radProject
    , radAutoscaler
    , radRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionAutoscalers.delete@ method which the
-- 'RegionAutoscalersDelete' request conforms to.
type RegionAutoscalersDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified autoscaler.
--
-- /See:/ 'regionAutoscalersDelete' smart constructor.
data RegionAutoscalersDelete = RegionAutoscalersDelete'
    { _radProject    :: !Text
    , _radAutoscaler :: !Text
    , _radRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionAutoscalersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'radProject'
--
-- * 'radAutoscaler'
--
-- * 'radRegion'
regionAutoscalersDelete
    :: Text -- ^ 'radProject'
    -> Text -- ^ 'radAutoscaler'
    -> Text -- ^ 'radRegion'
    -> RegionAutoscalersDelete
regionAutoscalersDelete pRadProject_ pRadAutoscaler_ pRadRegion_ =
    RegionAutoscalersDelete'
    { _radProject = pRadProject_
    , _radAutoscaler = pRadAutoscaler_
    , _radRegion = pRadRegion_
    }

-- | Project ID for this request.
radProject :: Lens' RegionAutoscalersDelete Text
radProject
  = lens _radProject (\ s a -> s{_radProject = a})

-- | Name of the autoscaler to delete.
radAutoscaler :: Lens' RegionAutoscalersDelete Text
radAutoscaler
  = lens _radAutoscaler
      (\ s a -> s{_radAutoscaler = a})

-- | Name of the region scoping this request.
radRegion :: Lens' RegionAutoscalersDelete Text
radRegion
  = lens _radRegion (\ s a -> s{_radRegion = a})

instance GoogleRequest RegionAutoscalersDelete where
        type Rs RegionAutoscalersDelete = Operation
        type Scopes RegionAutoscalersDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionAutoscalersDelete'{..}
          = go _radProject _radRegion _radAutoscaler
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersDeleteResource)
                      mempty
