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
-- Module      : Network.Google.Resource.Compute.BackendServices.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified BackendService resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.delete@.
module Network.Google.Resource.Compute.BackendServices.Delete
    (
    -- * REST Resource
      BackendServicesDeleteResource

    -- * Creating a Request
    , backendServicesDelete
    , BackendServicesDelete

    -- * Request Lenses
    , bsdRequestId
    , bsdProject
    , bsdBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.delete@ method which the
-- 'BackendServicesDelete' request conforms to.
type BackendServicesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified BackendService resource.
--
-- /See:/ 'backendServicesDelete' smart constructor.
data BackendServicesDelete = BackendServicesDelete'
    { _bsdRequestId      :: !(Maybe Text)
    , _bsdProject        :: !Text
    , _bsdBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsdRequestId'
--
-- * 'bsdProject'
--
-- * 'bsdBackendService'
backendServicesDelete
    :: Text -- ^ 'bsdProject'
    -> Text -- ^ 'bsdBackendService'
    -> BackendServicesDelete
backendServicesDelete pBsdProject_ pBsdBackendService_ =
    BackendServicesDelete'
    { _bsdRequestId = Nothing
    , _bsdProject = pBsdProject_
    , _bsdBackendService = pBsdBackendService_
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
bsdRequestId :: Lens' BackendServicesDelete (Maybe Text)
bsdRequestId
  = lens _bsdRequestId (\ s a -> s{_bsdRequestId = a})

-- | Project ID for this request.
bsdProject :: Lens' BackendServicesDelete Text
bsdProject
  = lens _bsdProject (\ s a -> s{_bsdProject = a})

-- | Name of the BackendService resource to delete.
bsdBackendService :: Lens' BackendServicesDelete Text
bsdBackendService
  = lens _bsdBackendService
      (\ s a -> s{_bsdBackendService = a})

instance GoogleRequest BackendServicesDelete where
        type Rs BackendServicesDelete = Operation
        type Scopes BackendServicesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendServicesDelete'{..}
          = go _bsdProject _bsdBackendService _bsdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesDeleteResource)
                      mempty
