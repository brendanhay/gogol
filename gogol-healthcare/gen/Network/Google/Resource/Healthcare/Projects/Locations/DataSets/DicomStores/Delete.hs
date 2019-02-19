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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified DICOM store and removes all images that are
-- contained within it.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.dicomStores.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.DicomStores.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsDicomStoresDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsDicomStoresDelete
    , ProjectsLocationsDataSetsDicomStoresDelete

    -- * Request Lenses
    , pldsdsdXgafv
    , pldsdsdUploadProtocol
    , pldsdsdAccessToken
    , pldsdsdUploadType
    , pldsdsdName
    , pldsdsdCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.dicomStores.delete@ method which the
-- 'ProjectsLocationsDataSetsDicomStoresDelete' request conforms to.
type ProjectsLocationsDataSetsDicomStoresDeleteResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified DICOM store and removes all images that are
-- contained within it.
--
-- /See:/ 'projectsLocationsDataSetsDicomStoresDelete' smart constructor.
data ProjectsLocationsDataSetsDicomStoresDelete =
  ProjectsLocationsDataSetsDicomStoresDelete'
    { _pldsdsdXgafv          :: !(Maybe Xgafv)
    , _pldsdsdUploadProtocol :: !(Maybe Text)
    , _pldsdsdAccessToken    :: !(Maybe Text)
    , _pldsdsdUploadType     :: !(Maybe Text)
    , _pldsdsdName           :: !Text
    , _pldsdsdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsDicomStoresDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsdsdXgafv'
--
-- * 'pldsdsdUploadProtocol'
--
-- * 'pldsdsdAccessToken'
--
-- * 'pldsdsdUploadType'
--
-- * 'pldsdsdName'
--
-- * 'pldsdsdCallback'
projectsLocationsDataSetsDicomStoresDelete
    :: Text -- ^ 'pldsdsdName'
    -> ProjectsLocationsDataSetsDicomStoresDelete
projectsLocationsDataSetsDicomStoresDelete pPldsdsdName_ =
  ProjectsLocationsDataSetsDicomStoresDelete'
    { _pldsdsdXgafv = Nothing
    , _pldsdsdUploadProtocol = Nothing
    , _pldsdsdAccessToken = Nothing
    , _pldsdsdUploadType = Nothing
    , _pldsdsdName = pPldsdsdName_
    , _pldsdsdCallback = Nothing
    }


-- | V1 error format.
pldsdsdXgafv :: Lens' ProjectsLocationsDataSetsDicomStoresDelete (Maybe Xgafv)
pldsdsdXgafv
  = lens _pldsdsdXgafv (\ s a -> s{_pldsdsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsdsdUploadProtocol :: Lens' ProjectsLocationsDataSetsDicomStoresDelete (Maybe Text)
pldsdsdUploadProtocol
  = lens _pldsdsdUploadProtocol
      (\ s a -> s{_pldsdsdUploadProtocol = a})

-- | OAuth access token.
pldsdsdAccessToken :: Lens' ProjectsLocationsDataSetsDicomStoresDelete (Maybe Text)
pldsdsdAccessToken
  = lens _pldsdsdAccessToken
      (\ s a -> s{_pldsdsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsdsdUploadType :: Lens' ProjectsLocationsDataSetsDicomStoresDelete (Maybe Text)
pldsdsdUploadType
  = lens _pldsdsdUploadType
      (\ s a -> s{_pldsdsdUploadType = a})

-- | The resource name of the DICOM store to delete.
pldsdsdName :: Lens' ProjectsLocationsDataSetsDicomStoresDelete Text
pldsdsdName
  = lens _pldsdsdName (\ s a -> s{_pldsdsdName = a})

-- | JSONP
pldsdsdCallback :: Lens' ProjectsLocationsDataSetsDicomStoresDelete (Maybe Text)
pldsdsdCallback
  = lens _pldsdsdCallback
      (\ s a -> s{_pldsdsdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsDicomStoresDelete
         where
        type Rs ProjectsLocationsDataSetsDicomStoresDelete =
             Empty
        type Scopes
               ProjectsLocationsDataSetsDicomStoresDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsDicomStoresDelete'{..}
          = go _pldsdsdName _pldsdsdXgafv
              _pldsdsdUploadProtocol
              _pldsdsdAccessToken
              _pldsdsdUploadType
              _pldsdsdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsDicomStoresDeleteResource)
                      mempty
