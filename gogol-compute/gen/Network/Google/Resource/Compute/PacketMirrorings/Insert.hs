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
-- Module      : Network.Google.Resource.Compute.PacketMirrorings.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a PacketMirroring resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.packetMirrorings.insert@.
module Network.Google.Resource.Compute.PacketMirrorings.Insert
    (
    -- * REST Resource
      PacketMirroringsInsertResource

    -- * Creating a Request
    , packetMirroringsInsert
    , PacketMirroringsInsert

    -- * Request Lenses
    , pmiRequestId
    , pmiProject
    , pmiPayload
    , pmiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.packetMirrorings.insert@ method which the
-- 'PacketMirroringsInsert' request conforms to.
type PacketMirroringsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "packetMirrorings" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PacketMirroring :>
                         Post '[JSON] Operation

-- | Creates a PacketMirroring resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'packetMirroringsInsert' smart constructor.
data PacketMirroringsInsert =
  PacketMirroringsInsert'
    { _pmiRequestId :: !(Maybe Text)
    , _pmiProject :: !Text
    , _pmiPayload :: !PacketMirroring
    , _pmiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PacketMirroringsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmiRequestId'
--
-- * 'pmiProject'
--
-- * 'pmiPayload'
--
-- * 'pmiRegion'
packetMirroringsInsert
    :: Text -- ^ 'pmiProject'
    -> PacketMirroring -- ^ 'pmiPayload'
    -> Text -- ^ 'pmiRegion'
    -> PacketMirroringsInsert
packetMirroringsInsert pPmiProject_ pPmiPayload_ pPmiRegion_ =
  PacketMirroringsInsert'
    { _pmiRequestId = Nothing
    , _pmiProject = pPmiProject_
    , _pmiPayload = pPmiPayload_
    , _pmiRegion = pPmiRegion_
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
pmiRequestId :: Lens' PacketMirroringsInsert (Maybe Text)
pmiRequestId
  = lens _pmiRequestId (\ s a -> s{_pmiRequestId = a})

-- | Project ID for this request.
pmiProject :: Lens' PacketMirroringsInsert Text
pmiProject
  = lens _pmiProject (\ s a -> s{_pmiProject = a})

-- | Multipart request metadata.
pmiPayload :: Lens' PacketMirroringsInsert PacketMirroring
pmiPayload
  = lens _pmiPayload (\ s a -> s{_pmiPayload = a})

-- | Name of the region for this request.
pmiRegion :: Lens' PacketMirroringsInsert Text
pmiRegion
  = lens _pmiRegion (\ s a -> s{_pmiRegion = a})

instance GoogleRequest PacketMirroringsInsert where
        type Rs PacketMirroringsInsert = Operation
        type Scopes PacketMirroringsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PacketMirroringsInsert'{..}
          = go _pmiProject _pmiRegion _pmiRequestId
              (Just AltJSON)
              _pmiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy PacketMirroringsInsertResource)
                      mempty
