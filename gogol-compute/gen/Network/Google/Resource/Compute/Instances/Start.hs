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
-- Module      : Network.Google.Resource.Compute.Instances.Start
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an instance that was stopped using the using the instances().stop
-- method. For more information, see Restart an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.start@.
module Network.Google.Resource.Compute.Instances.Start
    (
    -- * REST Resource
      InstancesStartResource

    -- * Creating a Request
    , instancesStart
    , InstancesStart

    -- * Request Lenses
    , insProject
    , insZone
    , insInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.start@ method which the
-- 'InstancesStart' request conforms to.
type InstancesStartResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "start" :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Starts an instance that was stopped using the using the instances().stop
-- method. For more information, see Restart an instance.
--
-- /See:/ 'instancesStart' smart constructor.
data InstancesStart = InstancesStart
    { _insProject  :: !Text
    , _insZone     :: !Text
    , _insInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insProject'
--
-- * 'insZone'
--
-- * 'insInstance'
instancesStart
    :: Text -- ^ 'insProject'
    -> Text -- ^ 'insZone'
    -> Text -- ^ 'insInstance'
    -> InstancesStart
instancesStart pInsProject_ pInsZone_ pInsInstance_ =
    InstancesStart
    { _insProject = pInsProject_
    , _insZone = pInsZone_
    , _insInstance = pInsInstance_
    }

-- | Project ID for this request.
insProject :: Lens' InstancesStart Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | The name of the zone for this request.
insZone :: Lens' InstancesStart Text
insZone = lens _insZone (\ s a -> s{_insZone = a})

-- | Name of the instance resource to start.
insInstance :: Lens' InstancesStart Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleRequest InstancesStart where
        type Rs InstancesStart = Operation
        requestClient InstancesStart{..}
          = go _insProject _insZone _insInstance (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesStartResource)
                      mempty
