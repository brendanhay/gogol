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
-- Module      : Network.Google.Resource.Compute.RegionURLMaps.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified UrlMap resource with the data included in the
-- request. This method supports PATCH semantics and uses JSON merge patch
-- format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionUrlMaps.patch@.
module Network.Google.Resource.Compute.RegionURLMaps.Patch
    (
    -- * REST Resource
      RegionURLMapsPatchResource

    -- * Creating a Request
    , regionURLMapsPatch
    , RegionURLMapsPatch

    -- * Request Lenses
    , rumpRequestId
    , rumpURLMap
    , rumpProject
    , rumpPayload
    , rumpRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionUrlMaps.patch@ method which the
-- 'RegionURLMapsPatch' request conforms to.
type RegionURLMapsPatchResource =
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
                         ReqBody '[JSON] URLMap :> Patch '[JSON] Operation

-- | Patches the specified UrlMap resource with the data included in the
-- request. This method supports PATCH semantics and uses JSON merge patch
-- format and processing rules.
--
-- /See:/ 'regionURLMapsPatch' smart constructor.
data RegionURLMapsPatch =
  RegionURLMapsPatch'
    { _rumpRequestId :: !(Maybe Text)
    , _rumpURLMap :: !Text
    , _rumpProject :: !Text
    , _rumpPayload :: !URLMap
    , _rumpRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionURLMapsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rumpRequestId'
--
-- * 'rumpURLMap'
--
-- * 'rumpProject'
--
-- * 'rumpPayload'
--
-- * 'rumpRegion'
regionURLMapsPatch
    :: Text -- ^ 'rumpURLMap'
    -> Text -- ^ 'rumpProject'
    -> URLMap -- ^ 'rumpPayload'
    -> Text -- ^ 'rumpRegion'
    -> RegionURLMapsPatch
regionURLMapsPatch pRumpURLMap_ pRumpProject_ pRumpPayload_ pRumpRegion_ =
  RegionURLMapsPatch'
    { _rumpRequestId = Nothing
    , _rumpURLMap = pRumpURLMap_
    , _rumpProject = pRumpProject_
    , _rumpPayload = pRumpPayload_
    , _rumpRegion = pRumpRegion_
    }


-- | begin_interface: MixerMutationRequestBuilder Request ID to support
-- idempotency.
rumpRequestId :: Lens' RegionURLMapsPatch (Maybe Text)
rumpRequestId
  = lens _rumpRequestId
      (\ s a -> s{_rumpRequestId = a})

-- | Name of the UrlMap resource to patch.
rumpURLMap :: Lens' RegionURLMapsPatch Text
rumpURLMap
  = lens _rumpURLMap (\ s a -> s{_rumpURLMap = a})

-- | Project ID for this request.
rumpProject :: Lens' RegionURLMapsPatch Text
rumpProject
  = lens _rumpProject (\ s a -> s{_rumpProject = a})

-- | Multipart request metadata.
rumpPayload :: Lens' RegionURLMapsPatch URLMap
rumpPayload
  = lens _rumpPayload (\ s a -> s{_rumpPayload = a})

-- | Name of the region scoping this request.
rumpRegion :: Lens' RegionURLMapsPatch Text
rumpRegion
  = lens _rumpRegion (\ s a -> s{_rumpRegion = a})

instance GoogleRequest RegionURLMapsPatch where
        type Rs RegionURLMapsPatch = Operation
        type Scopes RegionURLMapsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionURLMapsPatch'{..}
          = go _rumpProject _rumpRegion _rumpURLMap
              _rumpRequestId
              (Just AltJSON)
              _rumpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionURLMapsPatchResource)
                      mempty
