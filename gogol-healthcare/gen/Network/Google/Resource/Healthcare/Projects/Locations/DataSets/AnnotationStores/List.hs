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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Annotation stores in the given dataset for a source store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.annotationStores.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.AnnotationStores.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsAnnotationStoresListResource

    -- * Creating a Request
    , projectsLocationsDataSetsAnnotationStoresList
    , ProjectsLocationsDataSetsAnnotationStoresList

    -- * Request Lenses
    , pldsaslParent
    , pldsaslXgafv
    , pldsaslUploadProtocol
    , pldsaslAccessToken
    , pldsaslUploadType
    , pldsaslFilter
    , pldsaslPageToken
    , pldsaslPageSize
    , pldsaslCallback
    ) where

import           Network.Google.Healthcare.Types
import           Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.annotationStores.list@ method which the
-- 'ProjectsLocationsDataSetsAnnotationStoresList' request conforms to.
type ProjectsLocationsDataSetsAnnotationStoresListResource
     =
     "v1alpha" :>
       Capture "parent" Text :>
         "annotationStores" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListAnnotationStoresResponse

-- | Lists the Annotation stores in the given dataset for a source store.
--
-- /See:/ 'projectsLocationsDataSetsAnnotationStoresList' smart constructor.
data ProjectsLocationsDataSetsAnnotationStoresList =
  ProjectsLocationsDataSetsAnnotationStoresList'
    { _pldsaslParent         :: !Text
    , _pldsaslXgafv          :: !(Maybe Xgafv)
    , _pldsaslUploadProtocol :: !(Maybe Text)
    , _pldsaslAccessToken    :: !(Maybe Text)
    , _pldsaslUploadType     :: !(Maybe Text)
    , _pldsaslFilter         :: !(Maybe Text)
    , _pldsaslPageToken      :: !(Maybe Text)
    , _pldsaslPageSize       :: !(Maybe (Textual Int32))
    , _pldsaslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsAnnotationStoresList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsaslParent'
--
-- * 'pldsaslXgafv'
--
-- * 'pldsaslUploadProtocol'
--
-- * 'pldsaslAccessToken'
--
-- * 'pldsaslUploadType'
--
-- * 'pldsaslFilter'
--
-- * 'pldsaslPageToken'
--
-- * 'pldsaslPageSize'
--
-- * 'pldsaslCallback'
projectsLocationsDataSetsAnnotationStoresList
    :: Text -- ^ 'pldsaslParent'
    -> ProjectsLocationsDataSetsAnnotationStoresList
projectsLocationsDataSetsAnnotationStoresList pPldsaslParent_ =
  ProjectsLocationsDataSetsAnnotationStoresList'
    { _pldsaslParent = pPldsaslParent_
    , _pldsaslXgafv = Nothing
    , _pldsaslUploadProtocol = Nothing
    , _pldsaslAccessToken = Nothing
    , _pldsaslUploadType = Nothing
    , _pldsaslFilter = Nothing
    , _pldsaslPageToken = Nothing
    , _pldsaslPageSize = Nothing
    , _pldsaslCallback = Nothing
    }


-- | Name of the dataset.
pldsaslParent :: Lens' ProjectsLocationsDataSetsAnnotationStoresList Text
pldsaslParent
  = lens _pldsaslParent
      (\ s a -> s{_pldsaslParent = a})

-- | V1 error format.
pldsaslXgafv :: Lens' ProjectsLocationsDataSetsAnnotationStoresList (Maybe Xgafv)
pldsaslXgafv
  = lens _pldsaslXgafv (\ s a -> s{_pldsaslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsaslUploadProtocol :: Lens' ProjectsLocationsDataSetsAnnotationStoresList (Maybe Text)
pldsaslUploadProtocol
  = lens _pldsaslUploadProtocol
      (\ s a -> s{_pldsaslUploadProtocol = a})

-- | OAuth access token.
pldsaslAccessToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresList (Maybe Text)
pldsaslAccessToken
  = lens _pldsaslAccessToken
      (\ s a -> s{_pldsaslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsaslUploadType :: Lens' ProjectsLocationsDataSetsAnnotationStoresList (Maybe Text)
pldsaslUploadType
  = lens _pldsaslUploadType
      (\ s a -> s{_pldsaslUploadType = a})

-- | Restricts stores returned to those matching a filter. Syntax:
-- https:\/\/cloud.google.com\/appengine\/docs\/standard\/python\/search\/query_strings
-- Only filtering on labels is supported, for example \`labels.key=value\`.
pldsaslFilter :: Lens' ProjectsLocationsDataSetsAnnotationStoresList (Maybe Text)
pldsaslFilter
  = lens _pldsaslFilter
      (\ s a -> s{_pldsaslFilter = a})

-- | The next_page_token value returned from the previous List request, if
-- any.
pldsaslPageToken :: Lens' ProjectsLocationsDataSetsAnnotationStoresList (Maybe Text)
pldsaslPageToken
  = lens _pldsaslPageToken
      (\ s a -> s{_pldsaslPageToken = a})

-- | Limit on the number of Annotation stores to return in a single response.
-- If zero the default page size of 100 is used.
pldsaslPageSize :: Lens' ProjectsLocationsDataSetsAnnotationStoresList (Maybe Int32)
pldsaslPageSize
  = lens _pldsaslPageSize
      (\ s a -> s{_pldsaslPageSize = a})
      . mapping _Coerce

-- | JSONP
pldsaslCallback :: Lens' ProjectsLocationsDataSetsAnnotationStoresList (Maybe Text)
pldsaslCallback
  = lens _pldsaslCallback
      (\ s a -> s{_pldsaslCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsAnnotationStoresList
         where
        type Rs ProjectsLocationsDataSetsAnnotationStoresList
             = ListAnnotationStoresResponse
        type Scopes
               ProjectsLocationsDataSetsAnnotationStoresList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsAnnotationStoresList'{..}
          = go _pldsaslParent _pldsaslXgafv
              _pldsaslUploadProtocol
              _pldsaslAccessToken
              _pldsaslUploadType
              _pldsaslFilter
              _pldsaslPageToken
              _pldsaslPageSize
              _pldsaslCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsAnnotationStoresListResource)
                      mempty
