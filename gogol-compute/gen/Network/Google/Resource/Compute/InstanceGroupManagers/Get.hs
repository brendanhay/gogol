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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all of the details about the specified managed instance group.
-- Gets a list of available managed instance groups by making a list()
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.get@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Get
    (
    -- * REST Resource
      InstanceGroupManagersGetResource

    -- * Creating a Request
    , instanceGroupManagersGet
    , InstanceGroupManagersGet

    -- * Request Lenses
    , igmgProject
    , igmgInstanceGroupManager
    , igmgZone
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.get@ method which the
-- 'InstanceGroupManagersGet' request conforms to.
type InstanceGroupManagersGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroupManagers" :>
                   Capture "instanceGroupManager" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] InstanceGroupManager

-- | Returns all of the details about the specified managed instance group.
-- Gets a list of available managed instance groups by making a list()
-- request.
--
-- /See:/ 'instanceGroupManagersGet' smart constructor.
data InstanceGroupManagersGet =
  InstanceGroupManagersGet'
    { _igmgProject :: !Text
    , _igmgInstanceGroupManager :: !Text
    , _igmgZone :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceGroupManagersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmgProject'
--
-- * 'igmgInstanceGroupManager'
--
-- * 'igmgZone'
instanceGroupManagersGet
    :: Text -- ^ 'igmgProject'
    -> Text -- ^ 'igmgInstanceGroupManager'
    -> Text -- ^ 'igmgZone'
    -> InstanceGroupManagersGet
instanceGroupManagersGet pIgmgProject_ pIgmgInstanceGroupManager_ pIgmgZone_ =
  InstanceGroupManagersGet'
    { _igmgProject = pIgmgProject_
    , _igmgInstanceGroupManager = pIgmgInstanceGroupManager_
    , _igmgZone = pIgmgZone_
    }


-- | Project ID for this request.
igmgProject :: Lens' InstanceGroupManagersGet Text
igmgProject
  = lens _igmgProject (\ s a -> s{_igmgProject = a})

-- | The name of the managed instance group.
igmgInstanceGroupManager :: Lens' InstanceGroupManagersGet Text
igmgInstanceGroupManager
  = lens _igmgInstanceGroupManager
      (\ s a -> s{_igmgInstanceGroupManager = a})

-- | The name of the zone where the managed instance group is located.
igmgZone :: Lens' InstanceGroupManagersGet Text
igmgZone = lens _igmgZone (\ s a -> s{_igmgZone = a})

instance GoogleRequest InstanceGroupManagersGet where
        type Rs InstanceGroupManagersGet =
             InstanceGroupManager
        type Scopes InstanceGroupManagersGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceGroupManagersGet'{..}
          = go _igmgProject _igmgZone _igmgInstanceGroupManager
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupManagersGetResource)
                      mempty
