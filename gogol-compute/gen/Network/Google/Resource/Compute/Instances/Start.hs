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
-- | This method starts an instance that was stopped using the using the
-- instances().stop method. For more information, see Restart an instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesStart@.
module Network.Google.Resource.Compute.Instances.Start
    (
    -- * REST Resource
      InstancesStartResource

    -- * Creating a Request
    , instancesStart'
    , InstancesStart'

    -- * Request Lenses
    , insnProject
    , insnZone
    , insnInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesStart@ method which the
-- 'InstancesStart'' request conforms to.
type InstancesStartResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "start" :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | This method starts an instance that was stopped using the using the
-- instances().stop method. For more information, see Restart an instance.
--
-- /See:/ 'instancesStart'' smart constructor.
data InstancesStart' = InstancesStart'
    { _insnProject  :: !Text
    , _insnZone     :: !Text
    , _insnInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStart'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insnProject'
--
-- * 'insnZone'
--
-- * 'insnInstance'
instancesStart'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'instance'
    -> InstancesStart'
instancesStart' pInsnProject_ pInsnZone_ pInsnInstance_ =
    InstancesStart'
    { _insnProject = pInsnProject_
    , _insnZone = pInsnZone_
    , _insnInstance = pInsnInstance_
    }

-- | Project ID for this request.
insnProject :: Lens' InstancesStart' Text
insnProject
  = lens _insnProject (\ s a -> s{_insnProject = a})

-- | The name of the zone for this request.
insnZone :: Lens' InstancesStart' Text
insnZone = lens _insnZone (\ s a -> s{_insnZone = a})

-- | Name of the instance resource to start.
insnInstance :: Lens' InstancesStart' Text
insnInstance
  = lens _insnInstance (\ s a -> s{_insnInstance = a})

instance GoogleRequest InstancesStart' where
        type Rs InstancesStart' = Operation
        requestClient InstancesStart'{..}
          = go _insnProject _insnZone _insnInstance
              (Just AltJSON)
              compute
          where go
                  = buildClient (Proxy :: Proxy InstancesStartResource)
                      mempty
