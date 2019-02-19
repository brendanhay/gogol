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
-- Module      : Network.Google.Resource.SQL.Instances.RotateServerCa
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rotates the server certificate to one signed by the Certificate
-- Authority (CA) version previously added with the addServerCA method.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.rotateServerCa@.
module Network.Google.Resource.SQL.Instances.RotateServerCa
    (
    -- * REST Resource
      InstancesRotateServerCaResource

    -- * Creating a Request
    , instancesRotateServerCa
    , InstancesRotateServerCa

    -- * Request Lenses
    , iProject
    , iPayload
    , iInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.rotateServerCa@ method which the
-- 'InstancesRotateServerCa' request conforms to.
type InstancesRotateServerCaResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "rotateServerCa" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InstancesRotateServerCaRequest :>
                       Post '[JSON] Operation

-- | Rotates the server certificate to one signed by the Certificate
-- Authority (CA) version previously added with the addServerCA method.
--
-- /See:/ 'instancesRotateServerCa' smart constructor.
data InstancesRotateServerCa =
  InstancesRotateServerCa'
    { _iProject  :: !Text
    , _iPayload  :: !InstancesRotateServerCaRequest
    , _iInstance :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesRotateServerCa' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iProject'
--
-- * 'iPayload'
--
-- * 'iInstance'
instancesRotateServerCa
    :: Text -- ^ 'iProject'
    -> InstancesRotateServerCaRequest -- ^ 'iPayload'
    -> Text -- ^ 'iInstance'
    -> InstancesRotateServerCa
instancesRotateServerCa pIProject_ pIPayload_ pIInstance_ =
  InstancesRotateServerCa'
    {_iProject = pIProject_, _iPayload = pIPayload_, _iInstance = pIInstance_}

-- | Project ID of the project that contains the instance.
iProject :: Lens' InstancesRotateServerCa Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | Multipart request metadata.
iPayload :: Lens' InstancesRotateServerCa InstancesRotateServerCaRequest
iPayload = lens _iPayload (\ s a -> s{_iPayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iInstance :: Lens' InstancesRotateServerCa Text
iInstance
  = lens _iInstance (\ s a -> s{_iInstance = a})

instance GoogleRequest InstancesRotateServerCa where
        type Rs InstancesRotateServerCa = Operation
        type Scopes InstancesRotateServerCa =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesRotateServerCa'{..}
          = go _iProject _iInstance (Just AltJSON) _iPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesRotateServerCaResource)
                      mempty
