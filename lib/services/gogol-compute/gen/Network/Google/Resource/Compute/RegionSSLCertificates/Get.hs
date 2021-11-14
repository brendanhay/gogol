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
-- Module      : Network.Google.Resource.Compute.RegionSSLCertificates.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified SslCertificate resource in the specified region.
-- Get a list of available SSL certificates by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionSslCertificates.get@.
module Network.Google.Resource.Compute.RegionSSLCertificates.Get
    (
    -- * REST Resource
      RegionSSLCertificatesGetResource

    -- * Creating a Request
    , regionSSLCertificatesGet
    , RegionSSLCertificatesGet

    -- * Request Lenses
    , rscgProject
    , rscgSSLCertificate
    , rscgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionSslCertificates.get@ method which the
-- 'RegionSSLCertificatesGet' request conforms to.
type RegionSSLCertificatesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "sslCertificates" :>
                   Capture "sslCertificate" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] SSLCertificate

-- | Returns the specified SslCertificate resource in the specified region.
-- Get a list of available SSL certificates by making a list() request.
--
-- /See:/ 'regionSSLCertificatesGet' smart constructor.
data RegionSSLCertificatesGet =
  RegionSSLCertificatesGet'
    { _rscgProject :: !Text
    , _rscgSSLCertificate :: !Text
    , _rscgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionSSLCertificatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rscgProject'
--
-- * 'rscgSSLCertificate'
--
-- * 'rscgRegion'
regionSSLCertificatesGet
    :: Text -- ^ 'rscgProject'
    -> Text -- ^ 'rscgSSLCertificate'
    -> Text -- ^ 'rscgRegion'
    -> RegionSSLCertificatesGet
regionSSLCertificatesGet pRscgProject_ pRscgSSLCertificate_ pRscgRegion_ =
  RegionSSLCertificatesGet'
    { _rscgProject = pRscgProject_
    , _rscgSSLCertificate = pRscgSSLCertificate_
    , _rscgRegion = pRscgRegion_
    }


-- | Project ID for this request.
rscgProject :: Lens' RegionSSLCertificatesGet Text
rscgProject
  = lens _rscgProject (\ s a -> s{_rscgProject = a})

-- | Name of the SslCertificate resource to return.
rscgSSLCertificate :: Lens' RegionSSLCertificatesGet Text
rscgSSLCertificate
  = lens _rscgSSLCertificate
      (\ s a -> s{_rscgSSLCertificate = a})

-- | Name of the region scoping this request.
rscgRegion :: Lens' RegionSSLCertificatesGet Text
rscgRegion
  = lens _rscgRegion (\ s a -> s{_rscgRegion = a})

instance GoogleRequest RegionSSLCertificatesGet where
        type Rs RegionSSLCertificatesGet = SSLCertificate
        type Scopes RegionSSLCertificatesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionSSLCertificatesGet'{..}
          = go _rscgProject _rscgRegion _rscgSSLCertificate
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionSSLCertificatesGetResource)
                      mempty
