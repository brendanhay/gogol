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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.storedInfoTypes.get@.
module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Get
    (
    -- * REST Resource
      ProjectsLocationsStoredInfoTypesGetResource

    -- * Creating a Request
    , projectsLocationsStoredInfoTypesGet
    , ProjectsLocationsStoredInfoTypesGet

    -- * Request Lenses
    , plsitgXgafv
    , plsitgUploadProtocol
    , plsitgAccessToken
    , plsitgUploadType
    , plsitgName
    , plsitgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.storedInfoTypes.get@ method which the
-- 'ProjectsLocationsStoredInfoTypesGet' request conforms to.
type ProjectsLocationsStoredInfoTypesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Gets a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'projectsLocationsStoredInfoTypesGet' smart constructor.
data ProjectsLocationsStoredInfoTypesGet =
  ProjectsLocationsStoredInfoTypesGet'
    { _plsitgXgafv :: !(Maybe Xgafv)
    , _plsitgUploadProtocol :: !(Maybe Text)
    , _plsitgAccessToken :: !(Maybe Text)
    , _plsitgUploadType :: !(Maybe Text)
    , _plsitgName :: !Text
    , _plsitgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStoredInfoTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsitgXgafv'
--
-- * 'plsitgUploadProtocol'
--
-- * 'plsitgAccessToken'
--
-- * 'plsitgUploadType'
--
-- * 'plsitgName'
--
-- * 'plsitgCallback'
projectsLocationsStoredInfoTypesGet
    :: Text -- ^ 'plsitgName'
    -> ProjectsLocationsStoredInfoTypesGet
projectsLocationsStoredInfoTypesGet pPlsitgName_ =
  ProjectsLocationsStoredInfoTypesGet'
    { _plsitgXgafv = Nothing
    , _plsitgUploadProtocol = Nothing
    , _plsitgAccessToken = Nothing
    , _plsitgUploadType = Nothing
    , _plsitgName = pPlsitgName_
    , _plsitgCallback = Nothing
    }


-- | V1 error format.
plsitgXgafv :: Lens' ProjectsLocationsStoredInfoTypesGet (Maybe Xgafv)
plsitgXgafv
  = lens _plsitgXgafv (\ s a -> s{_plsitgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsitgUploadProtocol :: Lens' ProjectsLocationsStoredInfoTypesGet (Maybe Text)
plsitgUploadProtocol
  = lens _plsitgUploadProtocol
      (\ s a -> s{_plsitgUploadProtocol = a})

-- | OAuth access token.
plsitgAccessToken :: Lens' ProjectsLocationsStoredInfoTypesGet (Maybe Text)
plsitgAccessToken
  = lens _plsitgAccessToken
      (\ s a -> s{_plsitgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsitgUploadType :: Lens' ProjectsLocationsStoredInfoTypesGet (Maybe Text)
plsitgUploadType
  = lens _plsitgUploadType
      (\ s a -> s{_plsitgUploadType = a})

-- | Required. Resource name of the organization and storedInfoType to be
-- read, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
plsitgName :: Lens' ProjectsLocationsStoredInfoTypesGet Text
plsitgName
  = lens _plsitgName (\ s a -> s{_plsitgName = a})

-- | JSONP
plsitgCallback :: Lens' ProjectsLocationsStoredInfoTypesGet (Maybe Text)
plsitgCallback
  = lens _plsitgCallback
      (\ s a -> s{_plsitgCallback = a})

instance GoogleRequest
           ProjectsLocationsStoredInfoTypesGet
         where
        type Rs ProjectsLocationsStoredInfoTypesGet =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes ProjectsLocationsStoredInfoTypesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStoredInfoTypesGet'{..}
          = go _plsitgName _plsitgXgafv _plsitgUploadProtocol
              _plsitgAccessToken
              _plsitgUploadType
              _plsitgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStoredInfoTypesGetResource)
                      mempty
