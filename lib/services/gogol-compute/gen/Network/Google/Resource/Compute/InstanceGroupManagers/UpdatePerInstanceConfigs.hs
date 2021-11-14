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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.UpdatePerInstanceConfigs
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.updatePerInstanceConfigs@.
module Network.Google.Resource.Compute.InstanceGroupManagers.UpdatePerInstanceConfigs
    (
    -- * REST Resource
      InstanceGroupManagersUpdatePerInstanceConfigsResource

    -- * Creating a Request
    , instanceGroupManagersUpdatePerInstanceConfigs
    , InstanceGroupManagersUpdatePerInstanceConfigs

    -- * Request Lenses
    , igmupicRequestId
    , igmupicProject
    , igmupicInstanceGroupManager
    , igmupicZone
    , igmupicPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.updatePerInstanceConfigs@ method which the
-- 'InstanceGroupManagersUpdatePerInstanceConfigs' request conforms to.
type InstanceGroupManagersUpdatePerInstanceConfigsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "updatePerInstanceConfigs" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstanceGroupManagersUpdatePerInstanceConfigsReq
                             :> Post '[JSON] Operation

-- | Inserts or updates per-instance configs for the managed instance group.
-- perInstanceConfig.name serves as a key used to distinguish whether to
-- perform insert or patch.
--
-- /See:/ 'instanceGroupManagersUpdatePerInstanceConfigs' smart constructor.
data InstanceGroupManagersUpdatePerInstanceConfigs =
  InstanceGroupManagersUpdatePerInstanceConfigs'
    { _igmupicRequestId :: !(Maybe Text)
    , _igmupicProject :: !Text
    , _igmupicInstanceGroupManager :: !Text
    , _igmupicZone :: !Text
    , _igmupicPayload :: !InstanceGroupManagersUpdatePerInstanceConfigsReq
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersUpdatePerInstanceConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmupicRequestId'
--
-- * 'igmupicProject'
--
-- * 'igmupicInstanceGroupManager'
--
-- * 'igmupicZone'
--
-- * 'igmupicPayload'
instanceGroupManagersUpdatePerInstanceConfigs
    :: Text -- ^ 'igmupicProject'
    -> Text -- ^ 'igmupicInstanceGroupManager'
    -> Text -- ^ 'igmupicZone'
    -> InstanceGroupManagersUpdatePerInstanceConfigsReq -- ^ 'igmupicPayload'
    -> InstanceGroupManagersUpdatePerInstanceConfigs
instanceGroupManagersUpdatePerInstanceConfigs pIgmupicProject_ pIgmupicInstanceGroupManager_ pIgmupicZone_ pIgmupicPayload_ =
  InstanceGroupManagersUpdatePerInstanceConfigs'
    { _igmupicRequestId = Nothing
    , _igmupicProject = pIgmupicProject_
    , _igmupicInstanceGroupManager = pIgmupicInstanceGroupManager_
    , _igmupicZone = pIgmupicZone_
    , _igmupicPayload = pIgmupicPayload_
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
igmupicRequestId :: Lens' InstanceGroupManagersUpdatePerInstanceConfigs (Maybe Text)
igmupicRequestId
  = lens _igmupicRequestId
      (\ s a -> s{_igmupicRequestId = a})

-- | Project ID for this request.
igmupicProject :: Lens' InstanceGroupManagersUpdatePerInstanceConfigs Text
igmupicProject
  = lens _igmupicProject
      (\ s a -> s{_igmupicProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
igmupicInstanceGroupManager :: Lens' InstanceGroupManagersUpdatePerInstanceConfigs Text
igmupicInstanceGroupManager
  = lens _igmupicInstanceGroupManager
      (\ s a -> s{_igmupicInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located. It
-- should conform to RFC1035.
igmupicZone :: Lens' InstanceGroupManagersUpdatePerInstanceConfigs Text
igmupicZone
  = lens _igmupicZone (\ s a -> s{_igmupicZone = a})

-- | Multipart request metadata.
igmupicPayload :: Lens' InstanceGroupManagersUpdatePerInstanceConfigs InstanceGroupManagersUpdatePerInstanceConfigsReq
igmupicPayload
  = lens _igmupicPayload
      (\ s a -> s{_igmupicPayload = a})

instance GoogleRequest
           InstanceGroupManagersUpdatePerInstanceConfigs
         where
        type Rs InstanceGroupManagersUpdatePerInstanceConfigs
             = Operation
        type Scopes
               InstanceGroupManagersUpdatePerInstanceConfigs
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersUpdatePerInstanceConfigs'{..}
          = go _igmupicProject _igmupicZone
              _igmupicInstanceGroupManager
              _igmupicRequestId
              (Just AltJSON)
              _igmupicPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersUpdatePerInstanceConfigsResource)
                      mempty
