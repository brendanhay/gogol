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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Resize
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resizes the managed instance group up or down. If resized up, new
-- instances are created using the current instance template. If resized
-- down, instances are removed in the order outlined in Resizing a managed
-- instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @replicapool.instanceGroupManagers.resize@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Resize
    (
    -- * REST Resource
      InstanceGroupManagersResizeResource

    -- * Creating a Request
    , instanceGroupManagersResize
    , InstanceGroupManagersResize

    -- * Request Lenses
    , igmrProject
    , igmrSize
    , igmrInstanceGroupManager
    , igmrZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.instanceGroupManagers.resize@ method which the
-- 'InstanceGroupManagersResize' request conforms to.
type InstanceGroupManagersResizeResource =
     "replicapool" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     "resize" :>
                       QueryParam "size" (JSONText Int32) :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Resizes the managed instance group up or down. If resized up, new
-- instances are created using the current instance template. If resized
-- down, instances are removed in the order outlined in Resizing a managed
-- instance group.
--
-- /See:/ 'instanceGroupManagersResize' smart constructor.
data InstanceGroupManagersResize = InstanceGroupManagersResize
    { _igmrProject              :: !Text
    , _igmrSize                 :: !(JSONText Int32)
    , _igmrInstanceGroupManager :: !Text
    , _igmrZone                 :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersResize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmrProject'
--
-- * 'igmrSize'
--
-- * 'igmrInstanceGroupManager'
--
-- * 'igmrZone'
instanceGroupManagersResize
    :: Text -- ^ 'igmrProject'
    -> Int32 -- ^ 'igmrSize'
    -> Text -- ^ 'igmrInstanceGroupManager'
    -> Text -- ^ 'igmrZone'
    -> InstanceGroupManagersResize
instanceGroupManagersResize pIgmrProject_ pIgmrSize_ pIgmrInstanceGroupManager_ pIgmrZone_ =
    InstanceGroupManagersResize
    { _igmrProject = pIgmrProject_
    , _igmrSize = _Coerce # pIgmrSize_
    , _igmrInstanceGroupManager = pIgmrInstanceGroupManager_
    , _igmrZone = pIgmrZone_
    }

-- | The Google Developers Console project name.
igmrProject :: Lens' InstanceGroupManagersResize Text
igmrProject
  = lens _igmrProject (\ s a -> s{_igmrProject = a})

-- | Number of instances that should exist in this Instance Group Manager.
igmrSize :: Lens' InstanceGroupManagersResize Int32
igmrSize
  = lens _igmrSize (\ s a -> s{_igmrSize = a}) .
      _Coerce

-- | The name of the instance group manager.
igmrInstanceGroupManager :: Lens' InstanceGroupManagersResize Text
igmrInstanceGroupManager
  = lens _igmrInstanceGroupManager
      (\ s a -> s{_igmrInstanceGroupManager = a})

-- | The name of the zone in which the instance group manager resides.
igmrZone :: Lens' InstanceGroupManagersResize Text
igmrZone = lens _igmrZone (\ s a -> s{_igmrZone = a})

instance GoogleRequest InstanceGroupManagersResize
         where
        type Rs InstanceGroupManagersResize = Operation
        requestClient InstanceGroupManagersResize{..}
          = go _igmrProject _igmrZone _igmrInstanceGroupManager
              (Just _igmrSize)
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersResizeResource)
                      mempty
