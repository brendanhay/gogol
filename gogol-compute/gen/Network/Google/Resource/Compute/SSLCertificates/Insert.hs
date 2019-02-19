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
-- Module      : Network.Google.Resource.Compute.SSLCertificates.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a SslCertificate resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslCertificates.insert@.
module Network.Google.Resource.Compute.SSLCertificates.Insert
    (
    -- * REST Resource
      SSLCertificatesInsertResource

    -- * Creating a Request
    , sslCertificatesInsert
    , SSLCertificatesInsert

    -- * Request Lenses
    , sciRequestId
    , sciProject
    , sciPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.sslCertificates.insert@ method which the
-- 'SSLCertificatesInsert' request conforms to.
type SSLCertificatesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslCertificates" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SSLCertificate :>
                       Post '[JSON] Operation

-- | Creates a SslCertificate resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'sslCertificatesInsert' smart constructor.
data SSLCertificatesInsert =
  SSLCertificatesInsert'
    { _sciRequestId :: !(Maybe Text)
    , _sciProject   :: !Text
    , _sciPayload   :: !SSLCertificate
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLCertificatesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sciRequestId'
--
-- * 'sciProject'
--
-- * 'sciPayload'
sslCertificatesInsert
    :: Text -- ^ 'sciProject'
    -> SSLCertificate -- ^ 'sciPayload'
    -> SSLCertificatesInsert
sslCertificatesInsert pSciProject_ pSciPayload_ =
  SSLCertificatesInsert'
    { _sciRequestId = Nothing
    , _sciProject = pSciProject_
    , _sciPayload = pSciPayload_
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
sciRequestId :: Lens' SSLCertificatesInsert (Maybe Text)
sciRequestId
  = lens _sciRequestId (\ s a -> s{_sciRequestId = a})

-- | Project ID for this request.
sciProject :: Lens' SSLCertificatesInsert Text
sciProject
  = lens _sciProject (\ s a -> s{_sciProject = a})

-- | Multipart request metadata.
sciPayload :: Lens' SSLCertificatesInsert SSLCertificate
sciPayload
  = lens _sciPayload (\ s a -> s{_sciPayload = a})

instance GoogleRequest SSLCertificatesInsert where
        type Rs SSLCertificatesInsert = Operation
        type Scopes SSLCertificatesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SSLCertificatesInsert'{..}
          = go _sciProject _sciRequestId (Just AltJSON)
              _sciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLCertificatesInsertResource)
                      mempty
