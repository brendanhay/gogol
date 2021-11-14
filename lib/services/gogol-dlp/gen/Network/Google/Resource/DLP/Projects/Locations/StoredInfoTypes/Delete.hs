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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.storedInfoTypes.delete@.
module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.Delete
    (
    -- * REST Resource
      ProjectsLocationsStoredInfoTypesDeleteResource

    -- * Creating a Request
    , projectsLocationsStoredInfoTypesDelete
    , ProjectsLocationsStoredInfoTypesDelete

    -- * Request Lenses
    , plsitdXgafv
    , plsitdUploadProtocol
    , plsitdAccessToken
    , plsitdUploadType
    , plsitdName
    , plsitdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.storedInfoTypes.delete@ method which the
-- 'ProjectsLocationsStoredInfoTypesDelete' request conforms to.
type ProjectsLocationsStoredInfoTypesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'projectsLocationsStoredInfoTypesDelete' smart constructor.
data ProjectsLocationsStoredInfoTypesDelete =
  ProjectsLocationsStoredInfoTypesDelete'
    { _plsitdXgafv :: !(Maybe Xgafv)
    , _plsitdUploadProtocol :: !(Maybe Text)
    , _plsitdAccessToken :: !(Maybe Text)
    , _plsitdUploadType :: !(Maybe Text)
    , _plsitdName :: !Text
    , _plsitdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStoredInfoTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsitdXgafv'
--
-- * 'plsitdUploadProtocol'
--
-- * 'plsitdAccessToken'
--
-- * 'plsitdUploadType'
--
-- * 'plsitdName'
--
-- * 'plsitdCallback'
projectsLocationsStoredInfoTypesDelete
    :: Text -- ^ 'plsitdName'
    -> ProjectsLocationsStoredInfoTypesDelete
projectsLocationsStoredInfoTypesDelete pPlsitdName_ =
  ProjectsLocationsStoredInfoTypesDelete'
    { _plsitdXgafv = Nothing
    , _plsitdUploadProtocol = Nothing
    , _plsitdAccessToken = Nothing
    , _plsitdUploadType = Nothing
    , _plsitdName = pPlsitdName_
    , _plsitdCallback = Nothing
    }


-- | V1 error format.
plsitdXgafv :: Lens' ProjectsLocationsStoredInfoTypesDelete (Maybe Xgafv)
plsitdXgafv
  = lens _plsitdXgafv (\ s a -> s{_plsitdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsitdUploadProtocol :: Lens' ProjectsLocationsStoredInfoTypesDelete (Maybe Text)
plsitdUploadProtocol
  = lens _plsitdUploadProtocol
      (\ s a -> s{_plsitdUploadProtocol = a})

-- | OAuth access token.
plsitdAccessToken :: Lens' ProjectsLocationsStoredInfoTypesDelete (Maybe Text)
plsitdAccessToken
  = lens _plsitdAccessToken
      (\ s a -> s{_plsitdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsitdUploadType :: Lens' ProjectsLocationsStoredInfoTypesDelete (Maybe Text)
plsitdUploadType
  = lens _plsitdUploadType
      (\ s a -> s{_plsitdUploadType = a})

-- | Required. Resource name of the organization and storedInfoType to be
-- deleted, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
plsitdName :: Lens' ProjectsLocationsStoredInfoTypesDelete Text
plsitdName
  = lens _plsitdName (\ s a -> s{_plsitdName = a})

-- | JSONP
plsitdCallback :: Lens' ProjectsLocationsStoredInfoTypesDelete (Maybe Text)
plsitdCallback
  = lens _plsitdCallback
      (\ s a -> s{_plsitdCallback = a})

instance GoogleRequest
           ProjectsLocationsStoredInfoTypesDelete
         where
        type Rs ProjectsLocationsStoredInfoTypesDelete =
             GoogleProtobufEmpty
        type Scopes ProjectsLocationsStoredInfoTypesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStoredInfoTypesDelete'{..}
          = go _plsitdName _plsitdXgafv _plsitdUploadProtocol
              _plsitdAccessToken
              _plsitdUploadType
              _plsitdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStoredInfoTypesDeleteResource)
                      mempty
