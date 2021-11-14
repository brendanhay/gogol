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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.PatchPerInstanceConfigs
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts or patches per-instance configs for the managed instance group.
-- perInstanceConfig.name serves as a key used to distinguish whether to
-- perform insert or patch.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.patchPerInstanceConfigs@.
module Network.Google.Resource.Compute.InstanceGroupManagers.PatchPerInstanceConfigs
    (
    -- * REST Resource
      InstanceGroupManagersPatchPerInstanceConfigsResource

    -- * Creating a Request
    , instanceGroupManagersPatchPerInstanceConfigs
    , InstanceGroupManagersPatchPerInstanceConfigs

    -- * Request Lenses
    , igmppicRequestId
    , igmppicProject
    , igmppicInstanceGroupManager
    , igmppicZone
    , igmppicPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.patchPerInstanceConfigs@ method which the
-- 'InstanceGroupManagersPatchPerInstanceConfigs' request conforms to.
type InstanceGroupManagersPatchPerInstanceConfigsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "patchPerInstanceConfigs" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstanceGroupManagersPatchPerInstanceConfigsReq
                             :> Post '[JSON] Operation

-- | Inserts or patches per-instance configs for the managed instance group.
-- perInstanceConfig.name serves as a key used to distinguish whether to
-- perform insert or patch.
--
-- /See:/ 'instanceGroupManagersPatchPerInstanceConfigs' smart constructor.
data InstanceGroupManagersPatchPerInstanceConfigs =
  InstanceGroupManagersPatchPerInstanceConfigs'
    { _igmppicRequestId :: !(Maybe Text)
    , _igmppicProject :: !Text
    , _igmppicInstanceGroupManager :: !Text
    , _igmppicZone :: !Text
    , _igmppicPayload :: !InstanceGroupManagersPatchPerInstanceConfigsReq
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersPatchPerInstanceConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmppicRequestId'
--
-- * 'igmppicProject'
--
-- * 'igmppicInstanceGroupManager'
--
-- * 'igmppicZone'
--
-- * 'igmppicPayload'
instanceGroupManagersPatchPerInstanceConfigs
    :: Text -- ^ 'igmppicProject'
    -> Text -- ^ 'igmppicInstanceGroupManager'
    -> Text -- ^ 'igmppicZone'
    -> InstanceGroupManagersPatchPerInstanceConfigsReq -- ^ 'igmppicPayload'
    -> InstanceGroupManagersPatchPerInstanceConfigs
instanceGroupManagersPatchPerInstanceConfigs pIgmppicProject_ pIgmppicInstanceGroupManager_ pIgmppicZone_ pIgmppicPayload_ =
  InstanceGroupManagersPatchPerInstanceConfigs'
    { _igmppicRequestId = Nothing
    , _igmppicProject = pIgmppicProject_
    , _igmppicInstanceGroupManager = pIgmppicInstanceGroupManager_
    , _igmppicZone = pIgmppicZone_
    , _igmppicPayload = pIgmppicPayload_
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
igmppicRequestId :: Lens' InstanceGroupManagersPatchPerInstanceConfigs (Maybe Text)
igmppicRequestId
  = lens _igmppicRequestId
      (\ s a -> s{_igmppicRequestId = a})

-- | Project ID for this request.
igmppicProject :: Lens' InstanceGroupManagersPatchPerInstanceConfigs Text
igmppicProject
  = lens _igmppicProject
      (\ s a -> s{_igmppicProject = a})

-- | The name of the managed instance group. It should conform to RFC1035.
igmppicInstanceGroupManager :: Lens' InstanceGroupManagersPatchPerInstanceConfigs Text
igmppicInstanceGroupManager
  = lens _igmppicInstanceGroupManager
      (\ s a -> s{_igmppicInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located. It
-- should conform to RFC1035.
igmppicZone :: Lens' InstanceGroupManagersPatchPerInstanceConfigs Text
igmppicZone
  = lens _igmppicZone (\ s a -> s{_igmppicZone = a})

-- | Multipart request metadata.
igmppicPayload :: Lens' InstanceGroupManagersPatchPerInstanceConfigs InstanceGroupManagersPatchPerInstanceConfigsReq
igmppicPayload
  = lens _igmppicPayload
      (\ s a -> s{_igmppicPayload = a})

instance GoogleRequest
           InstanceGroupManagersPatchPerInstanceConfigs
         where
        type Rs InstanceGroupManagersPatchPerInstanceConfigs
             = Operation
        type Scopes
               InstanceGroupManagersPatchPerInstanceConfigs
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersPatchPerInstanceConfigs'{..}
          = go _igmppicProject _igmppicZone
              _igmppicInstanceGroupManager
              _igmppicRequestId
              (Just AltJSON)
              _igmppicPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           InstanceGroupManagersPatchPerInstanceConfigsResource)
                      mempty
