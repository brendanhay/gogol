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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Restore
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new table by restoring from a completed backup. The new table
-- must be in the same project as the instance containing the backup. The
-- returned table long-running operation can be used to track the progress
-- of the operation, and to cancel it. The metadata field type is
-- RestoreTableMetadata. The response type is Table, if successful.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.restore@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Restore
    (
    -- * REST Resource
      ProjectsInstancesTablesRestoreResource

    -- * Creating a Request
    , projectsInstancesTablesRestore
    , ProjectsInstancesTablesRestore

    -- * Request Lenses
    , pitrParent
    , pitrXgafv
    , pitrUploadProtocol
    , pitrAccessToken
    , pitrUploadType
    , pitrPayload
    , pitrCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.restore@ method which the
-- 'ProjectsInstancesTablesRestore' request conforms to.
type ProjectsInstancesTablesRestoreResource =
     "v2" :>
       Capture "parent" Text :>
         "tables:restore" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RestoreTableRequest :>
                         Post '[JSON] Operation

-- | Create a new table by restoring from a completed backup. The new table
-- must be in the same project as the instance containing the backup. The
-- returned table long-running operation can be used to track the progress
-- of the operation, and to cancel it. The metadata field type is
-- RestoreTableMetadata. The response type is Table, if successful.
--
-- /See:/ 'projectsInstancesTablesRestore' smart constructor.
data ProjectsInstancesTablesRestore =
  ProjectsInstancesTablesRestore'
    { _pitrParent :: !Text
    , _pitrXgafv :: !(Maybe Xgafv)
    , _pitrUploadProtocol :: !(Maybe Text)
    , _pitrAccessToken :: !(Maybe Text)
    , _pitrUploadType :: !(Maybe Text)
    , _pitrPayload :: !RestoreTableRequest
    , _pitrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesRestore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitrParent'
--
-- * 'pitrXgafv'
--
-- * 'pitrUploadProtocol'
--
-- * 'pitrAccessToken'
--
-- * 'pitrUploadType'
--
-- * 'pitrPayload'
--
-- * 'pitrCallback'
projectsInstancesTablesRestore
    :: Text -- ^ 'pitrParent'
    -> RestoreTableRequest -- ^ 'pitrPayload'
    -> ProjectsInstancesTablesRestore
projectsInstancesTablesRestore pPitrParent_ pPitrPayload_ =
  ProjectsInstancesTablesRestore'
    { _pitrParent = pPitrParent_
    , _pitrXgafv = Nothing
    , _pitrUploadProtocol = Nothing
    , _pitrAccessToken = Nothing
    , _pitrUploadType = Nothing
    , _pitrPayload = pPitrPayload_
    , _pitrCallback = Nothing
    }


-- | Required. The name of the instance in which to create the restored
-- table. This instance must be in the same project as the source backup.
-- Values are of the form \`projects\/\/instances\/\`.
pitrParent :: Lens' ProjectsInstancesTablesRestore Text
pitrParent
  = lens _pitrParent (\ s a -> s{_pitrParent = a})

-- | V1 error format.
pitrXgafv :: Lens' ProjectsInstancesTablesRestore (Maybe Xgafv)
pitrXgafv
  = lens _pitrXgafv (\ s a -> s{_pitrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitrUploadProtocol :: Lens' ProjectsInstancesTablesRestore (Maybe Text)
pitrUploadProtocol
  = lens _pitrUploadProtocol
      (\ s a -> s{_pitrUploadProtocol = a})

-- | OAuth access token.
pitrAccessToken :: Lens' ProjectsInstancesTablesRestore (Maybe Text)
pitrAccessToken
  = lens _pitrAccessToken
      (\ s a -> s{_pitrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitrUploadType :: Lens' ProjectsInstancesTablesRestore (Maybe Text)
pitrUploadType
  = lens _pitrUploadType
      (\ s a -> s{_pitrUploadType = a})

-- | Multipart request metadata.
pitrPayload :: Lens' ProjectsInstancesTablesRestore RestoreTableRequest
pitrPayload
  = lens _pitrPayload (\ s a -> s{_pitrPayload = a})

-- | JSONP
pitrCallback :: Lens' ProjectsInstancesTablesRestore (Maybe Text)
pitrCallback
  = lens _pitrCallback (\ s a -> s{_pitrCallback = a})

instance GoogleRequest ProjectsInstancesTablesRestore
         where
        type Rs ProjectsInstancesTablesRestore = Operation
        type Scopes ProjectsInstancesTablesRestore =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesTablesRestore'{..}
          = go _pitrParent _pitrXgafv _pitrUploadProtocol
              _pitrAccessToken
              _pitrUploadType
              _pitrCallback
              (Just AltJSON)
              _pitrPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesTablesRestoreResource)
                      mempty
