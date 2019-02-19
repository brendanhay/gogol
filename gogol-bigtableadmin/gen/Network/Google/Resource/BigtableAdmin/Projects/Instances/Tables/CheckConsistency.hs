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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.CheckConsistency
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks replication consistency based on a consistency token, that is, if
-- replication has caught up based on the conditions specified in the token
-- and the check request.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.checkConsistency@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.CheckConsistency
    (
    -- * REST Resource
      ProjectsInstancesTablesCheckConsistencyResource

    -- * Creating a Request
    , projectsInstancesTablesCheckConsistency
    , ProjectsInstancesTablesCheckConsistency

    -- * Request Lenses
    , pitccXgafv
    , pitccUploadProtocol
    , pitccAccessToken
    , pitccUploadType
    , pitccPayload
    , pitccName
    , pitccCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.checkConsistency@ method which the
-- 'ProjectsInstancesTablesCheckConsistency' request conforms to.
type ProjectsInstancesTablesCheckConsistencyResource
     =
     "v2" :>
       CaptureMode "name" "checkConsistency" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CheckConsistencyRequest :>
                       Post '[JSON] CheckConsistencyResponse

-- | Checks replication consistency based on a consistency token, that is, if
-- replication has caught up based on the conditions specified in the token
-- and the check request.
--
-- /See:/ 'projectsInstancesTablesCheckConsistency' smart constructor.
data ProjectsInstancesTablesCheckConsistency =
  ProjectsInstancesTablesCheckConsistency'
    { _pitccXgafv          :: !(Maybe Xgafv)
    , _pitccUploadProtocol :: !(Maybe Text)
    , _pitccAccessToken    :: !(Maybe Text)
    , _pitccUploadType     :: !(Maybe Text)
    , _pitccPayload        :: !CheckConsistencyRequest
    , _pitccName           :: !Text
    , _pitccCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesCheckConsistency' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitccXgafv'
--
-- * 'pitccUploadProtocol'
--
-- * 'pitccAccessToken'
--
-- * 'pitccUploadType'
--
-- * 'pitccPayload'
--
-- * 'pitccName'
--
-- * 'pitccCallback'
projectsInstancesTablesCheckConsistency
    :: CheckConsistencyRequest -- ^ 'pitccPayload'
    -> Text -- ^ 'pitccName'
    -> ProjectsInstancesTablesCheckConsistency
projectsInstancesTablesCheckConsistency pPitccPayload_ pPitccName_ =
  ProjectsInstancesTablesCheckConsistency'
    { _pitccXgafv = Nothing
    , _pitccUploadProtocol = Nothing
    , _pitccAccessToken = Nothing
    , _pitccUploadType = Nothing
    , _pitccPayload = pPitccPayload_
    , _pitccName = pPitccName_
    , _pitccCallback = Nothing
    }


-- | V1 error format.
pitccXgafv :: Lens' ProjectsInstancesTablesCheckConsistency (Maybe Xgafv)
pitccXgafv
  = lens _pitccXgafv (\ s a -> s{_pitccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitccUploadProtocol :: Lens' ProjectsInstancesTablesCheckConsistency (Maybe Text)
pitccUploadProtocol
  = lens _pitccUploadProtocol
      (\ s a -> s{_pitccUploadProtocol = a})

-- | OAuth access token.
pitccAccessToken :: Lens' ProjectsInstancesTablesCheckConsistency (Maybe Text)
pitccAccessToken
  = lens _pitccAccessToken
      (\ s a -> s{_pitccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitccUploadType :: Lens' ProjectsInstancesTablesCheckConsistency (Maybe Text)
pitccUploadType
  = lens _pitccUploadType
      (\ s a -> s{_pitccUploadType = a})

-- | Multipart request metadata.
pitccPayload :: Lens' ProjectsInstancesTablesCheckConsistency CheckConsistencyRequest
pitccPayload
  = lens _pitccPayload (\ s a -> s{_pitccPayload = a})

-- | The unique name of the Table for which to check replication consistency.
-- Values are of the form \`projects\/\/instances\/\/tables\/
-- \`.
pitccName :: Lens' ProjectsInstancesTablesCheckConsistency Text
pitccName
  = lens _pitccName (\ s a -> s{_pitccName = a})

-- | JSONP
pitccCallback :: Lens' ProjectsInstancesTablesCheckConsistency (Maybe Text)
pitccCallback
  = lens _pitccCallback
      (\ s a -> s{_pitccCallback = a})

instance GoogleRequest
           ProjectsInstancesTablesCheckConsistency
         where
        type Rs ProjectsInstancesTablesCheckConsistency =
             CheckConsistencyResponse
        type Scopes ProjectsInstancesTablesCheckConsistency =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesTablesCheckConsistency'{..}
          = go _pitccName _pitccXgafv _pitccUploadProtocol
              _pitccAccessToken
              _pitccUploadType
              _pitccCallback
              (Just AltJSON)
              _pitccPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsInstancesTablesCheckConsistencyResource)
                      mempty
