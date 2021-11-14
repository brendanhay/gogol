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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.CheckValidCreds
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns true if valid credentials exist for the given data source and
-- requesting user. Some data sources doesn\'t support service account, so
-- we need to talk to them on behalf of the end user. This API just checks
-- whether we have OAuth token for the particular user, which is a
-- pre-requisite before user can create a transfer config.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.dataSources.checkValidCreds@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.DataSources.CheckValidCreds
    (
    -- * REST Resource
      ProjectsLocationsDataSourcesCheckValidCredsResource

    -- * Creating a Request
    , projectsLocationsDataSourcesCheckValidCreds
    , ProjectsLocationsDataSourcesCheckValidCreds

    -- * Request Lenses
    , pldscvcXgafv
    , pldscvcUploadProtocol
    , pldscvcAccessToken
    , pldscvcUploadType
    , pldscvcPayload
    , pldscvcName
    , pldscvcCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.dataSources.checkValidCreds@ method which the
-- 'ProjectsLocationsDataSourcesCheckValidCreds' request conforms to.
type ProjectsLocationsDataSourcesCheckValidCredsResource
     =
     "v1" :>
       CaptureMode "name" "checkValidCreds" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] CheckValidCredsRequest :>
                       Post '[JSON] CheckValidCredsResponse

-- | Returns true if valid credentials exist for the given data source and
-- requesting user. Some data sources doesn\'t support service account, so
-- we need to talk to them on behalf of the end user. This API just checks
-- whether we have OAuth token for the particular user, which is a
-- pre-requisite before user can create a transfer config.
--
-- /See:/ 'projectsLocationsDataSourcesCheckValidCreds' smart constructor.
data ProjectsLocationsDataSourcesCheckValidCreds =
  ProjectsLocationsDataSourcesCheckValidCreds'
    { _pldscvcXgafv :: !(Maybe Xgafv)
    , _pldscvcUploadProtocol :: !(Maybe Text)
    , _pldscvcAccessToken :: !(Maybe Text)
    , _pldscvcUploadType :: !(Maybe Text)
    , _pldscvcPayload :: !CheckValidCredsRequest
    , _pldscvcName :: !Text
    , _pldscvcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSourcesCheckValidCreds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscvcXgafv'
--
-- * 'pldscvcUploadProtocol'
--
-- * 'pldscvcAccessToken'
--
-- * 'pldscvcUploadType'
--
-- * 'pldscvcPayload'
--
-- * 'pldscvcName'
--
-- * 'pldscvcCallback'
projectsLocationsDataSourcesCheckValidCreds
    :: CheckValidCredsRequest -- ^ 'pldscvcPayload'
    -> Text -- ^ 'pldscvcName'
    -> ProjectsLocationsDataSourcesCheckValidCreds
projectsLocationsDataSourcesCheckValidCreds pPldscvcPayload_ pPldscvcName_ =
  ProjectsLocationsDataSourcesCheckValidCreds'
    { _pldscvcXgafv = Nothing
    , _pldscvcUploadProtocol = Nothing
    , _pldscvcAccessToken = Nothing
    , _pldscvcUploadType = Nothing
    , _pldscvcPayload = pPldscvcPayload_
    , _pldscvcName = pPldscvcName_
    , _pldscvcCallback = Nothing
    }


-- | V1 error format.
pldscvcXgafv :: Lens' ProjectsLocationsDataSourcesCheckValidCreds (Maybe Xgafv)
pldscvcXgafv
  = lens _pldscvcXgafv (\ s a -> s{_pldscvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscvcUploadProtocol :: Lens' ProjectsLocationsDataSourcesCheckValidCreds (Maybe Text)
pldscvcUploadProtocol
  = lens _pldscvcUploadProtocol
      (\ s a -> s{_pldscvcUploadProtocol = a})

-- | OAuth access token.
pldscvcAccessToken :: Lens' ProjectsLocationsDataSourcesCheckValidCreds (Maybe Text)
pldscvcAccessToken
  = lens _pldscvcAccessToken
      (\ s a -> s{_pldscvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscvcUploadType :: Lens' ProjectsLocationsDataSourcesCheckValidCreds (Maybe Text)
pldscvcUploadType
  = lens _pldscvcUploadType
      (\ s a -> s{_pldscvcUploadType = a})

-- | Multipart request metadata.
pldscvcPayload :: Lens' ProjectsLocationsDataSourcesCheckValidCreds CheckValidCredsRequest
pldscvcPayload
  = lens _pldscvcPayload
      (\ s a -> s{_pldscvcPayload = a})

-- | Required. The data source in the form:
-- \`projects\/{project_id}\/dataSources\/{data_source_id}\` or
-- \`projects\/{project_id}\/locations\/{location_id}\/dataSources\/{data_source_id}\`.
pldscvcName :: Lens' ProjectsLocationsDataSourcesCheckValidCreds Text
pldscvcName
  = lens _pldscvcName (\ s a -> s{_pldscvcName = a})

-- | JSONP
pldscvcCallback :: Lens' ProjectsLocationsDataSourcesCheckValidCreds (Maybe Text)
pldscvcCallback
  = lens _pldscvcCallback
      (\ s a -> s{_pldscvcCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSourcesCheckValidCreds
         where
        type Rs ProjectsLocationsDataSourcesCheckValidCreds =
             CheckValidCredsResponse
        type Scopes
               ProjectsLocationsDataSourcesCheckValidCreds
             =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient
          ProjectsLocationsDataSourcesCheckValidCreds'{..}
          = go _pldscvcName _pldscvcXgafv
              _pldscvcUploadProtocol
              _pldscvcAccessToken
              _pldscvcUploadType
              _pldscvcCallback
              (Just AltJSON)
              _pldscvcPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSourcesCheckValidCredsResource)
                      mempty
