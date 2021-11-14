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
-- Module      : Network.Google.Resource.Compute.RegionURLMaps.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionUrlMaps.delete@.
module Network.Google.Resource.Compute.RegionURLMaps.Delete
    (
    -- * REST Resource
      RegionURLMapsDeleteResource

    -- * Creating a Request
    , regionURLMapsDelete
    , RegionURLMapsDelete

    -- * Request Lenses
    , rumdRequestId
    , rumdURLMap
    , rumdProject
    , rumdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionUrlMaps.delete@ method which the
-- 'RegionURLMapsDelete' request conforms to.
type RegionURLMapsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "urlMaps" :>
                   Capture "urlMap" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified UrlMap resource.
--
-- /See:/ 'regionURLMapsDelete' smart constructor.
data RegionURLMapsDelete =
  RegionURLMapsDelete'
    { _rumdRequestId :: !(Maybe Text)
    , _rumdURLMap :: !Text
    , _rumdProject :: !Text
    , _rumdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionURLMapsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rumdRequestId'
--
-- * 'rumdURLMap'
--
-- * 'rumdProject'
--
-- * 'rumdRegion'
regionURLMapsDelete
    :: Text -- ^ 'rumdURLMap'
    -> Text -- ^ 'rumdProject'
    -> Text -- ^ 'rumdRegion'
    -> RegionURLMapsDelete
regionURLMapsDelete pRumdURLMap_ pRumdProject_ pRumdRegion_ =
  RegionURLMapsDelete'
    { _rumdRequestId = Nothing
    , _rumdURLMap = pRumdURLMap_
    , _rumdProject = pRumdProject_
    , _rumdRegion = pRumdRegion_
    }


-- | begin_interface: MixerMutationRequestBuilder Request ID to support
-- idempotency.
rumdRequestId :: Lens' RegionURLMapsDelete (Maybe Text)
rumdRequestId
  = lens _rumdRequestId
      (\ s a -> s{_rumdRequestId = a})

-- | Name of the UrlMap resource to delete.
rumdURLMap :: Lens' RegionURLMapsDelete Text
rumdURLMap
  = lens _rumdURLMap (\ s a -> s{_rumdURLMap = a})

-- | Project ID for this request.
rumdProject :: Lens' RegionURLMapsDelete Text
rumdProject
  = lens _rumdProject (\ s a -> s{_rumdProject = a})

-- | Name of the region scoping this request.
rumdRegion :: Lens' RegionURLMapsDelete Text
rumdRegion
  = lens _rumdRegion (\ s a -> s{_rumdRegion = a})

instance GoogleRequest RegionURLMapsDelete where
        type Rs RegionURLMapsDelete = Operation
        type Scopes RegionURLMapsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionURLMapsDelete'{..}
          = go _rumdProject _rumdRegion _rumdURLMap
              _rumdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionURLMapsDeleteResource)
                      mempty
