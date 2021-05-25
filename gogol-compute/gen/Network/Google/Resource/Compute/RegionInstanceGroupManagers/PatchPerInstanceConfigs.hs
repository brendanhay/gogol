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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroupManagers.PatchPerInstanceConfigs
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts or patches per-instance configs for the managed instance group.
-- perInstanceConfig.name serves as a key used to distinguish whether to
-- perform insert or patch.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.patchPerInstanceConfigs@.
module Network.Google.Resource.Compute.RegionInstanceGroupManagers.PatchPerInstanceConfigs
    (
    -- * REST Resource
      RegionInstanceGroupManagersPatchPerInstanceConfigsResource

    -- * Creating a Request
    , regionInstanceGroupManagersPatchPerInstanceConfigs
    , RegionInstanceGroupManagersPatchPerInstanceConfigs

    -- * Request Lenses
    , rigmppicRequestId
    , rigmppicProject
    , rigmppicInstanceGroupManager
    , rigmppicPayload
    , rigmppicRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroupManagers.patchPerInstanceConfigs@ method which the
-- 'RegionInstanceGroupManagersPatchPerInstanceConfigs' request conforms to.
type RegionInstanceGroupManagersPatchPerInstanceConfigsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "patchPerInstanceConfigs" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             RegionInstanceGroupManagerPatchInstanceConfigReq
                             :> Post '[JSON] Operation

-- | Inserts or patches per-instance configs for the managed instance group.
-- perInstanceConfig.name serves as a key used to distinguish whether to
-- perform insert or patch.
--
-- /See:/ 'regionInstanceGroupManagersPatchPerInstanceConfigs' smart constructor.
data RegionInstanceGroupManagersPatchPerInstanceConfigs =
  RegionInstanceGroupManagersPatchPerInstanceConfigs'
    { _rigmppicRequestId :: !(Maybe Text)
    , _rigmppicProject :: !Text
    , _rigmppicInstanceGroupManager :: !Text
    , _rigmppicPayload :: !RegionInstanceGroupManagerPatchInstanceConfigReq
    , _rigmppicRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionInstanceGroupManagersPatchPerInstanceConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rigmppicRequestId'
--
-- * 'rigmppicProject'
--
-- * 'rigmppicInstanceGroupManager'
--
-- * 'rigmppicPayload'
--
-- * 'rigmppicRegion'
regionInstanceGroupManagersPatchPerInstanceConfigs
    :: Text -- ^ 'rigmppicProject'
    -> Text -- ^ 'rigmppicInstanceGroupManager'
    -> RegionInstanceGroupManagerPatchInstanceConfigReq -- ^ 'rigmppicPayload'
    -> Text -- ^ 'rigmppicRegion'
    -> RegionInstanceGroupManagersPatchPerInstanceConfigs
regionInstanceGroupManagersPatchPerInstanceConfigs pRigmppicProject_ pRigmppicInstanceGroupManager_ pRigmppicPayload_ pRigmppicRegion_ =
  RegionInstanceGroupManagersPatchPerInstanceConfigs'
    { _rigmppicRequestId = Nothing
    , _rigmppicProject = pRigmppicProject_
    , _rigmppicInstanceGroupManager = pRigmppicInstanceGroupManager_
    , _rigmppicPayload = pRigmppicPayload_
    , _rigmppicRegion = pRigmppicRegion_
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
rigmppicRequestId :: Lens' RegionInstanceGroupManagersPatchPerInstanceConfigs (Maybe Text)
rigmppicRequestId
  = lens _rigmppicRequestId
      (\ s a -> s{_rigmppicRequestId = a})

-- | Project ID for this request.
rigmppicProject :: Lens' RegionInstanceGroupManagersPatchPerInstanceConfigs Text
rigmppicProject
  = lens _rigmppicProject
      (\ s a -> s{_rigmppicProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
rigmppicInstanceGroupManager :: Lens' RegionInstanceGroupManagersPatchPerInstanceConfigs Text
rigmppicInstanceGroupManager
  = lens _rigmppicInstanceGroupManager
      (\ s a -> s{_rigmppicInstanceGroupManager = a})

-- | Multipart request metadata.
rigmppicPayload :: Lens' RegionInstanceGroupManagersPatchPerInstanceConfigs RegionInstanceGroupManagerPatchInstanceConfigReq
rigmppicPayload
  = lens _rigmppicPayload
      (\ s a -> s{_rigmppicPayload = a})

-- | Name of the region scoping this request, should conform to RFC1035.
rigmppicRegion :: Lens' RegionInstanceGroupManagersPatchPerInstanceConfigs Text
rigmppicRegion
  = lens _rigmppicRegion
      (\ s a -> s{_rigmppicRegion = a})

instance GoogleRequest
           RegionInstanceGroupManagersPatchPerInstanceConfigs
         where
        type Rs
               RegionInstanceGroupManagersPatchPerInstanceConfigs
             = Operation
        type Scopes
               RegionInstanceGroupManagersPatchPerInstanceConfigs
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          RegionInstanceGroupManagersPatchPerInstanceConfigs'{..}
          = go _rigmppicProject _rigmppicRegion
              _rigmppicInstanceGroupManager
              _rigmppicRequestId
              (Just AltJSON)
              _rigmppicPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           RegionInstanceGroupManagersPatchPerInstanceConfigsResource)
                      mempty
