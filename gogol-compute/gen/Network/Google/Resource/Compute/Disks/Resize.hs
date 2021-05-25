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
-- Module      : Network.Google.Resource.Compute.Disks.Resize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resizes the specified persistent disk. You can only increase the size of
-- the disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.resize@.
module Network.Google.Resource.Compute.Disks.Resize
    (
    -- * REST Resource
      DisksResizeResource

    -- * Creating a Request
    , disksResize
    , DisksResize

    -- * Request Lenses
    , drRequestId
    , drProject
    , drDisk
    , drZone
    , drPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.disks.resize@ method which the
-- 'DisksResize' request conforms to.
type DisksResizeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "resize" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DisksResizeRequest :>
                             Post '[JSON] Operation

-- | Resizes the specified persistent disk. You can only increase the size of
-- the disk.
--
-- /See:/ 'disksResize' smart constructor.
data DisksResize =
  DisksResize'
    { _drRequestId :: !(Maybe Text)
    , _drProject :: !Text
    , _drDisk :: !Text
    , _drZone :: !Text
    , _drPayload :: !DisksResizeRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksResize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drRequestId'
--
-- * 'drProject'
--
-- * 'drDisk'
--
-- * 'drZone'
--
-- * 'drPayload'
disksResize
    :: Text -- ^ 'drProject'
    -> Text -- ^ 'drDisk'
    -> Text -- ^ 'drZone'
    -> DisksResizeRequest -- ^ 'drPayload'
    -> DisksResize
disksResize pDrProject_ pDrDisk_ pDrZone_ pDrPayload_ =
  DisksResize'
    { _drRequestId = Nothing
    , _drProject = pDrProject_
    , _drDisk = pDrDisk_
    , _drZone = pDrZone_
    , _drPayload = pDrPayload_
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
drRequestId :: Lens' DisksResize (Maybe Text)
drRequestId
  = lens _drRequestId (\ s a -> s{_drRequestId = a})

-- | Project ID for this request.
drProject :: Lens' DisksResize Text
drProject
  = lens _drProject (\ s a -> s{_drProject = a})

-- | The name of the persistent disk.
drDisk :: Lens' DisksResize Text
drDisk = lens _drDisk (\ s a -> s{_drDisk = a})

-- | The name of the zone for this request.
drZone :: Lens' DisksResize Text
drZone = lens _drZone (\ s a -> s{_drZone = a})

-- | Multipart request metadata.
drPayload :: Lens' DisksResize DisksResizeRequest
drPayload
  = lens _drPayload (\ s a -> s{_drPayload = a})

instance GoogleRequest DisksResize where
        type Rs DisksResize = Operation
        type Scopes DisksResize =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient DisksResize'{..}
          = go _drProject _drZone _drDisk _drRequestId
              (Just AltJSON)
              _drPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy DisksResizeResource)
                      mempty
