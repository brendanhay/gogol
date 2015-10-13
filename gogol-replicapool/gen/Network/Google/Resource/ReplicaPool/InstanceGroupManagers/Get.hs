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
-- Module      : Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified Instance Group Manager resource.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference> for @ReplicapoolInstanceGroupManagersGet@.
module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Get
    (
    -- * REST Resource
      InstanceGroupManagersGetResource

    -- * Creating a Request
    , instanceGroupManagersGet'
    , InstanceGroupManagersGet'

    -- * Request Lenses
    , igmgProject
    , igmgInstanceGroupManager
    , igmgZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @ReplicapoolInstanceGroupManagersGet@ method which the
-- 'InstanceGroupManagersGet'' request conforms to.
type InstanceGroupManagersGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] InstanceGroupManager

-- | Returns the specified Instance Group Manager resource.
--
-- /See:/ 'instanceGroupManagersGet'' smart constructor.
data InstanceGroupManagersGet' = InstanceGroupManagersGet'
    { _igmgProject              :: !Text
    , _igmgInstanceGroupManager :: !Text
    , _igmgZone                 :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmgProject'
--
-- * 'igmgInstanceGroupManager'
--
-- * 'igmgZone'
instanceGroupManagersGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersGet'
instanceGroupManagersGet' pIgmgProject_ pIgmgInstanceGroupManager_ pIgmgZone_ =
    InstanceGroupManagersGet'
    { _igmgProject = pIgmgProject_
    , _igmgInstanceGroupManager = pIgmgInstanceGroupManager_
    , _igmgZone = pIgmgZone_
    }

-- | The Google Developers Console project name.
igmgProject :: Lens' InstanceGroupManagersGet' Text
igmgProject
  = lens _igmgProject (\ s a -> s{_igmgProject = a})

-- | Name of the instance resource to return.
igmgInstanceGroupManager :: Lens' InstanceGroupManagersGet' Text
igmgInstanceGroupManager
  = lens _igmgInstanceGroupManager
      (\ s a -> s{_igmgInstanceGroupManager = a})

-- | The name of the zone in which the instance group manager resides.
igmgZone :: Lens' InstanceGroupManagersGet' Text
igmgZone = lens _igmgZone (\ s a -> s{_igmgZone = a})

instance GoogleRequest InstanceGroupManagersGet'
         where
        type Rs InstanceGroupManagersGet' =
             InstanceGroupManager
        requestClient InstanceGroupManagersGet'{..}
          = go _igmgProject _igmgZone _igmgInstanceGroupManager
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersGetResource)
                      mempty
