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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.GenerateConsistencyToken
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a consistency token for a Table, which can be used in
-- CheckConsistency to check whether mutations to the table that finished
-- before this call started have been replicated. The tokens will be
-- available for 90 days.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.generateConsistencyToken@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.GenerateConsistencyToken
    (
    -- * REST Resource
      ProjectsInstancesTablesGenerateConsistencyTokenResource

    -- * Creating a Request
    , projectsInstancesTablesGenerateConsistencyToken
    , ProjectsInstancesTablesGenerateConsistencyToken

    -- * Request Lenses
    , pitgctXgafv
    , pitgctUploadProtocol
    , pitgctAccessToken
    , pitgctUploadType
    , pitgctPayload
    , pitgctName
    , pitgctCallback
    ) where

import Network.Google.BigtableAdmin.Types
import Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.generateConsistencyToken@ method which the
-- 'ProjectsInstancesTablesGenerateConsistencyToken' request conforms to.
type ProjectsInstancesTablesGenerateConsistencyTokenResource
     =
     "v2" :>
       CaptureMode "name" "generateConsistencyToken" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GenerateConsistencyTokenRequest :>
                       Post '[JSON] GenerateConsistencyTokenResponse

-- | Generates a consistency token for a Table, which can be used in
-- CheckConsistency to check whether mutations to the table that finished
-- before this call started have been replicated. The tokens will be
-- available for 90 days.
--
-- /See:/ 'projectsInstancesTablesGenerateConsistencyToken' smart constructor.
data ProjectsInstancesTablesGenerateConsistencyToken =
  ProjectsInstancesTablesGenerateConsistencyToken'
    { _pitgctXgafv :: !(Maybe Xgafv)
    , _pitgctUploadProtocol :: !(Maybe Text)
    , _pitgctAccessToken :: !(Maybe Text)
    , _pitgctUploadType :: !(Maybe Text)
    , _pitgctPayload :: !GenerateConsistencyTokenRequest
    , _pitgctName :: !Text
    , _pitgctCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesGenerateConsistencyToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitgctXgafv'
--
-- * 'pitgctUploadProtocol'
--
-- * 'pitgctAccessToken'
--
-- * 'pitgctUploadType'
--
-- * 'pitgctPayload'
--
-- * 'pitgctName'
--
-- * 'pitgctCallback'
projectsInstancesTablesGenerateConsistencyToken
    :: GenerateConsistencyTokenRequest -- ^ 'pitgctPayload'
    -> Text -- ^ 'pitgctName'
    -> ProjectsInstancesTablesGenerateConsistencyToken
projectsInstancesTablesGenerateConsistencyToken pPitgctPayload_ pPitgctName_ =
  ProjectsInstancesTablesGenerateConsistencyToken'
    { _pitgctXgafv = Nothing
    , _pitgctUploadProtocol = Nothing
    , _pitgctAccessToken = Nothing
    , _pitgctUploadType = Nothing
    , _pitgctPayload = pPitgctPayload_
    , _pitgctName = pPitgctName_
    , _pitgctCallback = Nothing
    }


-- | V1 error format.
pitgctXgafv :: Lens' ProjectsInstancesTablesGenerateConsistencyToken (Maybe Xgafv)
pitgctXgafv
  = lens _pitgctXgafv (\ s a -> s{_pitgctXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitgctUploadProtocol :: Lens' ProjectsInstancesTablesGenerateConsistencyToken (Maybe Text)
pitgctUploadProtocol
  = lens _pitgctUploadProtocol
      (\ s a -> s{_pitgctUploadProtocol = a})

-- | OAuth access token.
pitgctAccessToken :: Lens' ProjectsInstancesTablesGenerateConsistencyToken (Maybe Text)
pitgctAccessToken
  = lens _pitgctAccessToken
      (\ s a -> s{_pitgctAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitgctUploadType :: Lens' ProjectsInstancesTablesGenerateConsistencyToken (Maybe Text)
pitgctUploadType
  = lens _pitgctUploadType
      (\ s a -> s{_pitgctUploadType = a})

-- | Multipart request metadata.
pitgctPayload :: Lens' ProjectsInstancesTablesGenerateConsistencyToken GenerateConsistencyTokenRequest
pitgctPayload
  = lens _pitgctPayload
      (\ s a -> s{_pitgctPayload = a})

-- | Required. The unique name of the Table for which to create a consistency
-- token. Values are of the form
-- \`projects\/{project}\/instances\/{instance}\/tables\/{table}\`.
pitgctName :: Lens' ProjectsInstancesTablesGenerateConsistencyToken Text
pitgctName
  = lens _pitgctName (\ s a -> s{_pitgctName = a})

-- | JSONP
pitgctCallback :: Lens' ProjectsInstancesTablesGenerateConsistencyToken (Maybe Text)
pitgctCallback
  = lens _pitgctCallback
      (\ s a -> s{_pitgctCallback = a})

instance GoogleRequest
           ProjectsInstancesTablesGenerateConsistencyToken
         where
        type Rs
               ProjectsInstancesTablesGenerateConsistencyToken
             = GenerateConsistencyTokenResponse
        type Scopes
               ProjectsInstancesTablesGenerateConsistencyToken
             =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesTablesGenerateConsistencyToken'{..}
          = go _pitgctName _pitgctXgafv _pitgctUploadProtocol
              _pitgctAccessToken
              _pitgctUploadType
              _pitgctCallback
              (Just AltJSON)
              _pitgctPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesTablesGenerateConsistencyTokenResource)
                      mempty
