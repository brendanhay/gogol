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
-- Module      : Network.Google.Resource.Monitoring.Categories.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all Categories for a host project.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.categories.list@.
module Network.Google.Resource.Monitoring.Categories.List
    (
    -- * REST Resource
      CategoriesListResource

    -- * Creating a Request
    , categoriesList
    , CategoriesList

    -- * Request Lenses
    , clParent
    , clXgafv
    , clUploadProtocol
    , clPp
    , clAccessToken
    , clUploadType
    , clBearerToken
    , clFilter
    , clPageToken
    , clPageSize
    , clCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.categories.list@ method which the
-- 'CategoriesList' request conforms to.
type CategoriesListResource =
     "v3" :>
       "categories" :>
         QueryParam "parent" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListCategoriesResponse

-- | List all Categories for a host project.
--
-- /See:/ 'categoriesList' smart constructor.
data CategoriesList = CategoriesList'
    { _clParent         :: !(Maybe Text)
    , _clXgafv          :: !(Maybe Xgafv)
    , _clUploadProtocol :: !(Maybe Text)
    , _clPp             :: !Bool
    , _clAccessToken    :: !(Maybe Text)
    , _clUploadType     :: !(Maybe Text)
    , _clBearerToken    :: !(Maybe Text)
    , _clFilter         :: !(Maybe Text)
    , _clPageToken      :: !(Maybe Text)
    , _clPageSize       :: !(Maybe (Textual Int32))
    , _clCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CategoriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clParent'
--
-- * 'clXgafv'
--
-- * 'clUploadProtocol'
--
-- * 'clPp'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clBearerToken'
--
-- * 'clFilter'
--
-- * 'clPageToken'
--
-- * 'clPageSize'
--
-- * 'clCallback'
categoriesList
    :: CategoriesList
categoriesList =
    CategoriesList'
    { _clParent = Nothing
    , _clXgafv = Nothing
    , _clUploadProtocol = Nothing
    , _clPp = True
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clBearerToken = Nothing
    , _clFilter = Nothing
    , _clPageToken = Nothing
    , _clPageSize = Nothing
    , _clCallback = Nothing
    }

-- | Resource parent of the project to get. Resource parent form is
-- projects\/{project_id_or_number}.
clParent :: Lens' CategoriesList (Maybe Text)
clParent = lens _clParent (\ s a -> s{_clParent = a})

-- | V1 error format.
clXgafv :: Lens' CategoriesList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CategoriesList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | Pretty-print response.
clPp :: Lens' CategoriesList Bool
clPp = lens _clPp (\ s a -> s{_clPp = a})

-- | OAuth access token.
clAccessToken :: Lens' CategoriesList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CategoriesList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | OAuth bearer token.
clBearerToken :: Lens' CategoriesList (Maybe Text)
clBearerToken
  = lens _clBearerToken
      (\ s a -> s{_clBearerToken = a})

-- | A filter that specifies what Categories to return.
clFilter :: Lens' CategoriesList (Maybe Text)
clFilter = lens _clFilter (\ s a -> s{_clFilter = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
clPageToken :: Lens' CategoriesList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | A positive number that is the maximum number of results to return. When
-- 0, use default page size.
clPageSize :: Lens' CategoriesList (Maybe Int32)
clPageSize
  = lens _clPageSize (\ s a -> s{_clPageSize = a}) .
      mapping _Coerce

-- | JSONP
clCallback :: Lens' CategoriesList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleRequest CategoriesList where
        type Rs CategoriesList = ListCategoriesResponse
        type Scopes CategoriesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient CategoriesList'{..}
          = go _clParent _clXgafv _clUploadProtocol
              (Just _clPp)
              _clAccessToken
              _clUploadType
              _clBearerToken
              _clFilter
              _clPageToken
              _clPageSize
              _clCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient (Proxy :: Proxy CategoriesListResource)
                      mempty
