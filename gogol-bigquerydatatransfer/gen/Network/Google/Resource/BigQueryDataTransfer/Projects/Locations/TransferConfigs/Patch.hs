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
-- Module      : Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a data transfer configuration. All fields must be set, even if
-- they are not updated.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery Data Transfer API Reference> for @bigquerydatatransfer.projects.locations.transferConfigs.patch@.
module Network.Google.Resource.BigQueryDataTransfer.Projects.Locations.TransferConfigs.Patch
    (
    -- * REST Resource
      ProjectsLocationsTransferConfigsPatchResource

    -- * Creating a Request
    , projectsLocationsTransferConfigsPatch
    , ProjectsLocationsTransferConfigsPatch

    -- * Request Lenses
    , pltcpXgafv
    , pltcpUploadProtocol
    , pltcpUpdateMask
    , pltcpAccessToken
    , pltcpUploadType
    , pltcpAuthorizationCode
    , pltcpPayload
    , pltcpVersionInfo
    , pltcpName
    , pltcpCallback
    ) where

import           Network.Google.BigQueryDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquerydatatransfer.projects.locations.transferConfigs.patch@ method which the
-- 'ProjectsLocationsTransferConfigsPatch' request conforms to.
type ProjectsLocationsTransferConfigsPatchResource =
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
-- /See:/ 'projectsLocationsTransferConfigsPatch' smart constructor.
data ProjectsLocationsTransferConfigsPatch =
  ProjectsLocationsTransferConfigsPatch'
    { _pltcpXgafv             :: !(Maybe Xgafv)
    , _pltcpUploadProtocol    :: !(Maybe Text)
    , _pltcpUpdateMask        :: !(Maybe GFieldMask)
    , _pltcpAccessToken       :: !(Maybe Text)
    , _pltcpUploadType        :: !(Maybe Text)
    , _pltcpAuthorizationCode :: !(Maybe Text)
    , _pltcpPayload           :: !TransferConfig
    , _pltcpVersionInfo       :: !(Maybe Text)
    , _pltcpName              :: !Text
    , _pltcpCallback          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsTransferConfigsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltcpXgafv'
--
-- * 'pltcpUploadProtocol'
--
-- * 'pltcpUpdateMask'
--
-- * 'pltcpAccessToken'
--
-- * 'pltcpUploadType'
--
-- * 'pltcpAuthorizationCode'
--
-- * 'pltcpPayload'
--
-- * 'pltcpVersionInfo'
--
-- * 'pltcpName'
--
-- * 'pltcpCallback'
projectsLocationsTransferConfigsPatch
    :: TransferConfig -- ^ 'pltcpPayload'
    -> Text -- ^ 'pltcpName'
    -> ProjectsLocationsTransferConfigsPatch
projectsLocationsTransferConfigsPatch pPltcpPayload_ pPltcpName_ =
  ProjectsLocationsTransferConfigsPatch'
    { _pltcpXgafv = Nothing
    , _pltcpUploadProtocol = Nothing
    , _pltcpUpdateMask = Nothing
    , _pltcpAccessToken = Nothing
    , _pltcpUploadType = Nothing
    , _pltcpAuthorizationCode = Nothing
    , _pltcpPayload = pPltcpPayload_
    , _pltcpVersionInfo = Nothing
    , _pltcpName = pPltcpName_
    , _pltcpCallback = Nothing
    }


-- | V1 error format.
pltcpXgafv :: Lens' ProjectsLocationsTransferConfigsPatch (Maybe Xgafv)
pltcpXgafv
  = lens _pltcpXgafv (\ s a -> s{_pltcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltcpUploadProtocol :: Lens' ProjectsLocationsTransferConfigsPatch (Maybe Text)
pltcpUploadProtocol
  = lens _pltcpUploadProtocol
      (\ s a -> s{_pltcpUploadProtocol = a})

-- | Required list of fields to be updated in this request.
pltcpUpdateMask :: Lens' ProjectsLocationsTransferConfigsPatch (Maybe GFieldMask)
pltcpUpdateMask
  = lens _pltcpUpdateMask
      (\ s a -> s{_pltcpUpdateMask = a})

-- | OAuth access token.
pltcpAccessToken :: Lens' ProjectsLocationsTransferConfigsPatch (Maybe Text)
pltcpAccessToken
  = lens _pltcpAccessToken
      (\ s a -> s{_pltcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltcpUploadType :: Lens' ProjectsLocationsTransferConfigsPatch (Maybe Text)
pltcpUploadType
  = lens _pltcpUploadType
      (\ s a -> s{_pltcpUploadType = a})

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
pltcpAuthorizationCode :: Lens' ProjectsLocationsTransferConfigsPatch (Maybe Text)
pltcpAuthorizationCode
  = lens _pltcpAuthorizationCode
      (\ s a -> s{_pltcpAuthorizationCode = a})

-- | Multipart request metadata.
pltcpPayload :: Lens' ProjectsLocationsTransferConfigsPatch TransferConfig
pltcpPayload
  = lens _pltcpPayload (\ s a -> s{_pltcpPayload = a})

-- | Optional version info. If users want to find a very recent access token,
-- that is, immediately after approving access, users have to set the
-- version_info claim in the token request. To obtain the version_info,
-- users must use the “none+gsession” response type. which be return a
-- version_info back in the authorization response which be be put in a JWT
-- claim in the token request.
pltcpVersionInfo :: Lens' ProjectsLocationsTransferConfigsPatch (Maybe Text)
pltcpVersionInfo
  = lens _pltcpVersionInfo
      (\ s a -> s{_pltcpVersionInfo = a})

-- | The resource name of the transfer config. Transfer config names have the
-- form of
-- \`projects\/{project_id}\/locations\/{region}\/transferConfigs\/{config_id}\`.
-- The name is automatically generated based on the config_id specified in
-- CreateTransferConfigRequest along with project_id and region. If
-- config_id is not provided, usually a uuid, even though it is not
-- guaranteed or required, will be generated for config_id.
pltcpName :: Lens' ProjectsLocationsTransferConfigsPatch Text
pltcpName
  = lens _pltcpName (\ s a -> s{_pltcpName = a})

-- | JSONP
pltcpCallback :: Lens' ProjectsLocationsTransferConfigsPatch (Maybe Text)
pltcpCallback
  = lens _pltcpCallback
      (\ s a -> s{_pltcpCallback = a})

instance GoogleRequest
           ProjectsLocationsTransferConfigsPatch
         where
        type Rs ProjectsLocationsTransferConfigsPatch =
             TransferConfig
        type Scopes ProjectsLocationsTransferConfigsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsTransferConfigsPatch'{..}
          = go _pltcpName _pltcpXgafv _pltcpUploadProtocol
              _pltcpUpdateMask
              _pltcpAccessToken
              _pltcpUploadType
              _pltcpAuthorizationCode
              _pltcpVersionInfo
              _pltcpCallback
              (Just AltJSON)
              _pltcpPayload
              bigQueryDataTransferService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTransferConfigsPatchResource)
                      mempty
