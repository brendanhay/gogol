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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a data transfer configuration. All fields must be set, even if
-- they are not updated.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.transferConfigs.patch@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.TransferConfigs.Patch
    (
    -- * REST Resource
      ProjectsTransferConfigsPatchResource

    -- * Creating a Request
    , projectsTransferConfigsPatch
    , ProjectsTransferConfigsPatch

    -- * Request Lenses
    , ptcpXgafv
    , ptcpUploadProtocol
    , ptcpUpdateMask
    , ptcpAccessToken
    , ptcpUploadType
    , ptcpAuthorizationCode
    , ptcpPayload
    , ptcpVersionInfo
    , ptcpName
    , ptcpCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.transferConfigs.patch@ method which the
-- 'ProjectsTransferConfigsPatch' request conforms to.
type ProjectsTransferConfigsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "authorizationCode" Text :>
                     QueryParam "versionInfo" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TransferConfig :>
                             Patch '[JSON] TransferConfig

-- | Updates a data transfer configuration. All fields must be set, even if
-- they are not updated.
--
-- /See:/ 'projectsTransferConfigsPatch' smart constructor.
data ProjectsTransferConfigsPatch =
  ProjectsTransferConfigsPatch'
    { _ptcpXgafv             :: !(Maybe Xgafv)
    , _ptcpUploadProtocol    :: !(Maybe Text)
    , _ptcpUpdateMask        :: !(Maybe GFieldMask)
    , _ptcpAccessToken       :: !(Maybe Text)
    , _ptcpUploadType        :: !(Maybe Text)
    , _ptcpAuthorizationCode :: !(Maybe Text)
    , _ptcpPayload           :: !TransferConfig
    , _ptcpVersionInfo       :: !(Maybe Text)
    , _ptcpName              :: !Text
    , _ptcpCallback          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTransferConfigsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcpXgafv'
--
-- * 'ptcpUploadProtocol'
--
-- * 'ptcpUpdateMask'
--
-- * 'ptcpAccessToken'
--
-- * 'ptcpUploadType'
--
-- * 'ptcpAuthorizationCode'
--
-- * 'ptcpPayload'
--
-- * 'ptcpVersionInfo'
--
-- * 'ptcpName'
--
-- * 'ptcpCallback'
projectsTransferConfigsPatch
    :: TransferConfig -- ^ 'ptcpPayload'
    -> Text -- ^ 'ptcpName'
    -> ProjectsTransferConfigsPatch
projectsTransferConfigsPatch pPtcpPayload_ pPtcpName_ =
  ProjectsTransferConfigsPatch'
    { _ptcpXgafv = Nothing
    , _ptcpUploadProtocol = Nothing
    , _ptcpUpdateMask = Nothing
    , _ptcpAccessToken = Nothing
    , _ptcpUploadType = Nothing
    , _ptcpAuthorizationCode = Nothing
    , _ptcpPayload = pPtcpPayload_
    , _ptcpVersionInfo = Nothing
    , _ptcpName = pPtcpName_
    , _ptcpCallback = Nothing
    }


-- | V1 error format.
ptcpXgafv :: Lens' ProjectsTransferConfigsPatch (Maybe Xgafv)
ptcpXgafv
  = lens _ptcpXgafv (\ s a -> s{_ptcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcpUploadProtocol :: Lens' ProjectsTransferConfigsPatch (Maybe Text)
ptcpUploadProtocol
  = lens _ptcpUploadProtocol
      (\ s a -> s{_ptcpUploadProtocol = a})

-- | Required list of fields to be updated in this request.
ptcpUpdateMask :: Lens' ProjectsTransferConfigsPatch (Maybe GFieldMask)
ptcpUpdateMask
  = lens _ptcpUpdateMask
      (\ s a -> s{_ptcpUpdateMask = a})

-- | OAuth access token.
ptcpAccessToken :: Lens' ProjectsTransferConfigsPatch (Maybe Text)
ptcpAccessToken
  = lens _ptcpAccessToken
      (\ s a -> s{_ptcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcpUploadType :: Lens' ProjectsTransferConfigsPatch (Maybe Text)
ptcpUploadType
  = lens _ptcpUploadType
      (\ s a -> s{_ptcpUploadType = a})

-- | Optional OAuth2 authorization code to use with this transfer
-- configuration. If it is provided, the transfer configuration will be
-- associated with the authorizing user. In order to obtain
-- authorization_code, please make a request to
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
ptcpAuthorizationCode :: Lens' ProjectsTransferConfigsPatch (Maybe Text)
ptcpAuthorizationCode
  = lens _ptcpAuthorizationCode
      (\ s a -> s{_ptcpAuthorizationCode = a})

-- | Multipart request metadata.
ptcpPayload :: Lens' ProjectsTransferConfigsPatch TransferConfig
ptcpPayload
  = lens _ptcpPayload (\ s a -> s{_ptcpPayload = a})

-- | Optional version info. If users want to find a very recent access token,
-- that is, immediately after approving access, users have to set the
-- version_info claim in the token request. To obtain the version_info,
-- users must use the “none+gsession” response type. which be return a
-- version_info back in the authorization response which be be put in a JWT
-- claim in the token request.
ptcpVersionInfo :: Lens' ProjectsTransferConfigsPatch (Maybe Text)
ptcpVersionInfo
  = lens _ptcpVersionInfo
      (\ s a -> s{_ptcpVersionInfo = a})

-- | The resource name of the transfer config. Transfer config names have the
-- form of
-- \`projects\/{project_id}\/locations\/{region}\/transferConfigs\/{config_id}\`.
-- The name is automatically generated based on the config_id specified in
-- CreateTransferConfigRequest along with project_id and region. If
-- config_id is not provided, usually a uuid, even though it is not
-- guaranteed or required, will be generated for config_id.
ptcpName :: Lens' ProjectsTransferConfigsPatch Text
ptcpName = lens _ptcpName (\ s a -> s{_ptcpName = a})

-- | JSONP
ptcpCallback :: Lens' ProjectsTransferConfigsPatch (Maybe Text)
ptcpCallback
  = lens _ptcpCallback (\ s a -> s{_ptcpCallback = a})

instance GoogleRequest ProjectsTransferConfigsPatch
         where
        type Rs ProjectsTransferConfigsPatch = TransferConfig
        type Scopes ProjectsTransferConfigsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsTransferConfigsPatch'{..}
          = go _ptcpName _ptcpXgafv _ptcpUploadProtocol
              _ptcpUpdateMask
              _ptcpAccessToken
              _ptcpUploadType
              _ptcpAuthorizationCode
              _ptcpVersionInfo
              _ptcpCallback
              (Just AltJSON)
              _ptcpPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTransferConfigsPatchResource)
                      mempty
