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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified Annotation store or returns NOT_FOUND if it does not
-- exist.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.get@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.Get
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresGetResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresGet
    , ProjectsLocationsDataSetsAnnotationStoresGet

    -- * Request Lenses
    , pldsasgXgafv
    , pldsasgUploadProtocol
    , pldsasgAccessToken
    , pldsasgUploadType
    , pldsasgName
    , pldsasgCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.get@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresGet' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresGetResource
     =
     "v1alpha" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AnnotationStore

-- | Gets the specified Annotation store or returns NOT_FOUND if it does not
-- exist.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresGet' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresGet =
  ProjectsLocationsDataSetsAnnotationStoresGet'
    { _pldsasgXgafv          :: !(Maybe Xgafv)
    , _pldsasgUploadProtocol :: !(Maybe Text)
    , _pldsasgAccessToken    :: !(Maybe Text)
    , _pldsasgUploadType     :: !(Maybe Text)
    , _pldsasgName           :: !Text
    , _pldsasgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsasgXgafv'
--
-- * 'pldsasgUploadProtocol'
--
-- * 'pldsasgAccessToken'
--
-- * 'pldsasgUploadType'
--
-- * 'pldsasgName'
--
-- * 'pldsasgCallback'
projectsLocationsDataSetsAnnotationStoresGet
    :: Text -- ^ 'pldsasgName'
    -> ProjectsLocationsDataSetsAnnotationStoresGet
projectsLocationsDataSetsAnnotationStoresGet pPldsasgName_ =
  ProjectsLocationsDataSetsAnnotationStoresGet'
    { _pldsasgXgafv = Nothing
    , _pldsasgUploadProtocol = Nothing
    , _pldsasgAccessToken = Nothing
    , _pldsasgUploadType = Nothing
    , _pldsasgName = pPldsasgName_
    , _pldsasgCallback = Nothing
    }


-- | V1 error format.
pldsasgXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresGet (Maybe Xgafv)
pldsasgXgafv
  = lens _pldsasgXgafv (\ s a -> s{_pldsasgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsasgUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresGet (Maybe Text)
pldsasgUploadProtocol
  = lens _pldsasgUploadProtocol
      (\ s a -> s{_pldsasgUploadProtocol = a})

-- | OAuth access token.
pldsasgAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresGet (Maybe Text)
pldsasgAccessToken
  = lens _pldsasgAccessToken
      (\ s a -> s{_pldsasgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsasgUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresGet (Maybe Text)
pldsasgUploadType
  = lens _pldsasgUploadType
      (\ s a -> s{_pldsasgUploadType = a})

-- | The resource name of the Annotation store to get.
pldsasgName :: Lens' ProjectsLocationsDataSetsAnnotationStoresGet Text
pldsasgName
  = lens _pldsasgName (\ s a -> s{_pldsasgName = a})

-- | JSONP
pldsasgCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresGet (Maybe Text)
pldsasgCallback
  = lens _pldsasgCallback
      (\ s a -> s{_pldsasgCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresGet
         where
        type Rs ProjectsLocationsDataSetsAnnotationStoresGet
             = AnnotationStore
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresGet'{..}
          = go _pldsasgName _pldsasgXgafv
              _pldsasgUploadProtocol
              _pldsasgAccessToken
              _pldsasgUploadType
              _pldsasgCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresGetResource)
                      mempty
