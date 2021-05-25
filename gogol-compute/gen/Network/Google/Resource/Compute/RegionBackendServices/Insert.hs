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
-- Module      : Network.Google.Resource.Compute.RegionBackendServices.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a regional BackendService resource in the specified project
-- using the data included in the request. For more information, see
-- Backend services overview.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionBackendServices.insert@.
module Network.Google.Resource.Compute.RegionBackendServices.Insert
    (
    -- * REST Resource
      RegionBackendServicesInsertResource

    -- * Creating a Request
    , regionBackendServicesInsert
    , RegionBackendServicesInsert

    -- * Request Lenses
    , rbsiRequestId
    , rbsiProject
    , rbsiPayload
    , rbsiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionBackendServices.insert@ method which the
-- 'RegionBackendServicesInsert' request conforms to.
type RegionBackendServicesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "backendServices" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BackendService :>
                         Post '[JSON] Operation

-- | Creates a regional BackendService resource in the specified project
-- using the data included in the request. For more information, see
-- Backend services overview.
--
-- /See:/ 'regionBackendServicesInsert' smart constructor.
data RegionBackendServicesInsert =
  RegionBackendServicesInsert'
    { _rbsiRequestId :: !(Maybe Text)
    , _rbsiProject :: !Text
    , _rbsiPayload :: !BackendService
    , _rbsiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionBackendServicesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbsiRequestId'
--
-- * 'rbsiProject'
--
-- * 'rbsiPayload'
--
-- * 'rbsiRegion'
regionBackendServicesInsert
    :: Text -- ^ 'rbsiProject'
    -> BackendService -- ^ 'rbsiPayload'
    -> Text -- ^ 'rbsiRegion'
    -> RegionBackendServicesInsert
regionBackendServicesInsert pRbsiProject_ pRbsiPayload_ pRbsiRegion_ =
  RegionBackendServicesInsert'
    { _rbsiRequestId = Nothing
    , _rbsiProject = pRbsiProject_
    , _rbsiPayload = pRbsiPayload_
    , _rbsiRegion = pRbsiRegion_
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
rbsiRequestId :: Lens' RegionBackendServicesInsert (Maybe Text)
rbsiRequestId
  = lens _rbsiRequestId
      (\ s a -> s{_rbsiRequestId = a})

-- | Project ID for this request.
rbsiProject :: Lens' RegionBackendServicesInsert Text
rbsiProject
  = lens _rbsiProject (\ s a -> s{_rbsiProject = a})

-- | Multipart request metadata.
rbsiPayload :: Lens' RegionBackendServicesInsert BackendService
rbsiPayload
  = lens _rbsiPayload (\ s a -> s{_rbsiPayload = a})

-- | Name of the region scoping this request.
rbsiRegion :: Lens' RegionBackendServicesInsert Text
rbsiRegion
  = lens _rbsiRegion (\ s a -> s{_rbsiRegion = a})

instance GoogleRequest RegionBackendServicesInsert
         where
        type Rs RegionBackendServicesInsert = Operation
        type Scopes RegionBackendServicesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionBackendServicesInsert'{..}
          = go _rbsiProject _rbsiRegion _rbsiRequestId
              (Just AltJSON)
              _rbsiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesInsertResource)
                      mempty
