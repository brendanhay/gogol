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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Starts the replication in the read replica instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesStartReplica@.
module Network.Google.Resource.SQL.Instances.StartReplica
    (
    -- * REST Resource
      InstancesStartReplicaResource

    -- * Creating a Request
    , instancesStartReplica'
    , InstancesStartReplica'

    -- * Request Lenses
    , iProject
    , iInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesStartReplica@ method which the
-- 'InstancesStartReplica'' request conforms to.
type InstancesStartReplicaResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "startReplica" :>
               QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Starts the replication in the read replica instance.
--
-- /See:/ 'instancesStartReplica'' smart constructor.
data InstancesStartReplica' = InstancesStartReplica'
    { _iProject  :: !Text
    , _iInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesStartReplica'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iProject'
--
-- * 'iInstance'
instancesStartReplica'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> InstancesStartReplica'
instancesStartReplica' pIProject_ pIInstance_ =
    InstancesStartReplica'
    { _iProject = pIProject_
    , _iInstance = pIInstance_
    }

-- | ID of the project that contains the read replica.
iProject :: Lens' InstancesStartReplica' Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | Cloud SQL read replica instance name.
iInstance :: Lens' InstancesStartReplica' Text
iInstance
  = lens _iInstance (\ s a -> s{_iInstance = a})

instance GoogleRequest InstancesStartReplica' where
        type Rs InstancesStartReplica' = Operation
        requestClient InstancesStartReplica'{..}
          = go _iProject _iInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesStartReplicaResource)
                      mempty
