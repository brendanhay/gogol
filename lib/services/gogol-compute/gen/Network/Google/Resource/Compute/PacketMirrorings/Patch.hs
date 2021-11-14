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
-- Module      : Network.Google.Resource.Compute.PacketMirrorings.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified PacketMirroring resource with the data included in
-- the request. This method supports PATCH semantics and uses JSON merge
-- patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.packetMirrorings.patch@.
module Network.Google.Resource.Compute.PacketMirrorings.Patch
    (
    -- * REST Resource
      PacketMirroringsPatchResource

    -- * Creating a Request
    , packetMirroringsPatch
    , PacketMirroringsPatch

    -- * Request Lenses
    , pmpRequestId
    , pmpProject
    , pmpPayload
    , pmpRegion
    , pmpPacketMirroring
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.packetMirrorings.patch@ method which the
-- 'PacketMirroringsPatch' request conforms to.
type PacketMirroringsPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "packetMirrorings" :>
                   Capture "packetMirroring" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PacketMirroring :>
                           Patch '[JSON] Operation

-- | Patches the specified PacketMirroring resource with the data included in
-- the request. This method supports PATCH semantics and uses JSON merge
-- patch format and processing rules.
--
-- /See:/ 'packetMirroringsPatch' smart constructor.
data PacketMirroringsPatch =
  PacketMirroringsPatch'
    { _pmpRequestId :: !(Maybe Text)
    , _pmpProject :: !Text
    , _pmpPayload :: !PacketMirroring
    , _pmpRegion :: !Text
    , _pmpPacketMirroring :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PacketMirroringsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmpRequestId'
--
-- * 'pmpProject'
--
-- * 'pmpPayload'
--
-- * 'pmpRegion'
--
-- * 'pmpPacketMirroring'
packetMirroringsPatch
    :: Text -- ^ 'pmpProject'
    -> PacketMirroring -- ^ 'pmpPayload'
    -> Text -- ^ 'pmpRegion'
    -> Text -- ^ 'pmpPacketMirroring'
    -> PacketMirroringsPatch
packetMirroringsPatch pPmpProject_ pPmpPayload_ pPmpRegion_ pPmpPacketMirroring_ =
  PacketMirroringsPatch'
    { _pmpRequestId = Nothing
    , _pmpProject = pPmpProject_
    , _pmpPayload = pPmpPayload_
    , _pmpRegion = pPmpRegion_
    , _pmpPacketMirroring = pPmpPacketMirroring_
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
pmpRequestId :: Lens' PacketMirroringsPatch (Maybe Text)
pmpRequestId
  = lens _pmpRequestId (\ s a -> s{_pmpRequestId = a})

-- | Project ID for this request.
pmpProject :: Lens' PacketMirroringsPatch Text
pmpProject
  = lens _pmpProject (\ s a -> s{_pmpProject = a})

-- | Multipart request metadata.
pmpPayload :: Lens' PacketMirroringsPatch PacketMirroring
pmpPayload
  = lens _pmpPayload (\ s a -> s{_pmpPayload = a})

-- | Name of the region for this request.
pmpRegion :: Lens' PacketMirroringsPatch Text
pmpRegion
  = lens _pmpRegion (\ s a -> s{_pmpRegion = a})

-- | Name of the PacketMirroring resource to patch.
pmpPacketMirroring :: Lens' PacketMirroringsPatch Text
pmpPacketMirroring
  = lens _pmpPacketMirroring
      (\ s a -> s{_pmpPacketMirroring = a})

instance GoogleRequest PacketMirroringsPatch where
        type Rs PacketMirroringsPatch = Operation
        type Scopes PacketMirroringsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PacketMirroringsPatch'{..}
          = go _pmpProject _pmpRegion _pmpPacketMirroring
              _pmpRequestId
              (Just AltJSON)
              _pmpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PacketMirroringsPatchResource)
                      mempty
