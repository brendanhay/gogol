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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Resize
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resizes the managed instance group. If you increase the size, the group
-- creates new instances using the current instance template. If you
-- decrease the size, the group removes instances in the order that is
-- outlined in Resizing a managed instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersResize@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Resize
    (
    -- * REST Resource
      InstanceGroupManagersResizeResource

    -- * Creating a Request
    , instanceGroupManagersResize'
    , InstanceGroupManagersResize'

    -- * Request Lenses
    , igmrProject
    , igmrSize
    , igmrInstanceGroupManager
    , igmrZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersResize@ method which the
-- 'InstanceGroupManagersResize'' request conforms to.
type InstanceGroupManagersResizeResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "resize" :>
                 QueryParam "size" Int32 :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Resizes the managed instance group. If you increase the size, the group
-- creates new instances using the current instance template. If you
-- decrease the size, the group removes instances in the order that is
-- outlined in Resizing a managed instance group.
--
-- /See:/ 'instanceGroupManagersResize'' smart constructor.
data InstanceGroupManagersResize' = InstanceGroupManagersResize'
    { _igmrProject              :: !Text
    , _igmrSize                 :: !Int32
    , _igmrInstanceGroupManager :: !Text
    , _igmrZone                 :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersResize'' with the minimum fields required to make a request.
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
instanceGroupManagersResize'
    :: Text -- ^ 'project'
    -> Int32 -- ^ 'size'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersResize'
instanceGroupManagersResize' pIgmrProject_ pIgmrSize_ pIgmrInstanceGroupManager_ pIgmrZone_ =
    InstanceGroupManagersResize'
    { _igmrProject = pIgmrProject_
    , _igmrSize = pIgmrSize_
    , _igmrInstanceGroupManager = pIgmrInstanceGroupManager_
    , _igmrZone = pIgmrZone_
    }

-- | The project ID for this request.
igmrProject :: Lens' InstanceGroupManagersResize' Text
igmrProject
  = lens _igmrProject (\ s a -> s{_igmrProject = a})

-- | The number of running instances that the managed instance group should
-- maintain at any given time. The group automatically adds or removes
-- instances to maintain the number of instances specified by this
-- parameter.
igmrSize :: Lens' InstanceGroupManagersResize' Int32
igmrSize = lens _igmrSize (\ s a -> s{_igmrSize = a})

-- | The name of the instance group manager.
igmrInstanceGroupManager :: Lens' InstanceGroupManagersResize' Text
igmrInstanceGroupManager
  = lens _igmrInstanceGroupManager
      (\ s a -> s{_igmrInstanceGroupManager = a})

-- | The URL of the zone where the managed instance group is located.
igmrZone :: Lens' InstanceGroupManagersResize' Text
igmrZone = lens _igmrZone (\ s a -> s{_igmrZone = a})

instance GoogleRequest InstanceGroupManagersResize'
         where
        type Rs InstanceGroupManagersResize' = Operation
        requestClient InstanceGroupManagersResize'{..}
          = go _igmrProject _igmrZone _igmrInstanceGroupManager
              (Just _igmrSize)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersResizeResource)
                      mempty
