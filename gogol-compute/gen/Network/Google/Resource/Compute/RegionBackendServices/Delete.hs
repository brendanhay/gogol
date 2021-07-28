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
-- Module      : Network.Google.Resource.Compute.RegionBackendServices.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified regional BackendService resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionBackendServices.delete@.
module Network.Google.Resource.Compute.RegionBackendServices.Delete
    (
    -- * REST Resource
      RegionBackendServicesDeleteResource

    -- * Creating a Request
    , regionBackendServicesDelete
    , RegionBackendServicesDelete

    -- * Request Lenses
    , rbsdRequestId
    , rbsdProject
    , rbsdRegion
    , rbsdBackendService
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionBackendServices.delete@ method which the
-- 'RegionBackendServicesDelete' request conforms to.
type RegionBackendServicesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "backendServices" :>
                   Capture "backendService" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified regional BackendService resource.
--
-- /See:/ 'regionBackendServicesDelete' smart constructor.
data RegionBackendServicesDelete =
  RegionBackendServicesDelete'
    { _rbsdRequestId :: !(Maybe Text)
    , _rbsdProject :: !Text
    , _rbsdRegion :: !Text
    , _rbsdBackendService :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionBackendServicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbsdRequestId'
--
-- * 'rbsdProject'
--
-- * 'rbsdRegion'
--
-- * 'rbsdBackendService'
regionBackendServicesDelete
    :: Text -- ^ 'rbsdProject'
    -> Text -- ^ 'rbsdRegion'
    -> Text -- ^ 'rbsdBackendService'
    -> RegionBackendServicesDelete
regionBackendServicesDelete pRbsdProject_ pRbsdRegion_ pRbsdBackendService_ =
  RegionBackendServicesDelete'
    { _rbsdRequestId = Nothing
    , _rbsdProject = pRbsdProject_
    , _rbsdRegion = pRbsdRegion_
    , _rbsdBackendService = pRbsdBackendService_
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
rbsdRequestId :: Lens' RegionBackendServicesDelete (Maybe Text)
rbsdRequestId
  = lens _rbsdRequestId
      (\ s a -> s{_rbsdRequestId = a})

-- | Project ID for this request.
rbsdProject :: Lens' RegionBackendServicesDelete Text
rbsdProject
  = lens _rbsdProject (\ s a -> s{_rbsdProject = a})

-- | Name of the region scoping this request.
rbsdRegion :: Lens' RegionBackendServicesDelete Text
rbsdRegion
  = lens _rbsdRegion (\ s a -> s{_rbsdRegion = a})

-- | Name of the BackendService resource to delete.
rbsdBackendService :: Lens' RegionBackendServicesDelete Text
rbsdBackendService
  = lens _rbsdBackendService
      (\ s a -> s{_rbsdBackendService = a})

instance GoogleRequest RegionBackendServicesDelete
         where
        type Rs RegionBackendServicesDelete = Operation
        type Scopes RegionBackendServicesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionBackendServicesDelete'{..}
          = go _rbsdProject _rbsdRegion _rbsdBackendService
              _rbsdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesDeleteResource)
                      mempty
