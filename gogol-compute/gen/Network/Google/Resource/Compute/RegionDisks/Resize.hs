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
-- Module      : Network.Google.Resource.Compute.RegionDisks.Resize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resizes the specified regional persistent disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.resize@.
module Network.Google.Resource.Compute.RegionDisks.Resize
    (
    -- * REST Resource
      RegionDisksResizeResource

    -- * Creating a Request
    , regionDisksResize
    , RegionDisksResize

    -- * Request Lenses
    , rdrRequestId
    , rdrProject
    , rdrDisk
    , rdrPayload
    , rdrRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.resize@ method which the
-- 'RegionDisksResize' request conforms to.
type RegionDisksResizeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "resize" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RegionDisksResizeRequest :>
                             Post '[JSON] Operation

-- | Resizes the specified regional persistent disk.
--
-- /See:/ 'regionDisksResize' smart constructor.
data RegionDisksResize = RegionDisksResize'
    { _rdrRequestId :: !(Maybe Text)
    , _rdrProject   :: !Text
    , _rdrDisk      :: !Text
    , _rdrPayload   :: !RegionDisksResizeRequest
    , _rdrRegion    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionDisksResize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrRequestId'
--
-- * 'rdrProject'
--
-- * 'rdrDisk'
--
-- * 'rdrPayload'
--
-- * 'rdrRegion'
regionDisksResize
    :: Text -- ^ 'rdrProject'
    -> Text -- ^ 'rdrDisk'
    -> RegionDisksResizeRequest -- ^ 'rdrPayload'
    -> Text -- ^ 'rdrRegion'
    -> RegionDisksResize
regionDisksResize pRdrProject_ pRdrDisk_ pRdrPayload_ pRdrRegion_ =
    RegionDisksResize'
    { _rdrRequestId = Nothing
    , _rdrProject = pRdrProject_
    , _rdrDisk = pRdrDisk_
    , _rdrPayload = pRdrPayload_
    , _rdrRegion = pRdrRegion_
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
rdrRequestId :: Lens' RegionDisksResize (Maybe Text)
rdrRequestId
  = lens _rdrRequestId (\ s a -> s{_rdrRequestId = a})

-- | The project ID for this request.
rdrProject :: Lens' RegionDisksResize Text
rdrProject
  = lens _rdrProject (\ s a -> s{_rdrProject = a})

-- | Name of the regional persistent disk.
rdrDisk :: Lens' RegionDisksResize Text
rdrDisk = lens _rdrDisk (\ s a -> s{_rdrDisk = a})

-- | Multipart request metadata.
rdrPayload :: Lens' RegionDisksResize RegionDisksResizeRequest
rdrPayload
  = lens _rdrPayload (\ s a -> s{_rdrPayload = a})

-- | Name of the region for this request.
rdrRegion :: Lens' RegionDisksResize Text
rdrRegion
  = lens _rdrRegion (\ s a -> s{_rdrRegion = a})

instance GoogleRequest RegionDisksResize where
        type Rs RegionDisksResize = Operation
        type Scopes RegionDisksResize =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionDisksResize'{..}
          = go _rdrProject _rdrRegion _rdrDisk _rdrRequestId
              (Just AltJSON)
              _rdrPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDisksResizeResource)
                      mempty
