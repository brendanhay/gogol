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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a specified table and all of its data.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.delete@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Delete
    (
    -- * REST Resource
      ProjectsInstancesTablesDeleteResource

    -- * Creating a Request
    , projectsInstancesTablesDelete
    , ProjectsInstancesTablesDelete

    -- * Request Lenses
    , pitdXgafv
    , pitdUploadProtocol
    , pitdAccessToken
    , pitdUploadType
    , pitdName
    , pitdCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.delete@ method which the
-- 'ProjectsInstancesTablesDelete' request conforms to.
type ProjectsInstancesTablesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Permanently deletes a specified table and all of its data.
--
-- /See:/ 'projectsInstancesTablesDelete' smart constructor.
data ProjectsInstancesTablesDelete =
  ProjectsInstancesTablesDelete'
    { _pitdXgafv :: !(Maybe Xgafv)
    , _pitdUploadProtocol :: !(Maybe Text)
    , _pitdAccessToken :: !(Maybe Text)
    , _pitdUploadType :: !(Maybe Text)
    , _pitdName :: !Text
    , _pitdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitdXgafv'
--
-- * 'pitdUploadProtocol'
--
-- * 'pitdAccessToken'
--
-- * 'pitdUploadType'
--
-- * 'pitdName'
--
-- * 'pitdCallback'
projectsInstancesTablesDelete
    :: Text -- ^ 'pitdName'
    -> ProjectsInstancesTablesDelete
projectsInstancesTablesDelete pPitdName_ =
  ProjectsInstancesTablesDelete'
    { _pitdXgafv = Nothing
    , _pitdUploadProtocol = Nothing
    , _pitdAccessToken = Nothing
    , _pitdUploadType = Nothing
    , _pitdName = pPitdName_
    , _pitdCallback = Nothing
    }


-- | V1 error format.
pitdXgafv :: Lens' ProjectsInstancesTablesDelete (Maybe Xgafv)
pitdXgafv
  = lens _pitdXgafv (\ s a -> s{_pitdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitdUploadProtocol :: Lens' ProjectsInstancesTablesDelete (Maybe Text)
pitdUploadProtocol
  = lens _pitdUploadProtocol
      (\ s a -> s{_pitdUploadProtocol = a})

-- | OAuth access token.
pitdAccessToken :: Lens' ProjectsInstancesTablesDelete (Maybe Text)
pitdAccessToken
  = lens _pitdAccessToken
      (\ s a -> s{_pitdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitdUploadType :: Lens' ProjectsInstancesTablesDelete (Maybe Text)
pitdUploadType
  = lens _pitdUploadType
      (\ s a -> s{_pitdUploadType = a})

-- | Required. The unique name of the table to be deleted. Values are of the
-- form \`projects\/{project}\/instances\/{instance}\/tables\/{table}\`.
pitdName :: Lens' ProjectsInstancesTablesDelete Text
pitdName = lens _pitdName (\ s a -> s{_pitdName = a})

-- | JSONP
pitdCallback :: Lens' ProjectsInstancesTablesDelete (Maybe Text)
pitdCallback
  = lens _pitdCallback (\ s a -> s{_pitdCallback = a})

instance GoogleRequest ProjectsInstancesTablesDelete
         where
        type Rs ProjectsInstancesTablesDelete = Empty
        type Scopes ProjectsInstancesTablesDelete =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInstancesTablesDelete'{..}
          = go _pitdName _pitdXgafv _pitdUploadProtocol
              _pitdAccessToken
              _pitdUploadType
              _pitdCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesTablesDeleteResource)
                      mempty
