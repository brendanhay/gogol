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
-- Module      : Network.Google.Resource.SQL.Instances.StartReplica
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the replication in the read replica instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.startReplica@.
module Network.Google.Resource.SQL.Instances.StartReplica
    (
    -- * REST Resource
      InstancesStartReplicaResource

    -- * Creating a Request
    , instancesStartReplica
    , InstancesStartReplica

    -- * Request Lenses
    , insProject
    , insInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.startReplica@ method which the
-- 'InstancesStartReplica' request conforms to.
type InstancesStartReplicaResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "startReplica" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Starts the replication in the read replica instance.
--
-- /See:/ 'instancesStartReplica' smart constructor.
data InstancesStartReplica =
  InstancesStartReplica'
    { _insProject  :: !Text
    , _insInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesStartReplica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insProject'
--
-- * 'insInstance'
instancesStartReplica
    :: Text -- ^ 'insProject'
    -> Text -- ^ 'insInstance'
    -> InstancesStartReplica
instancesStartReplica pInsProject_ pInsInstance_ =
  InstancesStartReplica'
    {_insProject = pInsProject_, _insInstance = pInsInstance_}

-- | ID of the project that contains the read replica.
insProject :: Lens' InstancesStartReplica Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | Cloud SQL read replica instance name.
insInstance :: Lens' InstancesStartReplica Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleRequest InstancesStartReplica where
        type Rs InstancesStartReplica = Operation
        type Scopes InstancesStartReplica =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesStartReplica'{..}
          = go _insProject _insInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesStartReplicaResource)
                      mempty
