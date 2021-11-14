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
-- Module      : Network.Google.Resource.Compute.SSLCertificates.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified SslCertificate resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslCertificates.delete@.
module Network.Google.Resource.Compute.SSLCertificates.Delete
    (
    -- * REST Resource
      SSLCertificatesDeleteResource

    -- * Creating a Request
    , sslCertificatesDelete
    , SSLCertificatesDelete

    -- * Request Lenses
    , scdRequestId
    , scdProject
    , scdSSLCertificate
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.sslCertificates.delete@ method which the
-- 'SSLCertificatesDelete' request conforms to.
type SSLCertificatesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslCertificates" :>
                 Capture "sslCertificate" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified SslCertificate resource.
--
-- /See:/ 'sslCertificatesDelete' smart constructor.
data SSLCertificatesDelete =
  SSLCertificatesDelete'
    { _scdRequestId :: !(Maybe Text)
    , _scdProject :: !Text
    , _scdSSLCertificate :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertificatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scdRequestId'
--
-- * 'scdProject'
--
-- * 'scdSSLCertificate'
sslCertificatesDelete
    :: Text -- ^ 'scdProject'
    -> Text -- ^ 'scdSSLCertificate'
    -> SSLCertificatesDelete
sslCertificatesDelete pScdProject_ pScdSSLCertificate_ =
  SSLCertificatesDelete'
    { _scdRequestId = Nothing
    , _scdProject = pScdProject_
    , _scdSSLCertificate = pScdSSLCertificate_
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
scdRequestId :: Lens' SSLCertificatesDelete (Maybe Text)
scdRequestId
  = lens _scdRequestId (\ s a -> s{_scdRequestId = a})

-- | Project ID for this request.
scdProject :: Lens' SSLCertificatesDelete Text
scdProject
  = lens _scdProject (\ s a -> s{_scdProject = a})

-- | Name of the SslCertificate resource to delete.
scdSSLCertificate :: Lens' SSLCertificatesDelete Text
scdSSLCertificate
  = lens _scdSSLCertificate
      (\ s a -> s{_scdSSLCertificate = a})

instance GoogleRequest SSLCertificatesDelete where
        type Rs SSLCertificatesDelete = Operation
        type Scopes SSLCertificatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SSLCertificatesDelete'{..}
          = go _scdProject _scdSSLCertificate _scdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertificatesDeleteResource)
                      mempty
