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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified managed instance group resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersGet@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Get
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

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersGet@ method which the
-- 'InstanceGroupManagersGet'' request conforms to.
type InstanceGroupManagersGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] InstanceGroupManager

-- | Returns the specified managed instance group resource.
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

-- | The project ID for this request.
igmgProject :: Lens' InstanceGroupManagersGet' Text
igmgProject
  = lens _igmgProject (\ s a -> s{_igmgProject = a})

-- | The name of the instance group manager resource.
igmgInstanceGroupManager :: Lens' InstanceGroupManagersGet' Text
igmgInstanceGroupManager
  = lens _igmgInstanceGroupManager
      (\ s a -> s{_igmgInstanceGroupManager = a})

-- | The URL of the zone where the managed instance group is located.
igmgZone :: Lens' InstanceGroupManagersGet' Text
igmgZone = lens _igmgZone (\ s a -> s{_igmgZone = a})

instance GoogleRequest InstanceGroupManagersGet'
         where
        type Rs InstanceGroupManagersGet' =
             InstanceGroupManager
        requestClient InstanceGroupManagersGet'{..}
          = go _igmgProject _igmgZone _igmgInstanceGroupManager
              (Just AltJSON)
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersGetResource)
                      mempty
