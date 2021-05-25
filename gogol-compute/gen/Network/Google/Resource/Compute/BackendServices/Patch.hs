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
-- Module      : Network.Google.Resource.Compute.BackendServices.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified BackendService resource with the data included in
-- the request. For more information, see Backend services overview. This
-- method supports PATCH semantics and uses the JSON merge patch format and
-- processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.patch@.
module Network.Google.Resource.Compute.BackendServices.Patch
    (
    -- * REST Resource
      BackendServicesPatchResource

    -- * Creating a Request
    , backendServicesPatch
    , BackendServicesPatch

    -- * Request Lenses
    , bspRequestId
    , bspProject
    , bspPayload
    , bspBackendService
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.backendServices.patch@ method which the
-- 'BackendServicesPatch' request conforms to.
type BackendServicesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BackendService :>
                         Patch '[JSON] Operation

-- | Patches the specified BackendService resource with the data included in
-- the request. For more information, see Backend services overview. This
-- method supports PATCH semantics and uses the JSON merge patch format and
-- processing rules.
--
-- /See:/ 'backendServicesPatch' smart constructor.
data BackendServicesPatch =
  BackendServicesPatch'
    { _bspRequestId :: !(Maybe Text)
    , _bspProject :: !Text
    , _bspPayload :: !BackendService
    , _bspBackendService :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendServicesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bspRequestId'
--
-- * 'bspProject'
--
-- * 'bspPayload'
--
-- * 'bspBackendService'
backendServicesPatch
    :: Text -- ^ 'bspProject'
    -> BackendService -- ^ 'bspPayload'
    -> Text -- ^ 'bspBackendService'
    -> BackendServicesPatch
backendServicesPatch pBspProject_ pBspPayload_ pBspBackendService_ =
  BackendServicesPatch'
    { _bspRequestId = Nothing
    , _bspProject = pBspProject_
    , _bspPayload = pBspPayload_
    , _bspBackendService = pBspBackendService_
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
bspRequestId :: Lens' BackendServicesPatch (Maybe Text)
bspRequestId
  = lens _bspRequestId (\ s a -> s{_bspRequestId = a})

-- | Project ID for this request.
bspProject :: Lens' BackendServicesPatch Text
bspProject
  = lens _bspProject (\ s a -> s{_bspProject = a})

-- | Multipart request metadata.
bspPayload :: Lens' BackendServicesPatch BackendService
bspPayload
  = lens _bspPayload (\ s a -> s{_bspPayload = a})

-- | Name of the BackendService resource to patch.
bspBackendService :: Lens' BackendServicesPatch Text
bspBackendService
  = lens _bspBackendService
      (\ s a -> s{_bspBackendService = a})

instance GoogleRequest BackendServicesPatch where
        type Rs BackendServicesPatch = Operation
        type Scopes BackendServicesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendServicesPatch'{..}
          = go _bspProject _bspBackendService _bspRequestId
              (Just AltJSON)
              _bspPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesPatchResource)
                      mempty
