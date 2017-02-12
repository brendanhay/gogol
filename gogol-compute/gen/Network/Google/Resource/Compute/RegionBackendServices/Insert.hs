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
-- using the data included in the request. There are several restrictions
-- and guidelines to keep in mind when creating a regional backend service.
-- Read Restrictions and Guidelines for more information.
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
    , rbsiProject
    , rbsiPayload
    , rbsiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

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
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BackendService :>
                       Post '[JSON] Operation

-- | Creates a regional BackendService resource in the specified project
-- using the data included in the request. There are several restrictions
-- and guidelines to keep in mind when creating a regional backend service.
-- Read Restrictions and Guidelines for more information.
--
-- /See:/ 'regionBackendServicesInsert' smart constructor.
data RegionBackendServicesInsert = RegionBackendServicesInsert'
    { _rbsiProject :: !Text
    , _rbsiPayload :: !BackendService
    , _rbsiRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionBackendServicesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    { _rbsiProject = pRbsiProject_
    , _rbsiPayload = pRbsiPayload_
    , _rbsiRegion = pRbsiRegion_
    }

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
          = go _rbsiProject _rbsiRegion (Just AltJSON)
              _rbsiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesInsertResource)
                      mempty
