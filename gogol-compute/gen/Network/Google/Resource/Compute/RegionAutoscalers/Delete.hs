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
    , radRequestId
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
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified autoscaler.
--
-- /See:/ 'regionAutoscalersDelete' smart constructor.
data RegionAutoscalersDelete = RegionAutoscalersDelete'
    { _radRequestId  :: !(Maybe Text)
    , _radProject    :: !Text
    , _radAutoscaler :: !Text
    , _radRegion     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionAutoscalersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'radRequestId'
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
    { _radRequestId = Nothing
    , _radProject = pRadProject_
    , _radAutoscaler = pRadAutoscaler_
    , _radRegion = pRadRegion_
    }

-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
radRequestId :: Lens' RegionAutoscalersDelete (Maybe Text)
radRequestId
  = lens _radRequestId (\ s a -> s{_radRequestId = a})

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
              _radRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionAutoscalersDeleteResource)
                      mempty
