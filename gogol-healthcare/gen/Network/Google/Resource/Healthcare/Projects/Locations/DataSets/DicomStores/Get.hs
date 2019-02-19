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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified DICOM store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresGet
    , ProjectsLocationsDataSetsDicomStoresGet

    -- * Request Lenses
    , pldsdsgXgafv
    , pldsdsgUploadProtocol
    , pldsdsgAccessToken
    , pldsdsgUploadType
    , pldsdsgName
    , pldsdsgCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.get@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresGet' request conforms to.
type ProjectsLocationsDataSetsDicomStoresGetResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] DicomStore

-- | Gets the specified DICOM store.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresGet' smart constructor.
data ProjectsLocationsDataSetsDicomStoresGet =
  ProjectsLocationsDataSetsDicomStoresGet'
    { _pldsdsgXgafv          :: !(Maybe Xgafv)
    , _pldsdsgUploadProtocol :: !(Maybe Text)
    , _pldsdsgAccessToken    :: !(Maybe Text)
    , _pldsdsgUploadType     :: !(Maybe Text)
    , _pldsdsgName           :: !Text
    , _pldsdsgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsgXgafv'
--
-- * 'pldsdsgUploadProtocol'
--
-- * 'pldsdsgAccessToken'
--
-- * 'pldsdsgUploadType'
--
-- * 'pldsdsgName'
--
-- * 'pldsdsgCallback'
projectsLocationsDataSetsDicomStoresGet
    :: Text -- ^ 'pldsdsgName'
    -> ProjectsLocationsDataSetsDicomStoresGet
projectsLocationsDataSetsDicomStoresGet pPldsdsgName_ =
  ProjectsLocationsDataSetsDicomStoresGet'
    { _pldsdsgXgafv = Nothing
    , _pldsdsgUploadProtocol = Nothing
    , _pldsdsgAccessToken = Nothing
    , _pldsdsgUploadType = Nothing
    , _pldsdsgName = pPldsdsgName_
    , _pldsdsgCallback = Nothing
    }

-- | V1 error format.
pldsdsgXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresGet (Maybe Xgafv)
pldsdsgXgafv
  = lens _pldsdsgXgafv (\ s a -> s{_pldsdsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsgUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresGet (Maybe Text)
pldsdsgUploadProtocol
  = lens _pldsdsgUploadProtocol
      (\ s a -> s{_pldsdsgUploadProtocol = a})

-- | OAuth access token.
pldsdsgAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresGet (Maybe Text)
pldsdsgAccessToken
  = lens _pldsdsgAccessToken
      (\ s a -> s{_pldsdsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsgUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresGet (Maybe Text)
pldsdsgUploadType
  = lens _pldsdsgUploadType
      (\ s a -> s{_pldsdsgUploadType = a})

-- | The resource name of the DICOM store to get.
pldsdsgName :: Lens' ProjectsLocationsDataSetsDicomStoresGet Text
pldsdsgName
  = lens _pldsdsgName (\ s a -> s{_pldsdsgName = a})

-- | JSONP
pldsdsgCallback :: Lens' ProjectsLocationsDataSetsDicomStoresGet (Maybe Text)
pldsdsgCallback
  = lens _pldsdsgCallback
      (\ s a -> s{_pldsdsgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresGet
         where
        type Rs ProjectsLocationsDataSetsDicomStoresGet =
             DicomStore
        type Scopes ProjectsLocationsDataSetsDicomStoresGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresGet'{..}
          = go _pldsdsgName _pldsdsgXgafv
              _pldsdsgUploadProtocol
              _pldsdsgAccessToken
              _pldsdsgUploadType
              _pldsdsgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresGetResource)
                      mempty
