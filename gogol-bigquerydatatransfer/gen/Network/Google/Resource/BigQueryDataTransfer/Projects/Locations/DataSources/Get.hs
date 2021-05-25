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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a supported data source and returns its settings, which can be
-- used for UI rendering.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.dataSources.get@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSourcesGetResource

    -- * Creating a Request
    , projectsLocationsDataSourcesGet
    , ProjectsLocationsDataSourcesGet

    -- * Request Lenses
    , pldsgXgafv
    , pldsgUploadProtocol
    , pldsgAccessToken
    , pldsgUploadType
    , pldsgName
    , pldsgCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.dataSources.get@ method which the
-- 'ProjectsLocationsDataSourcesGet' request conforms to.
type ProjectsLocationsDataSourcesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] DataSource

-- | Retrieves a supported data source and returns its settings, which can be
-- used for UI rendering.
--
-- /See:/ 'projectsLocationsDataSourcesGet' smart constructor.
data ProjectsLocationsDataSourcesGet =
  ProjectsLocationsDataSourcesGet'
    { _pldsgXgafv :: !(Maybe Xgafv)
    , _pldsgUploadProtocol :: !(Maybe Text)
    , _pldsgAccessToken :: !(Maybe Text)
    , _pldsgUploadType :: !(Maybe Text)
    , _pldsgName :: !Text
    , _pldsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsgXgafv'
--
-- * 'pldsgUploadProtocol'
--
-- * 'pldsgAccessToken'
--
-- * 'pldsgUploadType'
--
-- * 'pldsgName'
--
-- * 'pldsgCallback'
projectsLocationsDataSourcesGet
    :: Text -- ^ 'pldsgName'
    -> ProjectsLocationsDataSourcesGet
projectsLocationsDataSourcesGet pPldsgName_ =
  ProjectsLocationsDataSourcesGet'
    { _pldsgXgafv = Nothing
    , _pldsgUploadProtocol = Nothing
    , _pldsgAccessToken = Nothing
    , _pldsgUploadType = Nothing
    , _pldsgName = pPldsgName_
    , _pldsgCallback = Nothing
    }


-- | V1 error format.
pldsgXgafv :: Lens' ProjectsLocationsDataSourcesGet (Maybe Xgafv)
pldsgXgafv
  = lens _pldsgXgafv (\ s a -> s{_pldsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsgUploadProtocol :: Lens' ProjectsLocationsDataSourcesGet (Maybe Text)
pldsgUploadProtocol
  = lens _pldsgUploadProtocol
      (\ s a -> s{_pldsgUploadProtocol = a})

-- | OAuth access token.
pldsgAccessToken :: Lens' ProjectsLocationsDataSourcesGet (Maybe Text)
pldsgAccessToken
  = lens _pldsgAccessToken
      (\ s a -> s{_pldsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsgUploadType :: Lens' ProjectsLocationsDataSourcesGet (Maybe Text)
pldsgUploadType
  = lens _pldsgUploadType
      (\ s a -> s{_pldsgUploadType = a})

-- | Required. The field will contain name of the resource requested, for
-- example: \`projects\/{project_id}\/dataSources\/{data_source_id}\` or
-- \`projects\/{project_id}\/locations\/{location_id}\/dataSources\/{data_source_id}\`
pldsgName :: Lens' ProjectsLocationsDataSourcesGet Text
pldsgName
  = lens _pldsgName (\ s a -> s{_pldsgName = a})

-- | JSONP
pldsgCallback :: Lens' ProjectsLocationsDataSourcesGet (Maybe Text)
pldsgCallback
  = lens _pldsgCallback
      (\ s a -> s{_pldsgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSourcesGet
         where
        type Rs ProjectsLocationsDataSourcesGet = DataSource
        type Scopes ProjectsLocationsDataSourcesGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsLocationsDataSourcesGet'{..}
          = go _pldsgName _pldsgXgafv _pldsgUploadProtocol
              _pldsgAccessToken
              _pldsgUploadType
              _pldsgCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsDataSourcesGetResource)
                      mempty
