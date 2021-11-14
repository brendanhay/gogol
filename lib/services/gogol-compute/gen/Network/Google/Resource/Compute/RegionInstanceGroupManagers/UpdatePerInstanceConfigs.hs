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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.UpdatePerInstanceConfigs
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts or updates per-instance configs for the managed instance group.
-- perInstanceConfig.name serves as a key used to distinguish whether to
-- perform insert or patch.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.updatePerInstanceConfigs@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.UpdatePerInstanceConfigs
    (
    -- * REST Resource
      RegionInstanceGroupManagersUpdatePerInstanceConfigsResource

    -- * Creating a Request
    , regionInstanceGroupManagersUpdatePerInstanceConfigs
    , RegionInstanceGroupManagersUpdatePerInstanceConfigs

    -- * Request Lenses
    , rigmupicRequestId
    , rigmupicProject
    , rigmupicInstanceGroupManager
    , rigmupicPayload
    , rigmupicRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.updatePerInstanceConfigs@ method which the
-- 'RegionInstanceGroupManagersUpdatePerInstanceConfigs' request conforms to.
type RegionInstanceGroupManagersUpdatePerInstanceConfigsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "updatePerInstanceConfigs" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupManagerUpdateInstanceConfigReq
                             :> Post '[JSON] Operation

-- | Inserts or updates per-instance configs for the managed instance group.
-- perInstanceConfig.name serves as a key used to distinguish whether to
-- perform insert or patch.
--
-- /See:/ 'regionInstanceGroupManagersUpdatePerInstanceConfigs' smart constructor.
data RegionInstanceGroupManagersUpdatePerInstanceConfigs =
  RegionInstanceGroupManagersUpdatePerInstanceConfigs'
    { _rigmupicRequestId :: !(Maybe Text)
    , _rigmupicProject :: !Text
    , _rigmupicInstanceGroupManager :: !Text
    , _rigmupicPayload :: !RegionInstanceGroupManagerUpdateInstanceConfigReq
    , _rigmupicRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersUpdatePerInstanceConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmupicRequestId'
--
-- * 'rigmupicProject'
--
-- * 'rigmupicInstanceGroupManager'
--
-- * 'rigmupicPayload'
--
-- * 'rigmupicRegion'
regionInstanceGroupManagersUpdatePerInstanceConfigs
    :: Text -- ^ 'rigmupicProject'
    -> Text -- ^ 'rigmupicInstanceGroupManager'
    -> RegionInstanceGroupManagerUpdateInstanceConfigReq -- ^ 'rigmupicPayload'
    -> Text -- ^ 'rigmupicRegion'
    -> RegionInstanceGroupManagersUpdatePerInstanceConfigs
regionInstanceGroupManagersUpdatePerInstanceConfigs pRigmupicProject_ pRigmupicInstanceGroupManager_ pRigmupicPayload_ pRigmupicRegion_ =
  RegionInstanceGroupManagersUpdatePerInstanceConfigs'
    { _rigmupicRequestId = Nothing
    , _rigmupicProject = pRigmupicProject_
    , _rigmupicInstanceGroupManager = pRigmupicInstanceGroupManager_
    , _rigmupicPayload = pRigmupicPayload_
    , _rigmupicRegion = pRigmupicRegion_
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
rigmupicRequestId :: Lens' RegionInstanceGroupManagersUpdatePerInstanceConfigs (Maybe Text)
rigmupicRequestId
  = lens _rigmupicRequestId
      (\ s a -> s{_rigmupicRequestId = a})

-- | Project ID for this request.
rigmupicProject :: Lens' RegionInstanceGroupManagersUpdatePerInstanceConfigs Text
rigmupicProject
  = lens _rigmupicProject
      (\ s a -> s{_rigmupicProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
rigmupicInstanceGroupManager :: Lens' RegionInstanceGroupManagersUpdatePerInstanceConfigs Text
rigmupicInstanceGroupManager
  = lens _rigmupicInstanceGroupManager
      (\ s a -> s{_rigmupicInstanceGroupManager = a})

-- | Multipart request metadata.
rigmupicPayload :: Lens' RegionInstanceGroupManagersUpdatePerInstanceConfigs RegionInstanceGroupManagerUpdateInstanceConfigReq
rigmupicPayload
  = lens _rigmupicPayload
      (\ s a -> s{_rigmupicPayload = a})

-- | Name of the region scoping this request, should conform to RFC1035.
rigmupicRegion :: Lens' RegionInstanceGroupManagersUpdatePerInstanceConfigs Text
rigmupicRegion
  = lens _rigmupicRegion
      (\ s a -> s{_rigmupicRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersUpdatePerInstanceConfigs
         where
        type Rs
               RegionInstanceGroupManagersUpdatePerInstanceConfigs
             = Operation
        type Scopes
               RegionInstanceGroupManagersUpdatePerInstanceConfigs
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersUpdatePerInstanceConfigs'{..}
          = go _rigmupicProject _rigmupicRegion
              _rigmupicInstanceGroupManager
              _rigmupicRequestId
              (Just AltJSON)
              _rigmupicPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersUpdatePerInstanceConfigsResource)
                      mempty
