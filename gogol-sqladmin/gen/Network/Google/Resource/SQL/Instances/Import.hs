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
-- Module      : Network.Google.Resource.SQL.Instances.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports data into a Cloud SQL instance from a SQL dump or CSV file in
-- Cloud Storage.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Admin API Reference> for @sql.instances.import@.
module Network.Google.Resource.SQL.Instances.Import
    (
    -- * REST Resource
      InstancesImportResource

    -- * Creating a Request
    , instancesImport
    , InstancesImport

    -- * Request Lenses
    , iiProject
    , iiPayload
    , iiInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.instances.import@ method which the
-- 'InstancesImport' request conforms to.
type InstancesImportResource =
     "sql" :>
       "v1beta4" :>
         "projects" :>
           Capture "project" Text :>
             "instances" :>
               Capture "instance" Text :>
                 "import" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] InstancesImportRequest :>
                       Post '[JSON] Operation

-- | Imports data into a Cloud SQL instance from a SQL dump or CSV file in
-- Cloud Storage.
--
-- /See:/ 'instancesImport' smart constructor.
data InstancesImport = InstancesImport'
    { _iiProject  :: !Text
    , _iiPayload  :: !InstancesImportRequest
    , _iiInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiProject'
--
-- * 'iiPayload'
--
-- * 'iiInstance'
instancesImport
    :: Text -- ^ 'iiProject'
    -> InstancesImportRequest -- ^ 'iiPayload'
    -> Text -- ^ 'iiInstance'
    -> InstancesImport
instancesImport pIiProject_ pIiPayload_ pIiInstance_ =
    InstancesImport'
    { _iiProject = pIiProject_
    , _iiPayload = pIiPayload_
    , _iiInstance = pIiInstance_
    }

-- | Project ID of the project that contains the instance.
iiProject :: Lens' InstancesImport Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | Multipart request metadata.
iiPayload :: Lens' InstancesImport InstancesImportRequest
iiPayload
  = lens _iiPayload (\ s a -> s{_iiPayload = a})

-- | Cloud SQL instance ID. This does not include the project ID.
iiInstance :: Lens' InstancesImport Text
iiInstance
  = lens _iiInstance (\ s a -> s{_iiInstance = a})

instance GoogleRequest InstancesImport where
        type Rs InstancesImport = Operation
        type Scopes InstancesImport =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient InstancesImport'{..}
          = go _iiProject _iiInstance (Just AltJSON) _iiPayload
              sQLAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesImportResource)
                      mempty
