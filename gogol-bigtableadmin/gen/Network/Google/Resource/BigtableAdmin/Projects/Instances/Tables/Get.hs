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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata information about the specified table.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.get@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.Get
    (
    -- * REST Resource
      ProjectsInstancesTablesGetResource

    -- * Creating a Request
    , projectsInstancesTablesGet
    , ProjectsInstancesTablesGet

    -- * Request Lenses
    , pitgXgafv
    , pitgUploadProtocol
    , pitgAccessToken
    , pitgUploadType
    , pitgName
    , pitgView
    , pitgCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.get@ method which the
-- 'ProjectsInstancesTablesGet' request conforms to.
type ProjectsInstancesTablesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "view" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Table

-- | Gets metadata information about the specified table.
--
-- /See:/ 'projectsInstancesTablesGet' smart constructor.
data ProjectsInstancesTablesGet = ProjectsInstancesTablesGet'
    { _pitgXgafv          :: !(Maybe Xgafv)
    , _pitgUploadProtocol :: !(Maybe Text)
    , _pitgAccessToken    :: !(Maybe Text)
    , _pitgUploadType     :: !(Maybe Text)
    , _pitgName           :: !Text
    , _pitgView           :: !(Maybe Text)
    , _pitgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInstancesTablesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitgXgafv'
--
-- * 'pitgUploadProtocol'
--
-- * 'pitgAccessToken'
--
-- * 'pitgUploadType'
--
-- * 'pitgName'
--
-- * 'pitgView'
--
-- * 'pitgCallback'
projectsInstancesTablesGet
    :: Text -- ^ 'pitgName'
    -> ProjectsInstancesTablesGet
projectsInstancesTablesGet pPitgName_ =
    ProjectsInstancesTablesGet'
    { _pitgXgafv = Nothing
    , _pitgUploadProtocol = Nothing
    , _pitgAccessToken = Nothing
    , _pitgUploadType = Nothing
    , _pitgName = pPitgName_
    , _pitgView = Nothing
    , _pitgCallback = Nothing
    }

-- | V1 error format.
pitgXgafv :: Lens' ProjectsInstancesTablesGet (Maybe Xgafv)
pitgXgafv
  = lens _pitgXgafv (\ s a -> s{_pitgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitgUploadProtocol :: Lens' ProjectsInstancesTablesGet (Maybe Text)
pitgUploadProtocol
  = lens _pitgUploadProtocol
      (\ s a -> s{_pitgUploadProtocol = a})

-- | OAuth access token.
pitgAccessToken :: Lens' ProjectsInstancesTablesGet (Maybe Text)
pitgAccessToken
  = lens _pitgAccessToken
      (\ s a -> s{_pitgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitgUploadType :: Lens' ProjectsInstancesTablesGet (Maybe Text)
pitgUploadType
  = lens _pitgUploadType
      (\ s a -> s{_pitgUploadType = a})

-- | The unique name of the requested table. Values are of the form
-- \`projects\/\/instances\/\/tables\/
-- \`.
pitgName :: Lens' ProjectsInstancesTablesGet Text
pitgName = lens _pitgName (\ s a -> s{_pitgName = a})

-- | The view to be applied to the returned table\'s fields. Defaults to
-- \`SCHEMA_VIEW\` if unspecified.
pitgView :: Lens' ProjectsInstancesTablesGet (Maybe Text)
pitgView = lens _pitgView (\ s a -> s{_pitgView = a})

-- | JSONP
pitgCallback :: Lens' ProjectsInstancesTablesGet (Maybe Text)
pitgCallback
  = lens _pitgCallback (\ s a -> s{_pitgCallback = a})

instance GoogleRequest ProjectsInstancesTablesGet
         where
        type Rs ProjectsInstancesTablesGet = Table
        type Scopes ProjectsInstancesTablesGet =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsInstancesTablesGet'{..}
          = go _pitgName _pitgXgafv _pitgUploadProtocol
              _pitgAccessToken
              _pitgUploadType
              _pitgView
              _pitgCallback
              (Just AltJSON)
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesTablesGetResource)
                      mempty
