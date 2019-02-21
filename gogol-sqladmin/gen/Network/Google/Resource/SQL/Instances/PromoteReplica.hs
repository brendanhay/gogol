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
-- Module      : Network.Google.Resource.SQL.Instances.PromoteReplica
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Promotes the read replica instance to be a stand-alone Cloud SQL
-- instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.promoteReplica@.
module Network.Google.Resource.SQL.Instances.PromoteReplica
    (
    -- * REST Resource
      InstancesPromoteReplicaResource

    -- * Creating a Request
    , instancesPromoteReplica
    , InstancesPromoteReplica

    -- * Request Lenses
    , iprProject
    , iprInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.promoteReplica@ method which the
-- 'InstancesPromoteReplica' request conforms to.
type InstancesPromoteReplicaResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "promoteReplica" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Promotes the read replica instance to be a stand-alone Cloud SQL
-- instance.
--
-- /See:/ 'instancesPromoteReplica' smart constructor.
data InstancesPromoteReplica =
  InstancesPromoteReplica'
    { _iprProject  :: !Text
    , _iprInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesPromoteReplica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iprProject'
--
-- * 'iprInstance'
instancesPromoteReplica
    :: Text -- ^ 'iprProject'
    -> Text -- ^ 'iprInstance'
    -> InstancesPromoteReplica
instancesPromoteReplica pIprProject_ pIprInstance_ =
  InstancesPromoteReplica'
    {_iprProject = pIprProject_, _iprInstance = pIprInstance_}


-- | ID of the project that contains the read replica.
iprProject :: Lens' InstancesPromoteReplica Text
iprProject
  = lens _iprProject (\ s a -> s{_iprProject = a})

-- | Cloud SQL read replica instance name.
iprInstance :: Lens' InstancesPromoteReplica Text
iprInstance
  = lens _iprInstance (\ s a -> s{_iprInstance = a})

instance GoogleRequest InstancesPromoteReplica where
        type Rs InstancesPromoteReplica = Operation
        type Scopes InstancesPromoteReplica =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesPromoteReplica'{..}
          = go _iprProject _iprInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesPromoteReplicaResource)
                      mempty
