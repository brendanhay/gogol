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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a supported data source and returns its settings, which can be
-- used for UI rendering.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.dataSources.get@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.Get
    (
    -- * REST Resource
      ProjectsDataSourcesGetResource

    -- * Creating a Request
    , projectsDataSourcesGet
    , ProjectsDataSourcesGet

    -- * Request Lenses
    , pdsgXgafv
    , pdsgUploadProtocol
    , pdsgAccessToken
    , pdsgUploadType
    , pdsgName
    , pdsgCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.dataSources.get@ method which the
-- 'ProjectsDataSourcesGet' request conforms to.
type ProjectsDataSourcesGetResource =
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
-- /See:/ 'projectsDataSourcesGet' smart constructor.
data ProjectsDataSourcesGet =
  ProjectsDataSourcesGet'
    { _pdsgXgafv          :: !(Maybe Xgafv)
    , _pdsgUploadProtocol :: !(Maybe Text)
    , _pdsgAccessToken    :: !(Maybe Text)
    , _pdsgUploadType     :: !(Maybe Text)
    , _pdsgName           :: !Text
    , _pdsgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDataSourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdsgXgafv'
--
-- * 'pdsgUploadProtocol'
--
-- * 'pdsgAccessToken'
--
-- * 'pdsgUploadType'
--
-- * 'pdsgName'
--
-- * 'pdsgCallback'
projectsDataSourcesGet
    :: Text -- ^ 'pdsgName'
    -> ProjectsDataSourcesGet
projectsDataSourcesGet pPdsgName_ =
  ProjectsDataSourcesGet'
    { _pdsgXgafv = Nothing
    , _pdsgUploadProtocol = Nothing
    , _pdsgAccessToken = Nothing
    , _pdsgUploadType = Nothing
    , _pdsgName = pPdsgName_
    , _pdsgCallback = Nothing
    }


-- | V1 error format.
pdsgXgafv :: Lens' ProjectsDataSourcesGet (Maybe Xgafv)
pdsgXgafv
  = lens _pdsgXgafv (\ s a -> s{_pdsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdsgUploadProtocol :: Lens' ProjectsDataSourcesGet (Maybe Text)
pdsgUploadProtocol
  = lens _pdsgUploadProtocol
      (\ s a -> s{_pdsgUploadProtocol = a})

-- | OAuth access token.
pdsgAccessToken :: Lens' ProjectsDataSourcesGet (Maybe Text)
pdsgAccessToken
  = lens _pdsgAccessToken
      (\ s a -> s{_pdsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdsgUploadType :: Lens' ProjectsDataSourcesGet (Maybe Text)
pdsgUploadType
  = lens _pdsgUploadType
      (\ s a -> s{_pdsgUploadType = a})

-- | The field will contain name of the resource requested, for example:
-- \`projects\/{project_id}\/dataSources\/{data_source_id}\`
pdsgName :: Lens' ProjectsDataSourcesGet Text
pdsgName = lens _pdsgName (\ s a -> s{_pdsgName = a})

-- | JSONP
pdsgCallback :: Lens' ProjectsDataSourcesGet (Maybe Text)
pdsgCallback
  = lens _pdsgCallback (\ s a -> s{_pdsgCallback = a})

instance GoogleRequest ProjectsDataSourcesGet where
        type Rs ProjectsDataSourcesGet = DataSource
        type Scopes ProjectsDataSourcesGet =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsDataSourcesGet'{..}
          = go _pdsgName _pdsgXgafv _pdsgUploadProtocol
              _pdsgAccessToken
              _pdsgUploadType
              _pdsgCallback
              (Just AltJSON)
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDataSourcesGetResource)
                      mempty
