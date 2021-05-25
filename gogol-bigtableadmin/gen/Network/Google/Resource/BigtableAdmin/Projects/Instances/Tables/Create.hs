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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new table in the specified instance. The table can be created
-- with a full set of initial column families, specified in the request.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.create@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Create
    (
    -- * REST Resource
      ProjectsInstancesTablesCreateResource

    -- * Creating a Request
    , projectsInstancesTablesCreate
    , ProjectsInstancesTablesCreate

    -- * Request Lenses
    , pitcParent
    , pitcXgafv
    , pitcUploadProtocol
    , pitcAccessToken
    , pitcUploadType
    , pitcPayload
    , pitcCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.create@ method which the
-- 'ProjectsInstancesTablesCreate' request conforms to.
type ProjectsInstancesTablesCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "tables" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CreateTableRequest :>
                         Post '[JSON] Table

-- | Creates a new table in the specified instance. The table can be created
-- with a full set of initial column families, specified in the request.
--
-- /See:/ 'projectsInstancesTablesCreate' smart constructor.
data ProjectsInstancesTablesCreate =
  ProjectsInstancesTablesCreate'
    { _pitcParent :: !Text
    , _pitcXgafv :: !(Maybe Xgafv)
    , _pitcUploadProtocol :: !(Maybe Text)
    , _pitcAccessToken :: !(Maybe Text)
    , _pitcUploadType :: !(Maybe Text)
    , _pitcPayload :: !CreateTableRequest
    , _pitcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitcParent'
--
-- * 'pitcXgafv'
--
-- * 'pitcUploadProtocol'
--
-- * 'pitcAccessToken'
--
-- * 'pitcUploadType'
--
-- * 'pitcPayload'
--
-- * 'pitcCallback'
projectsInstancesTablesCreate
    :: Text -- ^ 'pitcParent'
    -> CreateTableRequest -- ^ 'pitcPayload'
    -> ProjectsInstancesTablesCreate
projectsInstancesTablesCreate pPitcParent_ pPitcPayload_ =
  ProjectsInstancesTablesCreate'
    { _pitcParent = pPitcParent_
    , _pitcXgafv = Nothing
    , _pitcUploadProtocol = Nothing
    , _pitcAccessToken = Nothing
    , _pitcUploadType = Nothing
    , _pitcPayload = pPitcPayload_
    , _pitcCallback = Nothing
    }


-- | Required. The unique name of the instance in which to create the table.
-- Values are of the form \`projects\/{project}\/instances\/{instance}\`.
pitcParent :: Lens' ProjectsInstancesTablesCreate Text
pitcParent
  = lens _pitcParent (\ s a -> s{_pitcParent = a})

-- | V1 error format.
pitcXgafv :: Lens' ProjectsInstancesTablesCreate (Maybe Xgafv)
pitcXgafv
  = lens _pitcXgafv (\ s a -> s{_pitcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitcUploadProtocol :: Lens' ProjectsInstancesTablesCreate (Maybe Text)
pitcUploadProtocol
  = lens _pitcUploadProtocol
      (\ s a -> s{_pitcUploadProtocol = a})

-- | OAuth access token.
pitcAccessToken :: Lens' ProjectsInstancesTablesCreate (Maybe Text)
pitcAccessToken
  = lens _pitcAccessToken
      (\ s a -> s{_pitcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitcUploadType :: Lens' ProjectsInstancesTablesCreate (Maybe Text)
pitcUploadType
  = lens _pitcUploadType
      (\ s a -> s{_pitcUploadType = a})

-- | Multipart request metadata.
pitcPayload :: Lens' ProjectsInstancesTablesCreate CreateTableRequest
pitcPayload
  = lens _pitcPayload (\ s a -> s{_pitcPayload = a})

-- | JSONP
pitcCallback :: Lens' ProjectsInstancesTablesCreate (Maybe Text)
pitcCallback
  = lens _pitcCallback (\ s a -> s{_pitcCallback = a})

instance GoogleRequest ProjectsInstancesTablesCreate
         where
        type Rs ProjectsInstancesTablesCreate = Table
        type Scopes ProjectsInstancesTablesCreate =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesTablesCreate'{..}
          = go _pitcParent _pitcXgafv _pitcUploadProtocol
              _pitcAccessToken
              _pitcUploadType
              _pitcCallback
              (Just AltJSON)
              _pitcPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesTablesCreateResource)
                      mempty
