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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Annotation or returns NOT_FOUND if it does not exist.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.annotations.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Annotations.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresAnnotationsDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresAnnotationsDelete
    , ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete

    -- * Request Lenses
    , pldsasadXgafv
    , pldsasadUploadProtocol
    , pldsasadAccessToken
    , pldsasadUploadType
    , pldsasadName
    , pldsasadCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.annotations.delete@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresAnnotationsDeleteResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an Annotation or returns NOT_FOUND if it does not exist.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresAnnotationsDelete' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete'
    { _pldsasadXgafv          :: !(Maybe Xgafv)
    , _pldsasadUploadProtocol :: !(Maybe Text)
    , _pldsasadAccessToken    :: !(Maybe Text)
    , _pldsasadUploadType     :: !(Maybe Text)
    , _pldsasadName           :: !Text
    , _pldsasadCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsasadXgafv'
--
-- * 'pldsasadUploadProtocol'
--
-- * 'pldsasadAccessToken'
--
-- * 'pldsasadUploadType'
--
-- * 'pldsasadName'
--
-- * 'pldsasadCallback'
projectsLocationsDataSetsAnnotationStoresAnnotationsDelete
    :: Text -- ^ 'pldsasadName'
    -> ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete
projectsLocationsDataSetsAnnotationStoresAnnotationsDelete pPldsasadName_ =
  ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete'
    { _pldsasadXgafv = Nothing
    , _pldsasadUploadProtocol = Nothing
    , _pldsasadAccessToken = Nothing
    , _pldsasadUploadType = Nothing
    , _pldsasadName = pPldsasadName_
    , _pldsasadCallback = Nothing
    }


-- | V1 error format.
pldsasadXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete (Maybe Xgafv)
pldsasadXgafv
  = lens _pldsasadXgafv
      (\ s a -> s{_pldsasadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsasadUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete (Maybe Text)
pldsasadUploadProtocol
  = lens _pldsasadUploadProtocol
      (\ s a -> s{_pldsasadUploadProtocol = a})

-- | OAuth access token.
pldsasadAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete (Maybe Text)
pldsasadAccessToken
  = lens _pldsasadAccessToken
      (\ s a -> s{_pldsasadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsasadUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete (Maybe Text)
pldsasadUploadType
  = lens _pldsasadUploadType
      (\ s a -> s{_pldsasadUploadType = a})

-- | The resource name of the Annotation to delete.
pldsasadName :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete Text
pldsasadName
  = lens _pldsasadName (\ s a -> s{_pldsasadName = a})

-- | JSONP
pldsasadCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete (Maybe Text)
pldsasadCallback
  = lens _pldsasadCallback
      (\ s a -> s{_pldsasadCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresAnnotationsDelete'{..}
          = go _pldsasadName _pldsasadXgafv
              _pldsasadUploadProtocol
              _pldsasadAccessToken
              _pldsasadUploadType
              _pldsasadCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresAnnotationsDeleteResource)
                      mempty
