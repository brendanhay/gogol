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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.DeletePerInstanceConfigs
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes selected per-instance configs for the managed instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.deletePerInstanceConfigs@.
module Network.Google.Resource.Compute.InstanceGroupManagers.DeletePerInstanceConfigs
    (
    -- * REST Resource
      InstanceGroupManagersDeletePerInstanceConfigsResource

    -- * Creating a Request
    , instanceGroupManagersDeletePerInstanceConfigs
    , InstanceGroupManagersDeletePerInstanceConfigs

    -- * Request Lenses
    , igmdpicProject
    , igmdpicInstanceGroupManager
    , igmdpicZone
    , igmdpicPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.deletePerInstanceConfigs@ method which the
-- 'InstanceGroupManagersDeletePerInstanceConfigs' request conforms to.
type InstanceGroupManagersDeletePerInstanceConfigsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "deletePerInstanceConfigs" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           InstanceGroupManagersDeletePerInstanceConfigsReq
                           :> Post '[JSON] Operation

-- | Deletes selected per-instance configs for the managed instance group.
--
-- /See:/ 'instanceGroupManagersDeletePerInstanceConfigs' smart constructor.
data InstanceGroupManagersDeletePerInstanceConfigs =
  InstanceGroupManagersDeletePerInstanceConfigs'
    { _igmdpicProject :: !Text
    , _igmdpicInstanceGroupManager :: !Text
    , _igmdpicZone :: !Text
    , _igmdpicPayload :: !InstanceGroupManagersDeletePerInstanceConfigsReq
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersDeletePerInstanceConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmdpicProject'
--
-- * 'igmdpicInstanceGroupManager'
--
-- * 'igmdpicZone'
--
-- * 'igmdpicPayload'
instanceGroupManagersDeletePerInstanceConfigs
    :: Text -- ^ 'igmdpicProject'
    -> Text -- ^ 'igmdpicInstanceGroupManager'
    -> Text -- ^ 'igmdpicZone'
    -> InstanceGroupManagersDeletePerInstanceConfigsReq -- ^ 'igmdpicPayload'
    -> InstanceGroupManagersDeletePerInstanceConfigs
instanceGroupManagersDeletePerInstanceConfigs pIgmdpicProject_ pIgmdpicInstanceGroupManager_ pIgmdpicZone_ pIgmdpicPayload_ =
  InstanceGroupManagersDeletePerInstanceConfigs'
    { _igmdpicProject = pIgmdpicProject_
    , _igmdpicInstanceGroupManager = pIgmdpicInstanceGroupManager_
    , _igmdpicZone = pIgmdpicZone_
    , _igmdpicPayload = pIgmdpicPayload_
    }


-- | Project ID for this request.
igmdpicProject :: Lens' InstanceGroupManagersDeletePerInstanceConfigs Text
igmdpicProject
  = lens _igmdpicProject
      (\ s a -> s{_igmdpicProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
igmdpicInstanceGroupManager :: Lens' InstanceGroupManagersDeletePerInstanceConfigs Text
igmdpicInstanceGroupManager
  = lens _igmdpicInstanceGroupManager
      (\ s a -> s{_igmdpicInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located. It
-- should conform to RFC1035.
igmdpicZone :: Lens' InstanceGroupManagersDeletePerInstanceConfigs Text
igmdpicZone
  = lens _igmdpicZone (\ s a -> s{_igmdpicZone = a})

-- | Multipart request metadata.
igmdpicPayload :: Lens' InstanceGroupManagersDeletePerInstanceConfigs InstanceGroupManagersDeletePerInstanceConfigsReq
igmdpicPayload
  = lens _igmdpicPayload
      (\ s a -> s{_igmdpicPayload = a})

instance GoogleRequest
           InstanceGroupManagersDeletePerInstanceConfigs
         where
        type Rs InstanceGroupManagersDeletePerInstanceConfigs
             = Operation
        type Scopes
               InstanceGroupManagersDeletePerInstanceConfigs
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersDeletePerInstanceConfigs'{..}
          = go _igmdpicProject _igmdpicZone
              _igmdpicInstanceGroupManager
              (Just AltJSON)
              _igmdpicPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersDeletePerInstanceConfigsResource)
                      mempty
