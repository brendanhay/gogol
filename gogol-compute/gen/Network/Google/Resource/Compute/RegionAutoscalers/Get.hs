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
-- Module      : Network.Google.Resource.Compute.RegionAutoscalers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified autoscaler.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionAutoscalers.get@.
module Network.Google.Resource.Compute.RegionAutoscalers.Get
    (
    -- * REST Resource
      RegionAutoscalersGetResource

    -- * Creating a Request
    , regionAutoscalersGet
    , RegionAutoscalersGet

    -- * Request Lenses
    , ragProject
    , ragAutoscaler
    , ragRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionAutoscalers.get@ method which the
-- 'RegionAutoscalersGet' request conforms to.
type RegionAutoscalersGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "autoscalers" :>
                   Capture "autoscaler" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Autoscaler

-- | Returns the specified autoscaler.
--
-- /See:/ 'regionAutoscalersGet' smart constructor.
data RegionAutoscalersGet =
  RegionAutoscalersGet'
    { _ragProject :: !Text
    , _ragAutoscaler :: !Text
    , _ragRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionAutoscalersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ragProject'
--
-- * 'ragAutoscaler'
--
-- * 'ragRegion'
regionAutoscalersGet
    :: Text -- ^ 'ragProject'
    -> Text -- ^ 'ragAutoscaler'
    -> Text -- ^ 'ragRegion'
    -> RegionAutoscalersGet
regionAutoscalersGet pRagProject_ pRagAutoscaler_ pRagRegion_ =
  RegionAutoscalersGet'
    { _ragProject = pRagProject_
    , _ragAutoscaler = pRagAutoscaler_
    , _ragRegion = pRagRegion_
    }


-- | Project ID for this request.
ragProject :: Lens' RegionAutoscalersGet Text
ragProject
  = lens _ragProject (\ s a -> s{_ragProject = a})

-- | Name of the autoscaler to return.
ragAutoscaler :: Lens' RegionAutoscalersGet Text
ragAutoscaler
  = lens _ragAutoscaler
      (\ s a -> s{_ragAutoscaler = a})

-- | Name of the region scoping this request.
ragRegion :: Lens' RegionAutoscalersGet Text
ragRegion
  = lens _ragRegion (\ s a -> s{_ragRegion = a})

instance GoogleRequest RegionAutoscalersGet where
        type Rs RegionAutoscalersGet = Autoscaler
        type Scopes RegionAutoscalersGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionAutoscalersGet'{..}
          = go _ragProject _ragRegion _ragAutoscaler
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersGetResource)
                      mempty
