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
-- Module      : Network.Google.Resource.Compute.Instances.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified Instance resource. Get a list of available
-- instances by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.get@.
module Network.Google.Resource.Compute.Instances.Get
    (
    -- * REST Resource
      InstancesGetResource

    -- * Creating a Request
    , instancesGet
    , InstancesGet

    -- * Request Lenses
    , igProject
    , igZone
    , igInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.get@ method which the
-- 'InstancesGet' request conforms to.
type InstancesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Instance

-- | Returns the specified Instance resource. Get a list of available
-- instances by making a list() request.
--
-- /See:/ 'instancesGet' smart constructor.
data InstancesGet = InstancesGet
    { _igProject  :: !Text
    , _igZone     :: !Text
    , _igInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igProject'
--
-- * 'igZone'
--
-- * 'igInstance'
instancesGet
    :: Text -- ^ 'igProject'
    -> Text -- ^ 'igZone'
    -> Text -- ^ 'igInstance'
    -> InstancesGet
instancesGet pIgProject_ pIgZone_ pIgInstance_ =
    InstancesGet
    { _igProject = pIgProject_
    , _igZone = pIgZone_
    , _igInstance = pIgInstance_
    }

-- | Project ID for this request.
igProject :: Lens' InstancesGet Text
igProject
  = lens _igProject (\ s a -> s{_igProject = a})

-- | The name of the zone for this request.
igZone :: Lens' InstancesGet Text
igZone = lens _igZone (\ s a -> s{_igZone = a})

-- | Name of the instance resource to return.
igInstance :: Lens' InstancesGet Text
igInstance
  = lens _igInstance (\ s a -> s{_igInstance = a})

instance GoogleRequest InstancesGet where
        type Rs InstancesGet = Instance
        type Scopes InstancesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesGet{..}
          = go _igProject _igZone _igInstance (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesGetResource)
                      mempty
