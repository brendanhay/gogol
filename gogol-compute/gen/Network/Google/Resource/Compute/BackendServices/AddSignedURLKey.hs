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
-- Module      : Network.Google.Resource.Compute.BackendServices.AddSignedURLKey
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a key for validating requests with signed URLs for this backend
-- service.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.addSignedUrlKey@.
module Network.Google.Resource.Compute.BackendServices.AddSignedURLKey
    (
    -- * REST Resource
      BackendServicesAddSignedURLKeyResource

    -- * Creating a Request
    , backendServicesAddSignedURLKey
    , BackendServicesAddSignedURLKey

    -- * Request Lenses
    , bsasukRequestId
    , bsasukProject
    , bsasukPayload
    , bsasukBackendService
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.backendServices.addSignedUrlKey@ method which the
-- 'BackendServicesAddSignedURLKey' request conforms to.
type BackendServicesAddSignedURLKeyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   "addSignedUrlKey" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SignedURLKey :>
                           Post '[JSON] Operation

-- | Adds a key for validating requests with signed URLs for this backend
-- service.
--
-- /See:/ 'backendServicesAddSignedURLKey' smart constructor.
data BackendServicesAddSignedURLKey =
  BackendServicesAddSignedURLKey'
    { _bsasukRequestId :: !(Maybe Text)
    , _bsasukProject :: !Text
    , _bsasukPayload :: !SignedURLKey
    , _bsasukBackendService :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendServicesAddSignedURLKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsasukRequestId'
--
-- * 'bsasukProject'
--
-- * 'bsasukPayload'
--
-- * 'bsasukBackendService'
backendServicesAddSignedURLKey
    :: Text -- ^ 'bsasukProject'
    -> SignedURLKey -- ^ 'bsasukPayload'
    -> Text -- ^ 'bsasukBackendService'
    -> BackendServicesAddSignedURLKey
backendServicesAddSignedURLKey pBsasukProject_ pBsasukPayload_ pBsasukBackendService_ =
  BackendServicesAddSignedURLKey'
    { _bsasukRequestId = Nothing
    , _bsasukProject = pBsasukProject_
    , _bsasukPayload = pBsasukPayload_
    , _bsasukBackendService = pBsasukBackendService_
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
bsasukRequestId :: Lens' BackendServicesAddSignedURLKey (Maybe Text)
bsasukRequestId
  = lens _bsasukRequestId
      (\ s a -> s{_bsasukRequestId = a})

-- | Project ID for this request.
bsasukProject :: Lens' BackendServicesAddSignedURLKey Text
bsasukProject
  = lens _bsasukProject
      (\ s a -> s{_bsasukProject = a})

-- | Multipart request metadata.
bsasukPayload :: Lens' BackendServicesAddSignedURLKey SignedURLKey
bsasukPayload
  = lens _bsasukPayload
      (\ s a -> s{_bsasukPayload = a})

-- | Name of the BackendService resource to which the Signed URL Key should
-- be added. The name should conform to RFC1035.
bsasukBackendService :: Lens' BackendServicesAddSignedURLKey Text
bsasukBackendService
  = lens _bsasukBackendService
      (\ s a -> s{_bsasukBackendService = a})

instance GoogleRequest BackendServicesAddSignedURLKey
         where
        type Rs BackendServicesAddSignedURLKey = Operation
        type Scopes BackendServicesAddSignedURLKey =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendServicesAddSignedURLKey'{..}
          = go _bsasukProject _bsasukBackendService
              _bsasukRequestId
              (Just AltJSON)
              _bsasukPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BackendServicesAddSignedURLKeyResource)
                      mempty
