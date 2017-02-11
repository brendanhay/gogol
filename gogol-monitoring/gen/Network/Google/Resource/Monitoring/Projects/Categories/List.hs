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
-- Module      : Network.Google.Resource.Monitoring.Projects.Categories.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all Categories for a host project.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.categories.list@.
module Network.Google.Resource.Monitoring.Projects.Categories.List
    (
    -- * REST Resource
      ProjectsCategoriesListResource

    -- * Creating a Request
    , projectsCategoriesList
    , ProjectsCategoriesList

    -- * Request Lenses
    , pclParent
    , pclXgafv
    , pclUploadProtocol
    , pclPp
    , pclAccessToken
    , pclUploadType
    , pclBearerToken
    , pclFilter
    , pclPageToken
    , pclPageSize
    , pclCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.categories.list@ method which the
-- 'ProjectsCategoriesList' request conforms to.
type ProjectsCategoriesListResource =
     "v3" :>
       Capture "parent" Text :>
         "categories" :>
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
-- /See:/ 'projectsCategoriesList' smart constructor.
data ProjectsCategoriesList = ProjectsCategoriesList'
    { _pclParent         :: !Text
    , _pclXgafv          :: !(Maybe Xgafv)
    , _pclUploadProtocol :: !(Maybe Text)
    , _pclPp             :: !Bool
    , _pclAccessToken    :: !(Maybe Text)
    , _pclUploadType     :: !(Maybe Text)
    , _pclBearerToken    :: !(Maybe Text)
    , _pclFilter         :: !(Maybe Text)
    , _pclPageToken      :: !(Maybe Text)
    , _pclPageSize       :: !(Maybe (Textual Int32))
    , _pclCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsCategoriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pclParent'
--
-- * 'pclXgafv'
--
-- * 'pclUploadProtocol'
--
-- * 'pclPp'
--
-- * 'pclAccessToken'
--
-- * 'pclUploadType'
--
-- * 'pclBearerToken'
--
-- * 'pclFilter'
--
-- * 'pclPageToken'
--
-- * 'pclPageSize'
--
-- * 'pclCallback'
projectsCategoriesList
    :: Text -- ^ 'pclParent'
    -> ProjectsCategoriesList
projectsCategoriesList pPclParent_ =
    ProjectsCategoriesList'
    { _pclParent = pPclParent_
    , _pclXgafv = Nothing
    , _pclUploadProtocol = Nothing
    , _pclPp = True
    , _pclAccessToken = Nothing
    , _pclUploadType = Nothing
    , _pclBearerToken = Nothing
    , _pclFilter = Nothing
    , _pclPageToken = Nothing
    , _pclPageSize = Nothing
    , _pclCallback = Nothing
    }

-- | Resource parent of the project to get. Resource parent form is
-- projects\/{project_id_or_number}.
pclParent :: Lens' ProjectsCategoriesList Text
pclParent
  = lens _pclParent (\ s a -> s{_pclParent = a})

-- | V1 error format.
pclXgafv :: Lens' ProjectsCategoriesList (Maybe Xgafv)
pclXgafv = lens _pclXgafv (\ s a -> s{_pclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pclUploadProtocol :: Lens' ProjectsCategoriesList (Maybe Text)
pclUploadProtocol
  = lens _pclUploadProtocol
      (\ s a -> s{_pclUploadProtocol = a})

-- | Pretty-print response.
pclPp :: Lens' ProjectsCategoriesList Bool
pclPp = lens _pclPp (\ s a -> s{_pclPp = a})

-- | OAuth access token.
pclAccessToken :: Lens' ProjectsCategoriesList (Maybe Text)
pclAccessToken
  = lens _pclAccessToken
      (\ s a -> s{_pclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pclUploadType :: Lens' ProjectsCategoriesList (Maybe Text)
pclUploadType
  = lens _pclUploadType
      (\ s a -> s{_pclUploadType = a})

-- | OAuth bearer token.
pclBearerToken :: Lens' ProjectsCategoriesList (Maybe Text)
pclBearerToken
  = lens _pclBearerToken
      (\ s a -> s{_pclBearerToken = a})

-- | A filter that specifies what Categories to return.
pclFilter :: Lens' ProjectsCategoriesList (Maybe Text)
pclFilter
  = lens _pclFilter (\ s a -> s{_pclFilter = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
pclPageToken :: Lens' ProjectsCategoriesList (Maybe Text)
pclPageToken
  = lens _pclPageToken (\ s a -> s{_pclPageToken = a})

-- | A positive number that is the maximum number of results to return. When
-- 0, use default page size.
pclPageSize :: Lens' ProjectsCategoriesList (Maybe Int32)
pclPageSize
  = lens _pclPageSize (\ s a -> s{_pclPageSize = a}) .
      mapping _Coerce

-- | JSONP
pclCallback :: Lens' ProjectsCategoriesList (Maybe Text)
pclCallback
  = lens _pclCallback (\ s a -> s{_pclCallback = a})

instance GoogleRequest ProjectsCategoriesList where
        type Rs ProjectsCategoriesList =
             ListCategoriesResponse
        type Scopes ProjectsCategoriesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsCategoriesList'{..}
          = go _pclParent _pclXgafv _pclUploadProtocol
              (Just _pclPp)
              _pclAccessToken
              _pclUploadType
              _pclBearerToken
              _pclFilter
              _pclPageToken
              _pclPageSize
              _pclCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCategoriesListResource)
                      mempty
