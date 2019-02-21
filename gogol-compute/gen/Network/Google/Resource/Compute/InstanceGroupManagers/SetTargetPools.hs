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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the target pools to which all instances in this managed
-- instance group are assigned. The target pools automatically apply to all
-- of the instances in the managed instance group. This operation is marked
-- DONE when you make the request even if the instances have not yet been
-- added to their target pools. The change might take some time to apply to
-- all of the instances in the group depending on the size of the group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.setTargetPools@.
module Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools
    (
    -- * REST Resource
      InstanceGroupManagersSetTargetPoolsResource

    -- * Creating a Request
    , instanceGroupManagersSetTargetPools
    , InstanceGroupManagersSetTargetPools

    -- * Request Lenses
    , igmstpRequestId
    , igmstpProject
    , igmstpInstanceGroupManager
    , igmstpZone
    , igmstpPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.setTargetPools@ method which the
-- 'InstanceGroupManagersSetTargetPools' request conforms to.
type InstanceGroupManagersSetTargetPoolsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "setTargetPools" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             InstanceGroupManagersSetTargetPoolsRequest
                             :> Post '[JSON] Operation

-- | Modifies the target pools to which all instances in this managed
-- instance group are assigned. The target pools automatically apply to all
-- of the instances in the managed instance group. This operation is marked
-- DONE when you make the request even if the instances have not yet been
-- added to their target pools. The change might take some time to apply to
-- all of the instances in the group depending on the size of the group.
--
-- /See:/ 'instanceGroupManagersSetTargetPools' smart constructor.
data InstanceGroupManagersSetTargetPools =
  InstanceGroupManagersSetTargetPools'
    { _igmstpRequestId            :: !(Maybe Text)
    , _igmstpProject              :: !Text
    , _igmstpInstanceGroupManager :: !Text
    , _igmstpZone                 :: !Text
    , _igmstpPayload              :: !InstanceGroupManagersSetTargetPoolsRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersSetTargetPools' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmstpRequestId'
--
-- * 'igmstpProject'
--
-- * 'igmstpInstanceGroupManager'
--
-- * 'igmstpZone'
--
-- * 'igmstpPayload'
instanceGroupManagersSetTargetPools
    :: Text -- ^ 'igmstpProject'
    -> Text -- ^ 'igmstpInstanceGroupManager'
    -> Text -- ^ 'igmstpZone'
    -> InstanceGroupManagersSetTargetPoolsRequest -- ^ 'igmstpPayload'
    -> InstanceGroupManagersSetTargetPools
instanceGroupManagersSetTargetPools pIgmstpProject_ pIgmstpInstanceGroupManager_ pIgmstpZone_ pIgmstpPayload_ =
  InstanceGroupManagersSetTargetPools'
    { _igmstpRequestId = Nothing
    , _igmstpProject = pIgmstpProject_
    , _igmstpInstanceGroupManager = pIgmstpInstanceGroupManager_
    , _igmstpZone = pIgmstpZone_
    , _igmstpPayload = pIgmstpPayload_
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
igmstpRequestId :: Lens' InstanceGroupManagersSetTargetPools (Maybe Text)
igmstpRequestId
  = lens _igmstpRequestId
      (\ s a -> s{_igmstpRequestId = a})

-- | Project ID for this request.
igmstpProject :: Lens' InstanceGroupManagersSetTargetPools Text
igmstpProject
  = lens _igmstpProject
      (\ s a -> s{_igmstpProject = a})

-- | The name of the managed instance group.
igmstpInstanceGroupManager :: Lens' InstanceGroupManagersSetTargetPools Text
igmstpInstanceGroupManager
  = lens _igmstpInstanceGroupManager
      (\ s a -> s{_igmstpInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmstpZone :: Lens' InstanceGroupManagersSetTargetPools Text
igmstpZone
  = lens _igmstpZone (\ s a -> s{_igmstpZone = a})

-- | Multipart request metadata.
igmstpPayload :: Lens' InstanceGroupManagersSetTargetPools InstanceGroupManagersSetTargetPoolsRequest
igmstpPayload
  = lens _igmstpPayload
      (\ s a -> s{_igmstpPayload = a})

instance GoogleRequest
           InstanceGroupManagersSetTargetPools
         where
        type Rs InstanceGroupManagersSetTargetPools =
             Operation
        type Scopes InstanceGroupManagersSetTargetPools =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          InstanceGroupManagersSetTargetPools'{..}
          = go _igmstpProject _igmstpZone
              _igmstpInstanceGroupManager
              _igmstpRequestId
              (Just AltJSON)
              _igmstpPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersSetTargetPoolsResource)
                      mempty
