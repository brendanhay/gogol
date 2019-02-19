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
-- Module      : Network.Google.Resource.SQL.Instances.Restart
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restarts a Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.restart@.
module Network.Google.Resource.SQL.Instances.Restart
    (
    -- * REST Resource
      InstancesRestartResource

    -- * Creating a Request
    , instancesRestart
    , InstancesRestart

    -- * Request Lenses
    , irProject
    , irInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.restart@ method which the
-- 'InstancesRestart' request conforms to.
type InstancesRestartResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "restart" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Restarts a Cloud SQL instance.
--
-- /See:/ 'instancesRestart' smart constructor.
data InstancesRestart =
  InstancesRestart'
    { _irProject  :: !Text
    , _irInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesRestart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irProject'
--
-- * 'irInstance'
instancesRestart
    :: Text -- ^ 'irProject'
    -> Text -- ^ 'irInstance'
    -> InstancesRestart
instancesRestart pIrProject_ pIrInstance_ =
  InstancesRestart' {_irProject = pIrProject_, _irInstance = pIrInstance_}

-- | Project ID of the project that contains the instance to be restarted.
irProject :: Lens' InstancesRestart Text
irProject
  = lens _irProject (\ s a -> s{_irProject = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irInstance :: Lens' InstancesRestart Text
irInstance
  = lens _irInstance (\ s a -> s{_irInstance = a})

instance GoogleRequest InstancesRestart where
        type Rs InstancesRestart = Operation
        type Scopes InstancesRestart =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesRestart'{..}
          = go _irProject _irInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesRestartResource)
                      mempty
