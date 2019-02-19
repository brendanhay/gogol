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
-- Module      : Network.Google.Resource.SQL.Instances.AddServerCa
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Add a new trusted Certificate Authority (CA) version for the specified
-- instance. Required to prepare for a certificate rotation. If a CA
-- version was previously added but never used in a certificate rotation,
-- this operation replaces that version. There cannot be more than one CA
-- version waiting to be rotated in.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.addServerCa@.
module Network.Google.Resource.SQL.Instances.AddServerCa
    (
    -- * REST Resource
      InstancesAddServerCaResource

    -- * Creating a Request
    , instancesAddServerCa
    , InstancesAddServerCa

    -- * Request Lenses
    , iascProject
    , iascInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.addServerCa@ method which the
-- 'InstancesAddServerCa' request conforms to.
type InstancesAddServerCaResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "addServerCa" :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Add a new trusted Certificate Authority (CA) version for the specified
-- instance. Required to prepare for a certificate rotation. If a CA
-- version was previously added but never used in a certificate rotation,
-- this operation replaces that version. There cannot be more than one CA
-- version waiting to be rotated in.
--
-- /See:/ 'instancesAddServerCa' smart constructor.
data InstancesAddServerCa =
  InstancesAddServerCa'
    { _iascProject  :: !Text
    , _iascInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesAddServerCa' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iascProject'
--
-- * 'iascInstance'
instancesAddServerCa
    :: Text -- ^ 'iascProject'
    -> Text -- ^ 'iascInstance'
    -> InstancesAddServerCa
instancesAddServerCa pIascProject_ pIascInstance_ =
  InstancesAddServerCa'
    {_iascProject = pIascProject_, _iascInstance = pIascInstance_}

-- | Project ID of the project that contains the instance.
iascProject :: Lens' InstancesAddServerCa Text
iascProject
  = lens _iascProject (\ s a -> s{_iascProject = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iascInstance :: Lens' InstancesAddServerCa Text
iascInstance
  = lens _iascInstance (\ s a -> s{_iascInstance = a})

instance GoogleRequest InstancesAddServerCa where
        type Rs InstancesAddServerCa = Operation
        type Scopes InstancesAddServerCa =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesAddServerCa'{..}
          = go _iascProject _iascInstance (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesAddServerCaResource)
                      mempty
