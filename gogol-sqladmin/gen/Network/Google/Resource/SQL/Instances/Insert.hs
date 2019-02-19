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
-- Module      : Network.Google.Resource.SQL.Instances.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Cloud SQL instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.insert@.
module Network.Google.Resource.SQL.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertResource

    -- * Creating a Request
    , instancesInsert
    , InstancesInsert

    -- * Request Lenses
    , iiiProject
    , iiiPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.insert@ method which the
-- 'InstancesInsert' request conforms to.
type InstancesInsertResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DatabaseInstance :>
                   Post '[JSON] Operation

-- | Creates a new Cloud SQL instance.
--
-- /See:/ 'instancesInsert' smart constructor.
data InstancesInsert =
  InstancesInsert'
    { _iiiProject :: !Text
    , _iiiPayload :: !DatabaseInstance
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstancesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiiProject'
--
-- * 'iiiPayload'
instancesInsert
    :: Text -- ^ 'iiiProject'
    -> DatabaseInstance -- ^ 'iiiPayload'
    -> InstancesInsert
instancesInsert pIiiProject_ pIiiPayload_ =
  InstancesInsert' {_iiiProject = pIiiProject_, _iiiPayload = pIiiPayload_}

-- | Project ID of the project to which the newly created Cloud SQL instances
-- should belong.
iiiProject :: Lens' InstancesInsert Text
iiiProject
  = lens _iiiProject (\ s a -> s{_iiiProject = a})

-- | Multipart request metadata.
iiiPayload :: Lens' InstancesInsert DatabaseInstance
iiiPayload
  = lens _iiiPayload (\ s a -> s{_iiiPayload = a})

instance GoogleRequest InstancesInsert where
        type Rs InstancesInsert = Operation
        type Scopes InstancesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient InstancesInsert'{..}
          = go _iiiProject (Just AltJSON) _iiiPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesInsertResource)
                      mempty
