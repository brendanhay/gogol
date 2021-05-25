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
-- Module      : Network.Google.Resource.Compute.RegionBackendServices.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified regional BackendService resource with the data
-- included in the request. For more information, see Backend services
-- overview.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionBackendServices.update@.
module Network.Google.Resource.Compute.RegionBackendServices.Update
    (
    -- * REST Resource
      RegionBackendServicesUpdateResource

    -- * Creating a Request
    , regionBackendServicesUpdate
    , RegionBackendServicesUpdate

    -- * Request Lenses
    , rbsuRequestId
    , rbsuProject
    , rbsuPayload
    , rbsuRegion
    , rbsuBackendService
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionBackendServices.update@ method which the
-- 'RegionBackendServicesUpdate' request conforms to.
type RegionBackendServicesUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "backendServices" :>
                   Capture "backendService" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BackendService :>
                           Put '[JSON] Operation

-- | Updates the specified regional BackendService resource with the data
-- included in the request. For more information, see Backend services
-- overview.
--
-- /See:/ 'regionBackendServicesUpdate' smart constructor.
data RegionBackendServicesUpdate =
  RegionBackendServicesUpdate'
    { _rbsuRequestId :: !(Maybe Text)
    , _rbsuProject :: !Text
    , _rbsuPayload :: !BackendService
    , _rbsuRegion :: !Text
    , _rbsuBackendService :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionBackendServicesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbsuRequestId'
--
-- * 'rbsuProject'
--
-- * 'rbsuPayload'
--
-- * 'rbsuRegion'
--
-- * 'rbsuBackendService'
regionBackendServicesUpdate
    :: Text -- ^ 'rbsuProject'
    -> BackendService -- ^ 'rbsuPayload'
    -> Text -- ^ 'rbsuRegion'
    -> Text -- ^ 'rbsuBackendService'
    -> RegionBackendServicesUpdate
regionBackendServicesUpdate pRbsuProject_ pRbsuPayload_ pRbsuRegion_ pRbsuBackendService_ =
  RegionBackendServicesUpdate'
    { _rbsuRequestId = Nothing
    , _rbsuProject = pRbsuProject_
    , _rbsuPayload = pRbsuPayload_
    , _rbsuRegion = pRbsuRegion_
    , _rbsuBackendService = pRbsuBackendService_
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
rbsuRequestId :: Lens' RegionBackendServicesUpdate (Maybe Text)
rbsuRequestId
  = lens _rbsuRequestId
      (\ s a -> s{_rbsuRequestId = a})

-- | Project ID for this request.
rbsuProject :: Lens' RegionBackendServicesUpdate Text
rbsuProject
  = lens _rbsuProject (\ s a -> s{_rbsuProject = a})

-- | Multipart request metadata.
rbsuPayload :: Lens' RegionBackendServicesUpdate BackendService
rbsuPayload
  = lens _rbsuPayload (\ s a -> s{_rbsuPayload = a})

-- | Name of the region scoping this request.
rbsuRegion :: Lens' RegionBackendServicesUpdate Text
rbsuRegion
  = lens _rbsuRegion (\ s a -> s{_rbsuRegion = a})

-- | Name of the BackendService resource to update.
rbsuBackendService :: Lens' RegionBackendServicesUpdate Text
rbsuBackendService
  = lens _rbsuBackendService
      (\ s a -> s{_rbsuBackendService = a})

instance GoogleRequest RegionBackendServicesUpdate
         where
        type Rs RegionBackendServicesUpdate = Operation
        type Scopes RegionBackendServicesUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionBackendServicesUpdate'{..}
          = go _rbsuProject _rbsuRegion _rbsuBackendService
              _rbsuRequestId
              (Just AltJSON)
              _rbsuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesUpdateResource)
                      mempty
