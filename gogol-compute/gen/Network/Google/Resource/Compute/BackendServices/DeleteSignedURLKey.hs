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
-- Module      : Network.Google.Resource.Compute.BackendServices.DeleteSignedURLKey
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a key for validating requests with signed URLs for this backend
-- service.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.deleteSignedUrlKey@.
module Network.Google.Resource.Compute.BackendServices.DeleteSignedURLKey
    (
    -- * REST Resource
      BackendServicesDeleteSignedURLKeyResource

    -- * Creating a Request
    , backendServicesDeleteSignedURLKey
    , BackendServicesDeleteSignedURLKey

    -- * Request Lenses
    , bsdsukRequestId
    , bsdsukProject
    , bsdsukKeyName
    , bsdsukBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.deleteSignedUrlKey@ method which the
-- 'BackendServicesDeleteSignedURLKey' request conforms to.
type BackendServicesDeleteSignedURLKeyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   "deleteSignedUrlKey" :>
                     QueryParam "keyName" Text :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Deletes a key for validating requests with signed URLs for this backend
-- service.
--
-- /See:/ 'backendServicesDeleteSignedURLKey' smart constructor.
data BackendServicesDeleteSignedURLKey =
  BackendServicesDeleteSignedURLKey'
    { _bsdsukRequestId      :: !(Maybe Text)
    , _bsdsukProject        :: !Text
    , _bsdsukKeyName        :: !Text
    , _bsdsukBackendService :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BackendServicesDeleteSignedURLKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsdsukRequestId'
--
-- * 'bsdsukProject'
--
-- * 'bsdsukKeyName'
--
-- * 'bsdsukBackendService'
backendServicesDeleteSignedURLKey
    :: Text -- ^ 'bsdsukProject'
    -> Text -- ^ 'bsdsukKeyName'
    -> Text -- ^ 'bsdsukBackendService'
    -> BackendServicesDeleteSignedURLKey
backendServicesDeleteSignedURLKey pBsdsukProject_ pBsdsukKeyName_ pBsdsukBackendService_ =
  BackendServicesDeleteSignedURLKey'
    { _bsdsukRequestId = Nothing
    , _bsdsukProject = pBsdsukProject_
    , _bsdsukKeyName = pBsdsukKeyName_
    , _bsdsukBackendService = pBsdsukBackendService_
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
bsdsukRequestId :: Lens' BackendServicesDeleteSignedURLKey (Maybe Text)
bsdsukRequestId
  = lens _bsdsukRequestId
      (\ s a -> s{_bsdsukRequestId = a})

-- | Project ID for this request.
bsdsukProject :: Lens' BackendServicesDeleteSignedURLKey Text
bsdsukProject
  = lens _bsdsukProject
      (\ s a -> s{_bsdsukProject = a})

-- | The name of the Signed URL Key to delete.
bsdsukKeyName :: Lens' BackendServicesDeleteSignedURLKey Text
bsdsukKeyName
  = lens _bsdsukKeyName
      (\ s a -> s{_bsdsukKeyName = a})

-- | Name of the BackendService resource to which the Signed URL Key should
-- be added. The name should conform to RFC1035.
bsdsukBackendService :: Lens' BackendServicesDeleteSignedURLKey Text
bsdsukBackendService
  = lens _bsdsukBackendService
      (\ s a -> s{_bsdsukBackendService = a})

instance GoogleRequest
           BackendServicesDeleteSignedURLKey
         where
        type Rs BackendServicesDeleteSignedURLKey = Operation
        type Scopes BackendServicesDeleteSignedURLKey =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendServicesDeleteSignedURLKey'{..}
          = go _bsdsukProject _bsdsukBackendService
              (Just _bsdsukKeyName)
              _bsdsukRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BackendServicesDeleteSignedURLKeyResource)
                      mempty
