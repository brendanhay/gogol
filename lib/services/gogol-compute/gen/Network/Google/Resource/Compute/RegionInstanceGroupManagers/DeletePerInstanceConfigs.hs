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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeletePerInstanceConfigs
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes selected per-instance configs for the managed instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.deletePerInstanceConfigs@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.DeletePerInstanceConfigs
    (
    -- * REST Resource
      RegionInstanceGroupManagersDeletePerInstanceConfigsResource

    -- * Creating a Request
    , regionInstanceGroupManagersDeletePerInstanceConfigs
    , RegionInstanceGroupManagersDeletePerInstanceConfigs

    -- * Request Lenses
    , rigmdpicProject
    , rigmdpicInstanceGroupManager
    , rigmdpicPayload
    , rigmdpicRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.deletePerInstanceConfigs@ method which the
-- 'RegionInstanceGroupManagersDeletePerInstanceConfigs' request conforms to.
type RegionInstanceGroupManagersDeletePerInstanceConfigsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "deletePerInstanceConfigs" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           RegionInstanceGroupManagerDeleteInstanceConfigReq
                           :> Post '[JSON] Operation

-- | Deletes selected per-instance configs for the managed instance group.
--
-- /See:/ 'regionInstanceGroupManagersDeletePerInstanceConfigs' smart constructor.
data RegionInstanceGroupManagersDeletePerInstanceConfigs =
  RegionInstanceGroupManagersDeletePerInstanceConfigs'
    { _rigmdpicProject :: !Text
    , _rigmdpicInstanceGroupManager :: !Text
    , _rigmdpicPayload :: !RegionInstanceGroupManagerDeleteInstanceConfigReq
    , _rigmdpicRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersDeletePerInstanceConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmdpicProject'
--
-- * 'rigmdpicInstanceGroupManager'
--
-- * 'rigmdpicPayload'
--
-- * 'rigmdpicRegion'
regionInstanceGroupManagersDeletePerInstanceConfigs
    :: Text -- ^ 'rigmdpicProject'
    -> Text -- ^ 'rigmdpicInstanceGroupManager'
    -> RegionInstanceGroupManagerDeleteInstanceConfigReq -- ^ 'rigmdpicPayload'
    -> Text -- ^ 'rigmdpicRegion'
    -> RegionInstanceGroupManagersDeletePerInstanceConfigs
regionInstanceGroupManagersDeletePerInstanceConfigs pRigmdpicProject_ pRigmdpicInstanceGroupManager_ pRigmdpicPayload_ pRigmdpicRegion_ =
  RegionInstanceGroupManagersDeletePerInstanceConfigs'
    { _rigmdpicProject = pRigmdpicProject_
    , _rigmdpicInstanceGroupManager = pRigmdpicInstanceGroupManager_
    , _rigmdpicPayload = pRigmdpicPayload_
    , _rigmdpicRegion = pRigmdpicRegion_
    }


-- | Project ID for this request.
rigmdpicProject :: Lens' RegionInstanceGroupManagersDeletePerInstanceConfigs Text
rigmdpicProject
  = lens _rigmdpicProject
      (\ s a -> s{_rigmdpicProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
rigmdpicInstanceGroupManager :: Lens' RegionInstanceGroupManagersDeletePerInstanceConfigs Text
rigmdpicInstanceGroupManager
  = lens _rigmdpicInstanceGroupManager
      (\ s a -> s{_rigmdpicInstanceGroupManager = a})

-- | Multipart request metadata.
rigmdpicPayload :: Lens' RegionInstanceGroupManagersDeletePerInstanceConfigs RegionInstanceGroupManagerDeleteInstanceConfigReq
rigmdpicPayload
  = lens _rigmdpicPayload
      (\ s a -> s{_rigmdpicPayload = a})

-- | Name of the region scoping this request, should conform to RFC1035.
rigmdpicRegion :: Lens' RegionInstanceGroupManagersDeletePerInstanceConfigs Text
rigmdpicRegion
  = lens _rigmdpicRegion
      (\ s a -> s{_rigmdpicRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersDeletePerInstanceConfigs
         where
        type Rs
               RegionInstanceGroupManagersDeletePerInstanceConfigs
             = Operation
        type Scopes
               RegionInstanceGroupManagersDeletePerInstanceConfigs
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersDeletePerInstanceConfigs'{..}
          = go _rigmdpicProject _rigmdpicRegion
              _rigmdpicInstanceGroupManager
              (Just AltJSON)
              _rigmdpicPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersDeletePerInstanceConfigsResource)
                      mempty
