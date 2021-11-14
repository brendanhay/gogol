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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new data transfer configuration.
--
-- /See:/ <https://cloud.google.com/bigquery-transfer/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.create@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Create
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsCreateResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsCreate
    , ProjectsLocationsTransferConfigsCreate

    -- * Request Lenses
    , pltccParent
    , pltccXgafv
    , pltccUploadProtocol
    , pltccAccessToken
    , pltccServiceAccountName
    , pltccUploadType
    , pltccAuthorizationCode
    , pltccPayload
    , pltccVersionInfo
    , pltccCallback
    ) where

import Network.Google.BigQueryDataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.create@ method which the
-- 'ProjectsLocationsTransferConfigsCreate' request conforms to.
type ProjectsLocationsTransferConfigsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "transferConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "serviceAccountName" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "authorizationCode" Text :>
                       QueryParam "versionInfo" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] TransferConfig :>
                               Post '[JSON] TransferConfig

-- | Creates a new data transfer configuration.
--
-- /See:/ 'projectsLocationsTransferConfigsCreate' smart constructor.
data ProjectsLocationsTransferConfigsCreate =
  ProjectsLocationsTransferConfigsCreate'
    { _pltccParent :: !Text
    , _pltccXgafv :: !(Maybe Xgafv)
    , _pltccUploadProtocol :: !(Maybe Text)
    , _pltccAccessToken :: !(Maybe Text)
    , _pltccServiceAccountName :: !(Maybe Text)
    , _pltccUploadType :: !(Maybe Text)
    , _pltccAuthorizationCode :: !(Maybe Text)
    , _pltccPayload :: !TransferConfig
    , _pltccVersionInfo :: !(Maybe Text)
    , _pltccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTransferConfigsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltccParent'
--
-- * 'pltccXgafv'
--
-- * 'pltccUploadProtocol'
--
-- * 'pltccAccessToken'
--
-- * 'pltccServiceAccountName'
--
-- * 'pltccUploadType'
--
-- * 'pltccAuthorizationCode'
--
-- * 'pltccPayload'
--
-- * 'pltccVersionInfo'
--
-- * 'pltccCallback'
projectsLocationsTransferConfigsCreate
    :: Text -- ^ 'pltccParent'
    -> TransferConfig -- ^ 'pltccPayload'
    -> ProjectsLocationsTransferConfigsCreate
projectsLocationsTransferConfigsCreate pPltccParent_ pPltccPayload_ =
  ProjectsLocationsTransferConfigsCreate'
    { _pltccParent = pPltccParent_
    , _pltccXgafv = Nothing
    , _pltccUploadProtocol = Nothing
    , _pltccAccessToken = Nothing
    , _pltccServiceAccountName = Nothing
    , _pltccUploadType = Nothing
    , _pltccAuthorizationCode = Nothing
    , _pltccPayload = pPltccPayload_
    , _pltccVersionInfo = Nothing
    , _pltccCallback = Nothing
    }


-- | Required. The BigQuery project id where the transfer configuration
-- should be created. Must be in the format
-- projects\/{project_id}\/locations\/{location_id} or
-- projects\/{project_id}. If specified location and location of the
-- destination bigquery dataset do not match - the request will fail.
pltccParent :: Lens' ProjectsLocationsTransferConfigsCreate Text
pltccParent
  = lens _pltccParent (\ s a -> s{_pltccParent = a})

-- | V1 error format.
pltccXgafv :: Lens' ProjectsLocationsTransferConfigsCreate (Maybe Xgafv)
pltccXgafv
  = lens _pltccXgafv (\ s a -> s{_pltccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltccUploadProtocol :: Lens' ProjectsLocationsTransferConfigsCreate (Maybe Text)
pltccUploadProtocol
  = lens _pltccUploadProtocol
      (\ s a -> s{_pltccUploadProtocol = a})

-- | OAuth access token.
pltccAccessToken :: Lens' ProjectsLocationsTransferConfigsCreate (Maybe Text)
pltccAccessToken
  = lens _pltccAccessToken
      (\ s a -> s{_pltccAccessToken = a})

-- | Optional service account name. If this field is set, transfer config
-- will be created with this service account credentials. It requires that
-- requesting user calling this API has permissions to act as this service
-- account.
pltccServiceAccountName :: Lens' ProjectsLocationsTransferConfigsCreate (Maybe Text)
pltccServiceAccountName
  = lens _pltccServiceAccountName
      (\ s a -> s{_pltccServiceAccountName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltccUploadType :: Lens' ProjectsLocationsTransferConfigsCreate (Maybe Text)
pltccUploadType
  = lens _pltccUploadType
      (\ s a -> s{_pltccUploadType = a})

-- | Optional OAuth2 authorization code to use with this transfer
-- configuration. This is required if new credentials are needed, as
-- indicated by \`CheckValidCreds\`. In order to obtain authorization_code,
-- please make a request to
-- https:\/\/www.gstatic.com\/bigquerydatatransfer\/oauthz\/auth?client_id=&scope=&redirect_uri=
-- * client_id should be OAuth client_id of BigQuery DTS API for the given
-- data source returned by ListDataSources method. * data_source_scopes are
-- the scopes returned by ListDataSources method. * redirect_uri is an
-- optional parameter. If not specified, then authorization code is posted
-- to the opener of authorization flow window. Otherwise it will be sent to
-- the redirect uri. A special value of urn:ietf:wg:oauth:2.0:oob means
-- that authorization code should be returned in the title bar of the
-- browser, with the page text prompting the user to copy the code and
-- paste it in the application.
pltccAuthorizationCode :: Lens' ProjectsLocationsTransferConfigsCreate (Maybe Text)
pltccAuthorizationCode
  = lens _pltccAuthorizationCode
      (\ s a -> s{_pltccAuthorizationCode = a})

-- | Multipart request metadata.
pltccPayload :: Lens' ProjectsLocationsTransferConfigsCreate TransferConfig
pltccPayload
  = lens _pltccPayload (\ s a -> s{_pltccPayload = a})

-- | Optional version info. If users want to find a very recent access token,
-- that is, immediately after approving access, users have to set the
-- version_info claim in the token request. To obtain the version_info,
-- users must use the \"none+gsession\" response type. which be return a
-- version_info back in the authorization response which be be put in a JWT
-- claim in the token request.
pltccVersionInfo :: Lens' ProjectsLocationsTransferConfigsCreate (Maybe Text)
pltccVersionInfo
  = lens _pltccVersionInfo
      (\ s a -> s{_pltccVersionInfo = a})

-- | JSONP
pltccCallback :: Lens' ProjectsLocationsTransferConfigsCreate (Maybe Text)
pltccCallback
  = lens _pltccCallback
      (\ s a -> s{_pltccCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsCreate
         where
        type Rs ProjectsLocationsTransferConfigsCreate =
             TransferConfig
        type Scopes ProjectsLocationsTransferConfigsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsTransferConfigsCreate'{..}
          = go _pltccParent _pltccXgafv _pltccUploadProtocol
              _pltccAccessToken
              _pltccServiceAccountName
              _pltccUploadType
              _pltccAuthorizationCode
              _pltccVersionInfo
              _pltccCallback
              (Just AltJSON)
              _pltccPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTransferConfigsCreateResource)
                      mempty
