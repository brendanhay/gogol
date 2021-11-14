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
-- Module      : Network.Google.Resource.Compute.RegionSSLCertificates.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a SslCertificate resource in the specified project and region
-- using the data included in the request
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionSslCertificates.insert@.
module Network.Google.Resource.Compute.RegionSSLCertificates.Insert
    (
    -- * REST Resource
      RegionSSLCertificatesInsertResource

    -- * Creating a Request
    , regionSSLCertificatesInsert
    , RegionSSLCertificatesInsert

    -- * Request Lenses
    , rsciRequestId
    , rsciProject
    , rsciPayload
    , rsciRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionSslCertificates.insert@ method which the
-- 'RegionSSLCertificatesInsert' request conforms to.
type RegionSSLCertificatesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "sslCertificates" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SSLCertificate :>
                         Post '[JSON] Operation

-- | Creates a SslCertificate resource in the specified project and region
-- using the data included in the request
--
-- /See:/ 'regionSSLCertificatesInsert' smart constructor.
data RegionSSLCertificatesInsert =
  RegionSSLCertificatesInsert'
    { _rsciRequestId :: !(Maybe Text)
    , _rsciProject :: !Text
    , _rsciPayload :: !SSLCertificate
    , _rsciRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionSSLCertificatesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsciRequestId'
--
-- * 'rsciProject'
--
-- * 'rsciPayload'
--
-- * 'rsciRegion'
regionSSLCertificatesInsert
    :: Text -- ^ 'rsciProject'
    -> SSLCertificate -- ^ 'rsciPayload'
    -> Text -- ^ 'rsciRegion'
    -> RegionSSLCertificatesInsert
regionSSLCertificatesInsert pRsciProject_ pRsciPayload_ pRsciRegion_ =
  RegionSSLCertificatesInsert'
    { _rsciRequestId = Nothing
    , _rsciProject = pRsciProject_
    , _rsciPayload = pRsciPayload_
    , _rsciRegion = pRsciRegion_
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
rsciRequestId :: Lens' RegionSSLCertificatesInsert (Maybe Text)
rsciRequestId
  = lens _rsciRequestId
      (\ s a -> s{_rsciRequestId = a})

-- | Project ID for this request.
rsciProject :: Lens' RegionSSLCertificatesInsert Text
rsciProject
  = lens _rsciProject (\ s a -> s{_rsciProject = a})

-- | Multipart request metadata.
rsciPayload :: Lens' RegionSSLCertificatesInsert SSLCertificate
rsciPayload
  = lens _rsciPayload (\ s a -> s{_rsciPayload = a})

-- | Name of the region scoping this request.
rsciRegion :: Lens' RegionSSLCertificatesInsert Text
rsciRegion
  = lens _rsciRegion (\ s a -> s{_rsciRegion = a})

instance GoogleRequest RegionSSLCertificatesInsert
         where
        type Rs RegionSSLCertificatesInsert = Operation
        type Scopes RegionSSLCertificatesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionSSLCertificatesInsert'{..}
          = go _rsciProject _rsciRegion _rsciRequestId
              (Just AltJSON)
              _rsciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionSSLCertificatesInsertResource)
                      mempty
