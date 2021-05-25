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
-- Module      : Network.Google.Resource.Compute.RegionSSLCertificates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SslCertificate resource in the region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionSslCertificates.delete@.
module Network.Google.Resource.Compute.RegionSSLCertificates.Delete
    (
    -- * REST Resource
      RegionSSLCertificatesDeleteResource

    -- * Creating a Request
    , regionSSLCertificatesDelete
    , RegionSSLCertificatesDelete

    -- * Request Lenses
    , rscdRequestId
    , rscdProject
    , rscdSSLCertificate
    , rscdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionSslCertificates.delete@ method which the
-- 'RegionSSLCertificatesDelete' request conforms to.
type RegionSSLCertificatesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "sslCertificates" :>
                   Capture "sslCertificate" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified SslCertificate resource in the region.
--
-- /See:/ 'regionSSLCertificatesDelete' smart constructor.
data RegionSSLCertificatesDelete =
  RegionSSLCertificatesDelete'
    { _rscdRequestId :: !(Maybe Text)
    , _rscdProject :: !Text
    , _rscdSSLCertificate :: !Text
    , _rscdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionSSLCertificatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rscdRequestId'
--
-- * 'rscdProject'
--
-- * 'rscdSSLCertificate'
--
-- * 'rscdRegion'
regionSSLCertificatesDelete
    :: Text -- ^ 'rscdProject'
    -> Text -- ^ 'rscdSSLCertificate'
    -> Text -- ^ 'rscdRegion'
    -> RegionSSLCertificatesDelete
regionSSLCertificatesDelete pRscdProject_ pRscdSSLCertificate_ pRscdRegion_ =
  RegionSSLCertificatesDelete'
    { _rscdRequestId = Nothing
    , _rscdProject = pRscdProject_
    , _rscdSSLCertificate = pRscdSSLCertificate_
    , _rscdRegion = pRscdRegion_
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
rscdRequestId :: Lens' RegionSSLCertificatesDelete (Maybe Text)
rscdRequestId
  = lens _rscdRequestId
      (\ s a -> s{_rscdRequestId = a})

-- | Project ID for this request.
rscdProject :: Lens' RegionSSLCertificatesDelete Text
rscdProject
  = lens _rscdProject (\ s a -> s{_rscdProject = a})

-- | Name of the SslCertificate resource to delete.
rscdSSLCertificate :: Lens' RegionSSLCertificatesDelete Text
rscdSSLCertificate
  = lens _rscdSSLCertificate
      (\ s a -> s{_rscdSSLCertificate = a})

-- | Name of the region scoping this request.
rscdRegion :: Lens' RegionSSLCertificatesDelete Text
rscdRegion
  = lens _rscdRegion (\ s a -> s{_rscdRegion = a})

instance GoogleRequest RegionSSLCertificatesDelete
         where
        type Rs RegionSSLCertificatesDelete = Operation
        type Scopes RegionSSLCertificatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionSSLCertificatesDelete'{..}
          = go _rscdProject _rscdRegion _rscdSSLCertificate
              _rscdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionSSLCertificatesDeleteResource)
                      mempty
