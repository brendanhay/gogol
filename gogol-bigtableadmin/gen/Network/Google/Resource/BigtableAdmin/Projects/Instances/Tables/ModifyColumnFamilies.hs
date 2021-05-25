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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.ModifyColumnFamilies
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs a series of column family modifications on the specified table.
-- Either all or none of the modifications will occur before this method
-- returns, but data requests received prior to that point may see a table
-- where only some modifications have taken effect.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.modifyColumnFamilies@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.ModifyColumnFamilies
    (
    -- * REST Resource
      ProjectsInstancesTablesModifyColumnFamiliesResource

    -- * Creating a Request
    , projectsInstancesTablesModifyColumnFamilies
    , ProjectsInstancesTablesModifyColumnFamilies

    -- * Request Lenses
    , pitmcfXgafv
    , pitmcfUploadProtocol
    , pitmcfAccessToken
    , pitmcfUploadType
    , pitmcfPayload
    , pitmcfName
    , pitmcfCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.modifyColumnFamilies@ method which the
-- 'ProjectsInstancesTablesModifyColumnFamilies' request conforms to.
type ProjectsInstancesTablesModifyColumnFamiliesResource
     =
     "v2" :>
       CaptureMode "name" "modifyColumnFamilies" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ModifyColumnFamiliesRequest :>
                       Post '[JSON] Table

-- | Performs a series of column family modifications on the specified table.
-- Either all or none of the modifications will occur before this method
-- returns, but data requests received prior to that point may see a table
-- where only some modifications have taken effect.
--
-- /See:/ 'projectsInstancesTablesModifyColumnFamilies' smart constructor.
data ProjectsInstancesTablesModifyColumnFamilies =
  ProjectsInstancesTablesModifyColumnFamilies'
    { _pitmcfXgafv :: !(Maybe Xgafv)
    , _pitmcfUploadProtocol :: !(Maybe Text)
    , _pitmcfAccessToken :: !(Maybe Text)
    , _pitmcfUploadType :: !(Maybe Text)
    , _pitmcfPayload :: !ModifyColumnFamiliesRequest
    , _pitmcfName :: !Text
    , _pitmcfCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesModifyColumnFamilies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitmcfXgafv'
--
-- * 'pitmcfUploadProtocol'
--
-- * 'pitmcfAccessToken'
--
-- * 'pitmcfUploadType'
--
-- * 'pitmcfPayload'
--
-- * 'pitmcfName'
--
-- * 'pitmcfCallback'
projectsInstancesTablesModifyColumnFamilies
    :: ModifyColumnFamiliesRequest -- ^ 'pitmcfPayload'
    -> Text -- ^ 'pitmcfName'
    -> ProjectsInstancesTablesModifyColumnFamilies
projectsInstancesTablesModifyColumnFamilies pPitmcfPayload_ pPitmcfName_ =
  ProjectsInstancesTablesModifyColumnFamilies'
    { _pitmcfXgafv = Nothing
    , _pitmcfUploadProtocol = Nothing
    , _pitmcfAccessToken = Nothing
    , _pitmcfUploadType = Nothing
    , _pitmcfPayload = pPitmcfPayload_
    , _pitmcfName = pPitmcfName_
    , _pitmcfCallback = Nothing
    }


-- | V1 error format.
pitmcfXgafv :: Lens' ProjectsInstancesTablesModifyColumnFamilies (Maybe Xgafv)
pitmcfXgafv
  = lens _pitmcfXgafv (\ s a -> s{_pitmcfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitmcfUploadProtocol :: Lens' ProjectsInstancesTablesModifyColumnFamilies (Maybe Text)
pitmcfUploadProtocol
  = lens _pitmcfUploadProtocol
      (\ s a -> s{_pitmcfUploadProtocol = a})

-- | OAuth access token.
pitmcfAccessToken :: Lens' ProjectsInstancesTablesModifyColumnFamilies (Maybe Text)
pitmcfAccessToken
  = lens _pitmcfAccessToken
      (\ s a -> s{_pitmcfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitmcfUploadType :: Lens' ProjectsInstancesTablesModifyColumnFamilies (Maybe Text)
pitmcfUploadType
  = lens _pitmcfUploadType
      (\ s a -> s{_pitmcfUploadType = a})

-- | Multipart request metadata.
pitmcfPayload :: Lens' ProjectsInstancesTablesModifyColumnFamilies ModifyColumnFamiliesRequest
pitmcfPayload
  = lens _pitmcfPayload
      (\ s a -> s{_pitmcfPayload = a})

-- | Required. The unique name of the table whose families should be
-- modified. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/tables\/{table}\`.
pitmcfName :: Lens' ProjectsInstancesTablesModifyColumnFamilies Text
pitmcfName
  = lens _pitmcfName (\ s a -> s{_pitmcfName = a})

-- | JSONP
pitmcfCallback :: Lens' ProjectsInstancesTablesModifyColumnFamilies (Maybe Text)
pitmcfCallback
  = lens _pitmcfCallback
      (\ s a -> s{_pitmcfCallback = a})

instance GoogleRequest
           ProjectsInstancesTablesModifyColumnFamilies
         where
        type Rs ProjectsInstancesTablesModifyColumnFamilies =
             Table
        type Scopes
               ProjectsInstancesTablesModifyColumnFamilies
             =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesTablesModifyColumnFamilies'{..}
          = go _pitmcfName _pitmcfXgafv _pitmcfUploadProtocol
              _pitmcfAccessToken
              _pitmcfUploadType
              _pitmcfCallback
              (Just AltJSON)
              _pitmcfPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesTablesModifyColumnFamiliesResource)
                      mempty
