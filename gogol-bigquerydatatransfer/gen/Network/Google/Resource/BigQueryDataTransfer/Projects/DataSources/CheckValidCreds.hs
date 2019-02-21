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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.CheckValidCreds
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.dataSources.checkValidCreds@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.DataSources.CheckValidCreds
    (
    -- * REST Resource
      ProjectsDataSourcesCheckValidCredsResource

    -- * Creating a Request
    , projectsDataSourcesCheckValidCreds
    , ProjectsDataSourcesCheckValidCreds

    -- * Request Lenses
    , pdscvcXgafv
    , pdscvcUploadProtocol
    , pdscvcAccessToken
    , pdscvcUploadType
    , pdscvcPayload
    , pdscvcName
    , pdscvcCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.dataSources.checkValidCreds@ method which the
-- 'ProjectsDataSourcesCheckValidCreds' request conforms to.
type ProjectsDataSourcesCheckValidCredsResource =
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
-- /See:/ 'projectsDataSourcesCheckValidCreds' smart constructor.
data ProjectsDataSourcesCheckValidCreds =
  ProjectsDataSourcesCheckValidCreds'
    { _pdscvcXgafv          :: !(Maybe Xgafv)
    , _pdscvcUploadProtocol :: !(Maybe Text)
    , _pdscvcAccessToken    :: !(Maybe Text)
    , _pdscvcUploadType     :: !(Maybe Text)
    , _pdscvcPayload        :: !CheckValidCredsRequest
    , _pdscvcName           :: !Text
    , _pdscvcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDataSourcesCheckValidCreds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdscvcXgafv'
--
-- * 'pdscvcUploadProtocol'
--
-- * 'pdscvcAccessToken'
--
-- * 'pdscvcUploadType'
--
-- * 'pdscvcPayload'
--
-- * 'pdscvcName'
--
-- * 'pdscvcCallback'
projectsDataSourcesCheckValidCreds
    :: CheckValidCredsRequest -- ^ 'pdscvcPayload'
    -> Text -- ^ 'pdscvcName'
    -> ProjectsDataSourcesCheckValidCreds
projectsDataSourcesCheckValidCreds pPdscvcPayload_ pPdscvcName_ =
  ProjectsDataSourcesCheckValidCreds'
    { _pdscvcXgafv = Nothing
    , _pdscvcUploadProtocol = Nothing
    , _pdscvcAccessToken = Nothing
    , _pdscvcUploadType = Nothing
    , _pdscvcPayload = pPdscvcPayload_
    , _pdscvcName = pPdscvcName_
    , _pdscvcCallback = Nothing
    }


-- | V1 error format.
pdscvcXgafv :: Lens' ProjectsDataSourcesCheckValidCreds (Maybe Xgafv)
pdscvcXgafv
  = lens _pdscvcXgafv (\ s a -> s{_pdscvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdscvcUploadProtocol :: Lens' ProjectsDataSourcesCheckValidCreds (Maybe Text)
pdscvcUploadProtocol
  = lens _pdscvcUploadProtocol
      (\ s a -> s{_pdscvcUploadProtocol = a})

-- | OAuth access token.
pdscvcAccessToken :: Lens' ProjectsDataSourcesCheckValidCreds (Maybe Text)
pdscvcAccessToken
  = lens _pdscvcAccessToken
      (\ s a -> s{_pdscvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdscvcUploadType :: Lens' ProjectsDataSourcesCheckValidCreds (Maybe Text)
pdscvcUploadType
  = lens _pdscvcUploadType
      (\ s a -> s{_pdscvcUploadType = a})

-- | Multipart request metadata.
pdscvcPayload :: Lens' ProjectsDataSourcesCheckValidCreds CheckValidCredsRequest
pdscvcPayload
  = lens _pdscvcPayload
      (\ s a -> s{_pdscvcPayload = a})

-- | The data source in the form:
-- \`projects\/{project_id}\/dataSources\/{data_source_id}\`
pdscvcName :: Lens' ProjectsDataSourcesCheckValidCreds Text
pdscvcName
  = lens _pdscvcName (\ s a -> s{_pdscvcName = a})

-- | JSONP
pdscvcCallback :: Lens' ProjectsDataSourcesCheckValidCreds (Maybe Text)
pdscvcCallback
  = lens _pdscvcCallback
      (\ s a -> s{_pdscvcCallback = a})

instance GoogleRequest
           ProjectsDataSourcesCheckValidCreds
         where
        type Rs ProjectsDataSourcesCheckValidCreds =
             CheckValidCredsResponse
        type Scopes ProjectsDataSourcesCheckValidCreds =
             '["https://www.googleapis.com/auth/bigquery",
               "https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsDataSourcesCheckValidCreds'{..}
          = go _pdscvcName _pdscvcXgafv _pdscvcUploadProtocol
              _pdscvcAccessToken
              _pdscvcUploadType
              _pdscvcCallback
              (Just AltJSON)
              _pdscvcPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDataSourcesCheckValidCredsResource)
                      mempty
