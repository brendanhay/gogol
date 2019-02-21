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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an Annotation.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.annotations.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresAnnotationsGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresAnnotationsGet
    , ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet

    -- * Request Lenses
    , pldsasagXgafv
    , pldsasagUploadProtocol
    , pldsasagAccessToken
    , pldsasagUploadType
    , pldsasagName
    , pldsasagCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.annotations.get@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresAnnotationsGetResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Annotation

-- | Gets an Annotation.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresAnnotationsGet' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet'
    { _pldsasagXgafv          :: !(Maybe Xgafv)
    , _pldsasagUploadProtocol :: !(Maybe Text)
    , _pldsasagAccessToken    :: !(Maybe Text)
    , _pldsasagUploadType     :: !(Maybe Text)
    , _pldsasagName           :: !Text
    , _pldsasagCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsasagXgafv'
--
-- * 'pldsasagUploadProtocol'
--
-- * 'pldsasagAccessToken'
--
-- * 'pldsasagUploadType'
--
-- * 'pldsasagName'
--
-- * 'pldsasagCallback'
projectsLocationsDataSetsAnnotationStoresAnnotationsGet
    :: Text -- ^ 'pldsasagName'
    -> ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet
projectsLocationsDataSetsAnnotationStoresAnnotationsGet pPldsasagName_ =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet'
    { _pldsasagXgafv = Nothing
    , _pldsasagUploadProtocol = Nothing
    , _pldsasagAccessToken = Nothing
    , _pldsasagUploadType = Nothing
    , _pldsasagName = pPldsasagName_
    , _pldsasagCallback = Nothing
    }


-- | V1 error format.
pldsasagXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet (Maybe Xgafv)
pldsasagXgafv
  = lens _pldsasagXgafv
      (\ s a -> s{_pldsasagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsasagUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet (Maybe Text)
pldsasagUploadProtocol
  = lens _pldsasagUploadProtocol
      (\ s a -> s{_pldsasagUploadProtocol = a})

-- | OAuth access token.
pldsasagAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet (Maybe Text)
pldsasagAccessToken
  = lens _pldsasagAccessToken
      (\ s a -> s{_pldsasagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsasagUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet (Maybe Text)
pldsasagUploadType
  = lens _pldsasagUploadType
      (\ s a -> s{_pldsasagUploadType = a})

-- | The resource name of the Annotation to retrieve.
pldsasagName :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet Text
pldsasagName
  = lens _pldsasagName (\ s a -> s{_pldsasagName = a})

-- | JSONP
pldsasagCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet (Maybe Text)
pldsasagCallback
  = lens _pldsasagCallback
      (\ s a -> s{_pldsasagCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet
             = Annotation
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresAnnotationsGet'{..}
          = go _pldsasagName _pldsasagXgafv
              _pldsasagUploadProtocol
              _pldsasagAccessToken
              _pldsasagUploadType
              _pldsasagCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresAnnotationsGetResource)
                      mempty
