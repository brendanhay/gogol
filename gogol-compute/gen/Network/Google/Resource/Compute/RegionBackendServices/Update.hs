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
-- included in the request. There are several restrictions and guidelines
-- to keep in mind when updating a backend service. Read Restrictions and
-- Guidelines for more information.
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
    , rbsuProject
    , rbsuPayload
    , rbsuRegion
    , rbsuBackendService
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BackendService :>
                         Put '[JSON] Operation

-- | Updates the specified regional BackendService resource with the data
-- included in the request. There are several restrictions and guidelines
-- to keep in mind when updating a backend service. Read Restrictions and
-- Guidelines for more information.
--
-- /See:/ 'regionBackendServicesUpdate' smart constructor.
data RegionBackendServicesUpdate = RegionBackendServicesUpdate'
    { _rbsuProject        :: !Text
    , _rbsuPayload        :: !BackendService
    , _rbsuRegion         :: !Text
    , _rbsuBackendService :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionBackendServicesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _rbsuProject = pRbsuProject_
    , _rbsuPayload = pRbsuPayload_
    , _rbsuRegion = pRbsuRegion_
    , _rbsuBackendService = pRbsuBackendService_
    }

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
              (Just AltJSON)
              _rbsuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesUpdateResource)
                      mempty
