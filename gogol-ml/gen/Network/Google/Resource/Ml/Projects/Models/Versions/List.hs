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
-- Module      : Network.Google.Resource.Ml.Projects.Models.Versions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets basic information about all the versions of a model. If you expect
-- that a model has many versions, or if you need to handle only a limited
-- number of results at a time, you can request that the list be retrieved
-- in batches (called pages). If there are no versions that match the
-- request parameters, the list request returns an empty response body: {}.
--
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.models.versions.list@.
module Network.Google.Resource.Ml.Projects.Models.Versions.List
    (
    -- * REST Resource
      ProjectsModelsVersionsListResource

    -- * Creating a Request
    , projectsModelsVersionsList
    , ProjectsModelsVersionsList

    -- * Request Lenses
    , pmvlParent
    , pmvlXgafv
    , pmvlUploadProtocol
    , pmvlAccessToken
    , pmvlUploadType
    , pmvlFilter
    , pmvlPageToken
    , pmvlPageSize
    , pmvlCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.versions.list@ method which the
-- 'ProjectsModelsVersionsList' request conforms to.
type ProjectsModelsVersionsListResource =
     "v1" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] GoogleCloudMlV1__ListVersionsResponse

-- | Gets basic information about all the versions of a model. If you expect
-- that a model has many versions, or if you need to handle only a limited
-- number of results at a time, you can request that the list be retrieved
-- in batches (called pages). If there are no versions that match the
-- request parameters, the list request returns an empty response body: {}.
--
-- /See:/ 'projectsModelsVersionsList' smart constructor.
data ProjectsModelsVersionsList =
  ProjectsModelsVersionsList'
    { _pmvlParent         :: !Text
    , _pmvlXgafv          :: !(Maybe Xgafv)
    , _pmvlUploadProtocol :: !(Maybe Text)
    , _pmvlAccessToken    :: !(Maybe Text)
    , _pmvlUploadType     :: !(Maybe Text)
    , _pmvlFilter         :: !(Maybe Text)
    , _pmvlPageToken      :: !(Maybe Text)
    , _pmvlPageSize       :: !(Maybe (Textual Int32))
    , _pmvlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsModelsVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmvlParent'
--
-- * 'pmvlXgafv'
--
-- * 'pmvlUploadProtocol'
--
-- * 'pmvlAccessToken'
--
-- * 'pmvlUploadType'
--
-- * 'pmvlFilter'
--
-- * 'pmvlPageToken'
--
-- * 'pmvlPageSize'
--
-- * 'pmvlCallback'
projectsModelsVersionsList
    :: Text -- ^ 'pmvlParent'
    -> ProjectsModelsVersionsList
projectsModelsVersionsList pPmvlParent_ =
  ProjectsModelsVersionsList'
    { _pmvlParent = pPmvlParent_
    , _pmvlXgafv = Nothing
    , _pmvlUploadProtocol = Nothing
    , _pmvlAccessToken = Nothing
    , _pmvlUploadType = Nothing
    , _pmvlFilter = Nothing
    , _pmvlPageToken = Nothing
    , _pmvlPageSize = Nothing
    , _pmvlCallback = Nothing
    }


-- | Required. The name of the model for which to list the version.
pmvlParent :: Lens' ProjectsModelsVersionsList Text
pmvlParent
  = lens _pmvlParent (\ s a -> s{_pmvlParent = a})

-- | V1 error format.
pmvlXgafv :: Lens' ProjectsModelsVersionsList (Maybe Xgafv)
pmvlXgafv
  = lens _pmvlXgafv (\ s a -> s{_pmvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmvlUploadProtocol :: Lens' ProjectsModelsVersionsList (Maybe Text)
pmvlUploadProtocol
  = lens _pmvlUploadProtocol
      (\ s a -> s{_pmvlUploadProtocol = a})

-- | OAuth access token.
pmvlAccessToken :: Lens' ProjectsModelsVersionsList (Maybe Text)
pmvlAccessToken
  = lens _pmvlAccessToken
      (\ s a -> s{_pmvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmvlUploadType :: Lens' ProjectsModelsVersionsList (Maybe Text)
pmvlUploadType
  = lens _pmvlUploadType
      (\ s a -> s{_pmvlUploadType = a})

-- | Optional. Specifies the subset of versions to retrieve.
pmvlFilter :: Lens' ProjectsModelsVersionsList (Maybe Text)
pmvlFilter
  = lens _pmvlFilter (\ s a -> s{_pmvlFilter = a})

-- | Optional. A page token to request the next page of results. You get the
-- token from the \`next_page_token\` field of the response from the
-- previous call.
pmvlPageToken :: Lens' ProjectsModelsVersionsList (Maybe Text)
pmvlPageToken
  = lens _pmvlPageToken
      (\ s a -> s{_pmvlPageToken = a})

-- | Optional. The number of versions to retrieve per \"page\" of results. If
-- there are more remaining results than this number, the response message
-- will contain a valid value in the \`next_page_token\` field. The default
-- value is 20, and the maximum page size is 100.
pmvlPageSize :: Lens' ProjectsModelsVersionsList (Maybe Int32)
pmvlPageSize
  = lens _pmvlPageSize (\ s a -> s{_pmvlPageSize = a})
      . mapping _Coerce

-- | JSONP
pmvlCallback :: Lens' ProjectsModelsVersionsList (Maybe Text)
pmvlCallback
  = lens _pmvlCallback (\ s a -> s{_pmvlCallback = a})

instance GoogleRequest ProjectsModelsVersionsList
         where
        type Rs ProjectsModelsVersionsList =
             GoogleCloudMlV1__ListVersionsResponse
        type Scopes ProjectsModelsVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsVersionsList'{..}
          = go _pmvlParent _pmvlXgafv _pmvlUploadProtocol
              _pmvlAccessToken
              _pmvlUploadType
              _pmvlFilter
              _pmvlPageToken
              _pmvlPageSize
              _pmvlCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsVersionsListResource)
                      mempty
