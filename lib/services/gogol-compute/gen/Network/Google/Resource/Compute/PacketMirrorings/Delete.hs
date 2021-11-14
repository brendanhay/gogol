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
-- Module      : Network.Google.Resource.Compute.PacketMirrorings.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified PacketMirroring resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.packetMirrorings.delete@.
module Network.Google.Resource.Compute.PacketMirrorings.Delete
    (
    -- * REST Resource
      PacketMirroringsDeleteResource

    -- * Creating a Request
    , packetMirroringsDelete
    , PacketMirroringsDelete

    -- * Request Lenses
    , pmdRequestId
    , pmdProject
    , pmdRegion
    , pmdPacketMirroring
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.packetMirrorings.delete@ method which the
-- 'PacketMirroringsDelete' request conforms to.
type PacketMirroringsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "packetMirrorings" :>
                   Capture "packetMirroring" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified PacketMirroring resource.
--
-- /See:/ 'packetMirroringsDelete' smart constructor.
data PacketMirroringsDelete =
  PacketMirroringsDelete'
    { _pmdRequestId :: !(Maybe Text)
    , _pmdProject :: !Text
    , _pmdRegion :: !Text
    , _pmdPacketMirroring :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PacketMirroringsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdRequestId'
--
-- * 'pmdProject'
--
-- * 'pmdRegion'
--
-- * 'pmdPacketMirroring'
packetMirroringsDelete
    :: Text -- ^ 'pmdProject'
    -> Text -- ^ 'pmdRegion'
    -> Text -- ^ 'pmdPacketMirroring'
    -> PacketMirroringsDelete
packetMirroringsDelete pPmdProject_ pPmdRegion_ pPmdPacketMirroring_ =
  PacketMirroringsDelete'
    { _pmdRequestId = Nothing
    , _pmdProject = pPmdProject_
    , _pmdRegion = pPmdRegion_
    , _pmdPacketMirroring = pPmdPacketMirroring_
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
pmdRequestId :: Lens' PacketMirroringsDelete (Maybe Text)
pmdRequestId
  = lens _pmdRequestId (\ s a -> s{_pmdRequestId = a})

-- | Project ID for this request.
pmdProject :: Lens' PacketMirroringsDelete Text
pmdProject
  = lens _pmdProject (\ s a -> s{_pmdProject = a})

-- | Name of the region for this request.
pmdRegion :: Lens' PacketMirroringsDelete Text
pmdRegion
  = lens _pmdRegion (\ s a -> s{_pmdRegion = a})

-- | Name of the PacketMirroring resource to delete.
pmdPacketMirroring :: Lens' PacketMirroringsDelete Text
pmdPacketMirroring
  = lens _pmdPacketMirroring
      (\ s a -> s{_pmdPacketMirroring = a})

instance GoogleRequest PacketMirroringsDelete where
        type Rs PacketMirroringsDelete = Operation
        type Scopes PacketMirroringsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PacketMirroringsDelete'{..}
          = go _pmdProject _pmdRegion _pmdPacketMirroring
              _pmdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PacketMirroringsDeleteResource)
                      mempty
