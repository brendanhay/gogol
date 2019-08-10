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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new data transfer configuration.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.create@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Create
    (
    -- * REST Resource
      ProjectsTransferConfigsCreateResource

    -- * Creating a Request
    , projectsTransferConfigsCreate
    , ProjectsTransferConfigsCreate

    -- * Request Lenses
    , ptccParent
    , ptccXgafv
    , ptccUploadProtocol
    , ptccAccessToken
    , ptccUploadType
    , ptccAuthorizationCode
    , ptccPayload
    , ptccVersionInfo
    , ptccCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.create@ method which the
-- 'ProjectsTransferConfigsCreate' request conforms to.
type ProjectsTransferConfigsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "transferConfigs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "authorizationCode" Text :>
                     QueryParam "versionInfo" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TransferConfig :>
                             Post '[JSON] TransferConfig

-- | Creates a new data transfer configuration.
--
-- /See:/ 'projectsTransferConfigsCreate' smart constructor.
data ProjectsTransferConfigsCreate =
  ProjectsTransferConfigsCreate'
    { _ptccParent            :: !Text
    , _ptccXgafv             :: !(Maybe Xgafv)
    , _ptccUploadProtocol    :: !(Maybe Text)
    , _ptccAccessToken       :: !(Maybe Text)
    , _ptccUploadType        :: !(Maybe Text)
    , _ptccAuthorizationCode :: !(Maybe Text)
    , _ptccPayload           :: !TransferConfig
    , _ptccVersionInfo       :: !(Maybe Text)
    , _ptccCallback          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTransferConfigsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptccParent'
--
-- * 'ptccXgafv'
--
-- * 'ptccUploadProtocol'
--
-- * 'ptccAccessToken'
--
-- * 'ptccUploadType'
--
-- * 'ptccAuthorizationCode'
--
-- * 'ptccPayload'
--
-- * 'ptccVersionInfo'
--
-- * 'ptccCallback'
projectsTransferConfigsCreate
    :: Text -- ^ 'ptccParent'
    -> TransferConfig -- ^ 'ptccPayload'
    -> ProjectsTransferConfigsCreate
projectsTransferConfigsCreate pPtccParent_ pPtccPayload_ =
  ProjectsTransferConfigsCreate'
    { _ptccParent = pPtccParent_
    , _ptccXgafv = Nothing
    , _ptccUploadProtocol = Nothing
    , _ptccAccessToken = Nothing
    , _ptccUploadType = Nothing
    , _ptccAuthorizationCode = Nothing
    , _ptccPayload = pPtccPayload_
    , _ptccVersionInfo = Nothing
    , _ptccCallback = Nothing
    }


-- | The BigQuery project id where the transfer configuration should be
-- created. Must be in the format
-- projects\/{project_id}\/locations\/{location_id} If specified location
-- and location of the destination bigquery dataset do not match - the
-- request will fail.
ptccParent :: Lens' ProjectsTransferConfigsCreate Text
ptccParent
  = lens _ptccParent (\ s a -> s{_ptccParent = a})

-- | V1 error format.
ptccXgafv :: Lens' ProjectsTransferConfigsCreate (Maybe Xgafv)
ptccXgafv
  = lens _ptccXgafv (\ s a -> s{_ptccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptccUploadProtocol :: Lens' ProjectsTransferConfigsCreate (Maybe Text)
ptccUploadProtocol
  = lens _ptccUploadProtocol
      (\ s a -> s{_ptccUploadProtocol = a})

-- | OAuth access token.
ptccAccessToken :: Lens' ProjectsTransferConfigsCreate (Maybe Text)
ptccAccessToken
  = lens _ptccAccessToken
      (\ s a -> s{_ptccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptccUploadType :: Lens' ProjectsTransferConfigsCreate (Maybe Text)
ptccUploadType
  = lens _ptccUploadType
      (\ s a -> s{_ptccUploadType = a})

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
ptccAuthorizationCode :: Lens' ProjectsTransferConfigsCreate (Maybe Text)
ptccAuthorizationCode
  = lens _ptccAuthorizationCode
      (\ s a -> s{_ptccAuthorizationCode = a})

-- | Multipart request metadata.
ptccPayload :: Lens' ProjectsTransferConfigsCreate TransferConfig
ptccPayload
  = lens _ptccPayload (\ s a -> s{_ptccPayload = a})

-- | Optional version info. If users want to find a very recent access token,
-- that is, immediately after approving access, users have to set the
-- version_info claim in the token request. To obtain the version_info,
-- users must use the “none+gsession” response type. which be return a
-- version_info back in the authorization response which be be put in a JWT
-- claim in the token request.
ptccVersionInfo :: Lens' ProjectsTransferConfigsCreate (Maybe Text)
ptccVersionInfo
  = lens _ptccVersionInfo
      (\ s a -> s{_ptccVersionInfo = a})

-- | JSONP
ptccCallback :: Lens' ProjectsTransferConfigsCreate (Maybe Text)
ptccCallback
  = lens _ptccCallback (\ s a -> s{_ptccCallback = a})

instance GoogleRequest ProjectsTransferConfigsCreate
         where
        type Rs ProjectsTransferConfigsCreate =
             TransferConfig
        type Scopes ProjectsTransferConfigsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTransferConfigsCreate'{..}
          = go _ptccParent _ptccXgafv _ptccUploadProtocol
              _ptccAccessToken
              _ptccUploadType
              _ptccAuthorizationCode
              _ptccVersionInfo
              _ptccCallback
              (Just AltJSON)
              _ptccPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsTransferConfigsCreateResource)
                      mempty
