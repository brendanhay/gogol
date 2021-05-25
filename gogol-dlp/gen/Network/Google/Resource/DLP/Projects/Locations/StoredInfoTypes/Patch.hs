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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the stored infoType by creating a new version. The existing
-- version will continue to be used until the new version is ready. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.storedInfoTypes.patch@.
module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Patch
    (
    -- * REST Resource
      ProjectsLocationsStoredInfoTypesPatchResource

    -- * Creating a Request
    , projectsLocationsStoredInfoTypesPatch
    , ProjectsLocationsStoredInfoTypesPatch

    -- * Request Lenses
    , plsitpXgafv
    , plsitpUploadProtocol
    , plsitpAccessToken
    , plsitpUploadType
    , plsitpPayload
    , plsitpName
    , plsitpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.storedInfoTypes.patch@ method which the
-- 'ProjectsLocationsStoredInfoTypesPatch' request conforms to.
type ProjectsLocationsStoredInfoTypesPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Updates the stored infoType by creating a new version. The existing
-- version will continue to be used until the new version is ready. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'projectsLocationsStoredInfoTypesPatch' smart constructor.
data ProjectsLocationsStoredInfoTypesPatch =
  ProjectsLocationsStoredInfoTypesPatch'
    { _plsitpXgafv :: !(Maybe Xgafv)
    , _plsitpUploadProtocol :: !(Maybe Text)
    , _plsitpAccessToken :: !(Maybe Text)
    , _plsitpUploadType :: !(Maybe Text)
    , _plsitpPayload :: !GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    , _plsitpName :: !Text
    , _plsitpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStoredInfoTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsitpXgafv'
--
-- * 'plsitpUploadProtocol'
--
-- * 'plsitpAccessToken'
--
-- * 'plsitpUploadType'
--
-- * 'plsitpPayload'
--
-- * 'plsitpName'
--
-- * 'plsitpCallback'
projectsLocationsStoredInfoTypesPatch
    :: GooglePrivacyDlpV2UpdateStoredInfoTypeRequest -- ^ 'plsitpPayload'
    -> Text -- ^ 'plsitpName'
    -> ProjectsLocationsStoredInfoTypesPatch
projectsLocationsStoredInfoTypesPatch pPlsitpPayload_ pPlsitpName_ =
  ProjectsLocationsStoredInfoTypesPatch'
    { _plsitpXgafv = Nothing
    , _plsitpUploadProtocol = Nothing
    , _plsitpAccessToken = Nothing
    , _plsitpUploadType = Nothing
    , _plsitpPayload = pPlsitpPayload_
    , _plsitpName = pPlsitpName_
    , _plsitpCallback = Nothing
    }


-- | V1 error format.
plsitpXgafv :: Lens' ProjectsLocationsStoredInfoTypesPatch (Maybe Xgafv)
plsitpXgafv
  = lens _plsitpXgafv (\ s a -> s{_plsitpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsitpUploadProtocol :: Lens' ProjectsLocationsStoredInfoTypesPatch (Maybe Text)
plsitpUploadProtocol
  = lens _plsitpUploadProtocol
      (\ s a -> s{_plsitpUploadProtocol = a})

-- | OAuth access token.
plsitpAccessToken :: Lens' ProjectsLocationsStoredInfoTypesPatch (Maybe Text)
plsitpAccessToken
  = lens _plsitpAccessToken
      (\ s a -> s{_plsitpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsitpUploadType :: Lens' ProjectsLocationsStoredInfoTypesPatch (Maybe Text)
plsitpUploadType
  = lens _plsitpUploadType
      (\ s a -> s{_plsitpUploadType = a})

-- | Multipart request metadata.
plsitpPayload :: Lens' ProjectsLocationsStoredInfoTypesPatch GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
plsitpPayload
  = lens _plsitpPayload
      (\ s a -> s{_plsitpPayload = a})

-- | Required. Resource name of organization and storedInfoType to be
-- updated, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
plsitpName :: Lens' ProjectsLocationsStoredInfoTypesPatch Text
plsitpName
  = lens _plsitpName (\ s a -> s{_plsitpName = a})

-- | JSONP
plsitpCallback :: Lens' ProjectsLocationsStoredInfoTypesPatch (Maybe Text)
plsitpCallback
  = lens _plsitpCallback
      (\ s a -> s{_plsitpCallback = a})

instance GoogleRequest
           ProjectsLocationsStoredInfoTypesPatch
         where
        type Rs ProjectsLocationsStoredInfoTypesPatch =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes ProjectsLocationsStoredInfoTypesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStoredInfoTypesPatch'{..}
          = go _plsitpName _plsitpXgafv _plsitpUploadProtocol
              _plsitpAccessToken
              _plsitpUploadType
              _plsitpCallback
              (Just AltJSON)
              _plsitpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStoredInfoTypesPatchResource)
                      mempty
