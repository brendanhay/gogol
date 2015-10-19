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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetTargetPools
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the target pools to which all new instances in this group are
-- assigned. Existing instances in the group are not affected.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.setTargetPools@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetTargetPools
    (
    -- * REST Resource
      InstanceGroupManagersSetTargetPoolsResource

    -- * Creating a Request
    , instanceGroupManagersSetTargetPools'
    , InstanceGroupManagersSetTargetPools'

    -- * Request Lenses
    , igmstpProject
    , igmstpInstanceGroupManager
    , igmstpZone
    , igmstpPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.instanceGroupManagers.setTargetPools@ method which the
-- 'InstanceGroupManagersSetTargetPools'' request conforms to.
type InstanceGroupManagersSetTargetPoolsResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "setTargetPools" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON]
                     InstanceGroupManagersSetTargetPoolsRequest
                     :> Post '[JSON] Operation

-- | Modifies the target pools to which all new instances in this group are
-- assigned. Existing instances in the group are not affected.
--
-- /See:/ 'instanceGroupManagersSetTargetPools'' smart constructor.
data InstanceGroupManagersSetTargetPools' = InstanceGroupManagersSetTargetPools'
    { _igmstpProject              :: !Text
    , _igmstpInstanceGroupManager :: !Text
    , _igmstpZone                 :: !Text
    , _igmstpPayload              :: !InstanceGroupManagersSetTargetPoolsRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetTargetPools'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmstpProject'
--
-- * 'igmstpInstanceGroupManager'
--
-- * 'igmstpZone'
--
-- * 'igmstpPayload'
instanceGroupManagersSetTargetPools'
    :: Text -- ^ 'igmstpProject'
    -> Text -- ^ 'igmstpInstanceGroupManager'
    -> Text -- ^ 'igmstpZone'
    -> InstanceGroupManagersSetTargetPoolsRequest -- ^ 'igmstpPayload'
    -> InstanceGroupManagersSetTargetPools'
instanceGroupManagersSetTargetPools' pIgmstpProject_ pIgmstpInstanceGroupManager_ pIgmstpZone_ pIgmstpPayload_ =
    InstanceGroupManagersSetTargetPools'
    { _igmstpProject = pIgmstpProject_
    , _igmstpInstanceGroupManager = pIgmstpInstanceGroupManager_
    , _igmstpZone = pIgmstpZone_
    , _igmstpPayload = pIgmstpPayload_
    }

-- | The Google Developers Console project name.
igmstpProject :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpProject
  = lens _igmstpProject
      (\ s a -> s{_igmstpProject = a})

-- | The name of the instance group manager.
igmstpInstanceGroupManager :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpInstanceGroupManager
  = lens _igmstpInstanceGroupManager
      (\ s a -> s{_igmstpInstanceGroupManager = a})

-- | The name of the zone in which the instance group manager resides.
igmstpZone :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpZone
  = lens _igmstpZone (\ s a -> s{_igmstpZone = a})

-- | Multipart request metadata.
igmstpPayload :: Lens' InstanceGroupManagersSetTargetPools' InstanceGroupManagersSetTargetPoolsRequest
igmstpPayload
  = lens _igmstpPayload
      (\ s a -> s{_igmstpPayload = a})

instance GoogleRequest
         InstanceGroupManagersSetTargetPools' where
        type Rs InstanceGroupManagersSetTargetPools' =
             Operation
        requestClient
          InstanceGroupManagersSetTargetPools'{..}
          = go _igmstpProject _igmstpZone
              _igmstpInstanceGroupManager
              (Just AltJSON)
              _igmstpPayload
              replicaPoolService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersSetTargetPoolsResource)
                      mempty
