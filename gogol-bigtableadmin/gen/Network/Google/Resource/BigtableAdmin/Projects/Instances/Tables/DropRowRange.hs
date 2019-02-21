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
-- Module      : Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.DropRowRange
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently drop\/delete a row range from a specified table. The request
-- can specify whether to delete all rows in a table, or only those that
-- match a particular prefix.
--
-- /See:/ <https://cloud.google.com/bigtable/ Cloud Bigtable Admin API Reference> for @bigtableadmin.projects.instances.tables.dropRowRange@.
module Network.Google.Resource.BigtableAdmin.Projects.Instances.Tables.DropRowRange
    (
    -- * REST Resource
      ProjectsInstancesTablesDropRowRangeResource

    -- * Creating a Request
    , projectsInstancesTablesDropRowRange
    , ProjectsInstancesTablesDropRowRange

    -- * Request Lenses
    , pitdrrXgafv
    , pitdrrUploadProtocol
    , pitdrrAccessToken
    , pitdrrUploadType
    , pitdrrPayload
    , pitdrrName
    , pitdrrCallback
    ) where

import           Network.Google.BigtableAdmin.Types
import           Network.Google.Prelude

-- | A resource alias for @bigtableadmin.projects.instances.tables.dropRowRange@ method which the
-- 'ProjectsInstancesTablesDropRowRange' request conforms to.
type ProjectsInstancesTablesDropRowRangeResource =
     "v2" :>
       CaptureMode "name" "dropRowRange" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DropRowRangeRequest :>
                       Post '[JSON] Empty

-- | Permanently drop\/delete a row range from a specified table. The request
-- can specify whether to delete all rows in a table, or only those that
-- match a particular prefix.
--
-- /See:/ 'projectsInstancesTablesDropRowRange' smart constructor.
data ProjectsInstancesTablesDropRowRange =
  ProjectsInstancesTablesDropRowRange'
    { _pitdrrXgafv          :: !(Maybe Xgafv)
    , _pitdrrUploadProtocol :: !(Maybe Text)
    , _pitdrrAccessToken    :: !(Maybe Text)
    , _pitdrrUploadType     :: !(Maybe Text)
    , _pitdrrPayload        :: !DropRowRangeRequest
    , _pitdrrName           :: !Text
    , _pitdrrCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesTablesDropRowRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitdrrXgafv'
--
-- * 'pitdrrUploadProtocol'
--
-- * 'pitdrrAccessToken'
--
-- * 'pitdrrUploadType'
--
-- * 'pitdrrPayload'
--
-- * 'pitdrrName'
--
-- * 'pitdrrCallback'
projectsInstancesTablesDropRowRange
    :: DropRowRangeRequest -- ^ 'pitdrrPayload'
    -> Text -- ^ 'pitdrrName'
    -> ProjectsInstancesTablesDropRowRange
projectsInstancesTablesDropRowRange pPitdrrPayload_ pPitdrrName_ =
  ProjectsInstancesTablesDropRowRange'
    { _pitdrrXgafv = Nothing
    , _pitdrrUploadProtocol = Nothing
    , _pitdrrAccessToken = Nothing
    , _pitdrrUploadType = Nothing
    , _pitdrrPayload = pPitdrrPayload_
    , _pitdrrName = pPitdrrName_
    , _pitdrrCallback = Nothing
    }


-- | V1 error format.
pitdrrXgafv :: Lens' ProjectsInstancesTablesDropRowRange (Maybe Xgafv)
pitdrrXgafv
  = lens _pitdrrXgafv (\ s a -> s{_pitdrrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitdrrUploadProtocol :: Lens' ProjectsInstancesTablesDropRowRange (Maybe Text)
pitdrrUploadProtocol
  = lens _pitdrrUploadProtocol
      (\ s a -> s{_pitdrrUploadProtocol = a})

-- | OAuth access token.
pitdrrAccessToken :: Lens' ProjectsInstancesTablesDropRowRange (Maybe Text)
pitdrrAccessToken
  = lens _pitdrrAccessToken
      (\ s a -> s{_pitdrrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitdrrUploadType :: Lens' ProjectsInstancesTablesDropRowRange (Maybe Text)
pitdrrUploadType
  = lens _pitdrrUploadType
      (\ s a -> s{_pitdrrUploadType = a})

-- | Multipart request metadata.
pitdrrPayload :: Lens' ProjectsInstancesTablesDropRowRange DropRowRangeRequest
pitdrrPayload
  = lens _pitdrrPayload
      (\ s a -> s{_pitdrrPayload = a})

-- | The unique name of the table on which to drop a range of rows. Values
-- are of the form \`projects\/\/instances\/\/tables\/
-- \`.
pitdrrName :: Lens' ProjectsInstancesTablesDropRowRange Text
pitdrrName
  = lens _pitdrrName (\ s a -> s{_pitdrrName = a})

-- | JSONP
pitdrrCallback :: Lens' ProjectsInstancesTablesDropRowRange (Maybe Text)
pitdrrCallback
  = lens _pitdrrCallback
      (\ s a -> s{_pitdrrCallback = a})

instance GoogleRequest
           ProjectsInstancesTablesDropRowRange
         where
        type Rs ProjectsInstancesTablesDropRowRange = Empty
        type Scopes ProjectsInstancesTablesDropRowRange =
             '["https://www.googleapis.com/auth/bigtable.admin",
               "https://www.googleapis.com/auth/bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-bigtable.admin",
               "https://www.googleapis.com/auth/cloud-bigtable.admin.table",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsInstancesTablesDropRowRange'{..}
          = go _pitdrrName _pitdrrXgafv _pitdrrUploadProtocol
              _pitdrrAccessToken
              _pitdrrUploadType
              _pitdrrCallback
              (Just AltJSON)
              _pitdrrPayload
              bigtableAdminService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsInstancesTablesDropRowRangeResource)
                      mempty
