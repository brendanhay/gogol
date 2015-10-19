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
-- Module      : Network.Google.Resource.SQL.Instances.StopReplica
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the replication in the read replica instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesStopReplica@.
module Network.Google.Resource.SQL.Instances.StopReplica
    (
    -- * REST Resource
      InstancesStopReplicaResource

    -- * Creating a Request
    , instancesStopReplica'
    , InstancesStopReplica'

    -- * Request Lenses
    , isrProject
    , isrInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesStopReplica@ method which the
-- 'InstancesStopReplica'' request conforms to.
type InstancesStopReplicaResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "stopReplica" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Stops the replication in the read replica instance.
--
-- /See:/ 'instancesStopReplica'' smart constructor.
data InstancesStopReplica' = InstancesStopReplica'
    { _isrProject  :: !Text
    , _isrInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStopReplica'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isrProject'
--
-- * 'isrInstance'
instancesStopReplica'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesStopReplica'
instancesStopReplica' pIsrProject_ pIsrInstance_ =
    InstancesStopReplica'
    { _isrProject = pIsrProject_
    , _isrInstance = pIsrInstance_
    }

-- | ID of the project that contains the read replica.
isrProject :: Lens' InstancesStopReplica' Text
isrProject
  = lens _isrProject (\ s a -> s{_isrProject = a})

-- | Cloud SQL read replica instance name.
isrInstance :: Lens' InstancesStopReplica' Text
isrInstance
  = lens _isrInstance (\ s a -> s{_isrInstance = a})

instance GoogleRequest InstancesStopReplica' where
        type Rs InstancesStopReplica' = Operation
        requestClient InstancesStopReplica'{..}
          = go _isrProject _isrInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesStopReplicaResource)
                      mempty
