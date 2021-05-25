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
-- Module      : Network.Google.Resource.Compute.RegionURLMaps.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified UrlMap resource with the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionUrlMaps.update@.
module Network.Google.Resource.Compute.RegionURLMaps.Update
    (
    -- * REST Resource
      RegionURLMapsUpdateResource

    -- * Creating a Request
    , regionURLMapsUpdate
    , RegionURLMapsUpdate

    -- * Request Lenses
    , rumuRequestId
    , rumuURLMap
    , rumuProject
    , rumuPayload
    , rumuRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionUrlMaps.update@ method which the
-- 'RegionURLMapsUpdate' request conforms to.
type RegionURLMapsUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "urlMaps" :>
                   Capture "urlMap" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] URLMap :> Put '[JSON] Operation

-- | Updates the specified UrlMap resource with the data included in the
-- request.
--
-- /See:/ 'regionURLMapsUpdate' smart constructor.
data RegionURLMapsUpdate =
  RegionURLMapsUpdate'
    { _rumuRequestId :: !(Maybe Text)
    , _rumuURLMap :: !Text
    , _rumuProject :: !Text
    , _rumuPayload :: !URLMap
    , _rumuRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionURLMapsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rumuRequestId'
--
-- * 'rumuURLMap'
--
-- * 'rumuProject'
--
-- * 'rumuPayload'
--
-- * 'rumuRegion'
regionURLMapsUpdate
    :: Text -- ^ 'rumuURLMap'
    -> Text -- ^ 'rumuProject'
    -> URLMap -- ^ 'rumuPayload'
    -> Text -- ^ 'rumuRegion'
    -> RegionURLMapsUpdate
regionURLMapsUpdate pRumuURLMap_ pRumuProject_ pRumuPayload_ pRumuRegion_ =
  RegionURLMapsUpdate'
    { _rumuRequestId = Nothing
    , _rumuURLMap = pRumuURLMap_
    , _rumuProject = pRumuProject_
    , _rumuPayload = pRumuPayload_
    , _rumuRegion = pRumuRegion_
    }


-- | begin_interface: MixerMutationRequestBuilder Request ID to support
-- idempotency.
rumuRequestId :: Lens' RegionURLMapsUpdate (Maybe Text)
rumuRequestId
  = lens _rumuRequestId
      (\ s a -> s{_rumuRequestId = a})

-- | Name of the UrlMap resource to update.
rumuURLMap :: Lens' RegionURLMapsUpdate Text
rumuURLMap
  = lens _rumuURLMap (\ s a -> s{_rumuURLMap = a})

-- | Project ID for this request.
rumuProject :: Lens' RegionURLMapsUpdate Text
rumuProject
  = lens _rumuProject (\ s a -> s{_rumuProject = a})

-- | Multipart request metadata.
rumuPayload :: Lens' RegionURLMapsUpdate URLMap
rumuPayload
  = lens _rumuPayload (\ s a -> s{_rumuPayload = a})

-- | Name of the region scoping this request.
rumuRegion :: Lens' RegionURLMapsUpdate Text
rumuRegion
  = lens _rumuRegion (\ s a -> s{_rumuRegion = a})

instance GoogleRequest RegionURLMapsUpdate where
        type Rs RegionURLMapsUpdate = Operation
        type Scopes RegionURLMapsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionURLMapsUpdate'{..}
          = go _rumuProject _rumuRegion _rumuURLMap
              _rumuRequestId
              (Just AltJSON)
              _rumuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionURLMapsUpdateResource)
                      mempty
