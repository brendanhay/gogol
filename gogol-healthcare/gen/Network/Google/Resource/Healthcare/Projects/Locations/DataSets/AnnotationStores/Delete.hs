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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Annotation store and removes all annotations that
-- are contained within it.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.delete@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Delete
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresDeleteResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresDelete
    , ProjectsLocationsDataSetsAnnotationStoresDelete

    -- * Request Lenses
    , pldsasdXgafv
    , pldsasdUploadProtocol
    , pldsasdAccessToken
    , pldsasdUploadType
    , pldsasdName
    , pldsasdCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.delete@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresDelete' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresDeleteResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified Annotation store and removes all annotations that
-- are contained within it.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresDelete' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresDelete =
  ProjectsLocationsDataSetsAnnotationStoresDelete'
    { _pldsasdXgafv          :: !(Maybe Xgafv)
    , _pldsasdUploadProtocol :: !(Maybe Text)
    , _pldsasdAccessToken    :: !(Maybe Text)
    , _pldsasdUploadType     :: !(Maybe Text)
    , _pldsasdName           :: !Text
    , _pldsasdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsasdXgafv'
--
-- * 'pldsasdUploadProtocol'
--
-- * 'pldsasdAccessToken'
--
-- * 'pldsasdUploadType'
--
-- * 'pldsasdName'
--
-- * 'pldsasdCallback'
projectsLocationsDataSetsAnnotationStoresDelete
    :: Text -- ^ 'pldsasdName'
    -> ProjectsLocationsDataSetsAnnotationStoresDelete
projectsLocationsDataSetsAnnotationStoresDelete pPldsasdName_ =
  ProjectsLocationsDataSetsAnnotationStoresDelete'
    { _pldsasdXgafv = Nothing
    , _pldsasdUploadProtocol = Nothing
    , _pldsasdAccessToken = Nothing
    , _pldsasdUploadType = Nothing
    , _pldsasdName = pPldsasdName_
    , _pldsasdCallback = Nothing
    }

-- | V1 error format.
pldsasdXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresDelete (Maybe Xgafv)
pldsasdXgafv
  = lens _pldsasdXgafv (\ s a -> s{_pldsasdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsasdUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresDelete (Maybe Text)
pldsasdUploadProtocol
  = lens _pldsasdUploadProtocol
      (\ s a -> s{_pldsasdUploadProtocol = a})

-- | OAuth access token.
pldsasdAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresDelete (Maybe Text)
pldsasdAccessToken
  = lens _pldsasdAccessToken
      (\ s a -> s{_pldsasdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsasdUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresDelete (Maybe Text)
pldsasdUploadType
  = lens _pldsasdUploadType
      (\ s a -> s{_pldsasdUploadType = a})

-- | The resource name of the Annotation store to delete.
pldsasdName :: Lens' ProjectsLocationsDataSetsAnnotationStoresDelete Text
pldsasdName
  = lens _pldsasdName (\ s a -> s{_pldsasdName = a})

-- | JSONP
pldsasdCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresDelete (Maybe Text)
pldsasdCallback
  = lens _pldsasdCallback
      (\ s a -> s{_pldsasdCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresDelete
         where
        type Rs
               ProjectsLocationsDataSetsAnnotationStoresDelete
             = Empty
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresDelete'{..}
          = go _pldsasdName _pldsasdXgafv
              _pldsasdUploadProtocol
              _pldsasdAccessToken
              _pldsasdUploadType
              _pldsasdCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresDeleteResource)
                      mempty
