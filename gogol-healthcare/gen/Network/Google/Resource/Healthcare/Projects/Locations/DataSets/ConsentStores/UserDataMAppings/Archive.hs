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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Archive
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Archives the specified User data mapping.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.userDataMappings.archive@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.UserDataMAppings.Archive
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchiveResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresUserDataMAppingsArchive
    , ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive

    -- * Request Lenses
    , pldscsudmaaXgafv
    , pldscsudmaaUploadProtocol
    , pldscsudmaaAccessToken
    , pldscsudmaaUploadType
    , pldscsudmaaPayload
    , pldscsudmaaName
    , pldscsudmaaCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.userDataMappings.archive@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive' request conforms to.
type ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchiveResource
     =
     "v1" :>
       CaptureMode "name" "archive" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ArchiveUserDataMAppingRequest :>
                       Post '[JSON] ArchiveUserDataMAppingResponse

-- | Archives the specified User data mapping.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresUserDataMAppingsArchive' smart constructor.
data ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive'
    { _pldscsudmaaXgafv :: !(Maybe Xgafv)
    , _pldscsudmaaUploadProtocol :: !(Maybe Text)
    , _pldscsudmaaAccessToken :: !(Maybe Text)
    , _pldscsudmaaUploadType :: !(Maybe Text)
    , _pldscsudmaaPayload :: !ArchiveUserDataMAppingRequest
    , _pldscsudmaaName :: !Text
    , _pldscsudmaaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsudmaaXgafv'
--
-- * 'pldscsudmaaUploadProtocol'
--
-- * 'pldscsudmaaAccessToken'
--
-- * 'pldscsudmaaUploadType'
--
-- * 'pldscsudmaaPayload'
--
-- * 'pldscsudmaaName'
--
-- * 'pldscsudmaaCallback'
projectsLocationsDataSetsConsentStoresUserDataMAppingsArchive
    :: ArchiveUserDataMAppingRequest -- ^ 'pldscsudmaaPayload'
    -> Text -- ^ 'pldscsudmaaName'
    -> ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive
projectsLocationsDataSetsConsentStoresUserDataMAppingsArchive pPldscsudmaaPayload_ pPldscsudmaaName_ =
  ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive'
    { _pldscsudmaaXgafv = Nothing
    , _pldscsudmaaUploadProtocol = Nothing
    , _pldscsudmaaAccessToken = Nothing
    , _pldscsudmaaUploadType = Nothing
    , _pldscsudmaaPayload = pPldscsudmaaPayload_
    , _pldscsudmaaName = pPldscsudmaaName_
    , _pldscsudmaaCallback = Nothing
    }


-- | V1 error format.
pldscsudmaaXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive (Maybe Xgafv)
pldscsudmaaXgafv
  = lens _pldscsudmaaXgafv
      (\ s a -> s{_pldscsudmaaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsudmaaUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive (Maybe Text)
pldscsudmaaUploadProtocol
  = lens _pldscsudmaaUploadProtocol
      (\ s a -> s{_pldscsudmaaUploadProtocol = a})

-- | OAuth access token.
pldscsudmaaAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive (Maybe Text)
pldscsudmaaAccessToken
  = lens _pldscsudmaaAccessToken
      (\ s a -> s{_pldscsudmaaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsudmaaUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive (Maybe Text)
pldscsudmaaUploadType
  = lens _pldscsudmaaUploadType
      (\ s a -> s{_pldscsudmaaUploadType = a})

-- | Multipart request metadata.
pldscsudmaaPayload :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive ArchiveUserDataMAppingRequest
pldscsudmaaPayload
  = lens _pldscsudmaaPayload
      (\ s a -> s{_pldscsudmaaPayload = a})

-- | Required. The resource name of the User data mapping to archive.
pldscsudmaaName :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive Text
pldscsudmaaName
  = lens _pldscsudmaaName
      (\ s a -> s{_pldscsudmaaName = a})

-- | JSONP
pldscsudmaaCallback :: Lens' ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive (Maybe Text)
pldscsudmaaCallback
  = lens _pldscsudmaaCallback
      (\ s a -> s{_pldscsudmaaCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive
             = ArchiveUserDataMAppingResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchive'{..}
          = go _pldscsudmaaName _pldscsudmaaXgafv
              _pldscsudmaaUploadProtocol
              _pldscsudmaaAccessToken
              _pldscsudmaaUploadType
              _pldscsudmaaCallback
              (Just AltJSON)
              _pldscsudmaaPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresUserDataMAppingsArchiveResource)
                      mempty
