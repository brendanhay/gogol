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
-- Module      : Network.Google.Resource.SQL.Instances.ResetSSLConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all client certificates and generates a new server SSL
-- certificate for the instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.resetSslConfig@.
module Network.Google.Resource.SQL.Instances.ResetSSLConfig
    (
    -- * REST Resource
      InstancesResetSSLConfigResource

    -- * Creating a Request
    , instancesResetSSLConfig
    , InstancesResetSSLConfig

    -- * Request Lenses
    , irscProject
    , irscInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.resetSslConfig@ method which the
-- 'InstancesResetSSLConfig' request conforms to.
type InstancesResetSSLConfigResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "resetSslConfig" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Deletes all client certificates and generates a new server SSL
-- certificate for the instance.
--
-- /See:/ 'instancesResetSSLConfig' smart constructor.
data InstancesResetSSLConfig = InstancesResetSSLConfig'
    { _irscProject  :: !Text
    , _irscInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesResetSSLConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irscProject'
--
-- * 'irscInstance'
instancesResetSSLConfig
    :: Text -- ^ 'irscProject'
    -> Text -- ^ 'irscInstance'
    -> InstancesResetSSLConfig
instancesResetSSLConfig pIrscProject_ pIrscInstance_ =
    InstancesResetSSLConfig'
    { _irscProject = pIrscProject_
    , _irscInstance = pIrscInstance_
    }

-- | Project ID of the project that contains the instance.
irscProject :: Lens' InstancesResetSSLConfig Text
irscProject
  = lens _irscProject (\ s a -> s{_irscProject = a})

-- | Cloud SQL instance ID. This does not include the project ID.
irscInstance :: Lens' InstancesResetSSLConfig Text
irscInstance
  = lens _irscInstance (\ s a -> s{_irscInstance = a})

instance GoogleRequest InstancesResetSSLConfig where
        type Rs InstancesResetSSLConfig = Operation
        type Scopes InstancesResetSSLConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesResetSSLConfig'{..}
          = go _irscProject _irscInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesResetSSLConfigResource)
                      mempty
