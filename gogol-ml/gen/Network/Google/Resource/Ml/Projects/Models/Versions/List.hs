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
-- that a model has a lot of versions, or if you need to handle only a
-- limited number of results at a time, you can request that the list be
-- retrieved in batches (called pages):
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.models.versions.list@.
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
    , pmvlPp
    , pmvlAccessToken
    , pmvlUploadType
    , pmvlBearerToken
    , pmvlPageToken
    , pmvlPageSize
    , pmvlCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.versions.list@ method which the
-- 'ProjectsModelsVersionsList' request conforms to.
type ProjectsModelsVersionsListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GoogleCloudMlV1beta1__ListVersionsResponse

-- | Gets basic information about all the versions of a model. If you expect
-- that a model has a lot of versions, or if you need to handle only a
-- limited number of results at a time, you can request that the list be
-- retrieved in batches (called pages):
--
-- /See:/ 'projectsModelsVersionsList' smart constructor.
data ProjectsModelsVersionsList = ProjectsModelsVersionsList'
    { _pmvlParent         :: !Text
    , _pmvlXgafv          :: !(Maybe Xgafv)
    , _pmvlUploadProtocol :: !(Maybe Text)
    , _pmvlPp             :: !Bool
    , _pmvlAccessToken    :: !(Maybe Text)
    , _pmvlUploadType     :: !(Maybe Text)
    , _pmvlBearerToken    :: !(Maybe Text)
    , _pmvlPageToken      :: !(Maybe Text)
    , _pmvlPageSize       :: !(Maybe (Textual Int32))
    , _pmvlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pmvlPp'
--
-- * 'pmvlAccessToken'
--
-- * 'pmvlUploadType'
--
-- * 'pmvlBearerToken'
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
    , _pmvlPp = True
    , _pmvlAccessToken = Nothing
    , _pmvlUploadType = Nothing
    , _pmvlBearerToken = Nothing
    , _pmvlPageToken = Nothing
    , _pmvlPageSize = Nothing
    , _pmvlCallback = Nothing
    }

-- | Required. The name of the model for which to list the version.
-- Authorization: requires \`Viewer\` role on the parent project.
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

-- | Pretty-print response.
pmvlPp :: Lens' ProjectsModelsVersionsList Bool
pmvlPp = lens _pmvlPp (\ s a -> s{_pmvlPp = a})

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

-- | OAuth bearer token.
pmvlBearerToken :: Lens' ProjectsModelsVersionsList (Maybe Text)
pmvlBearerToken
  = lens _pmvlBearerToken
      (\ s a -> s{_pmvlBearerToken = a})

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
             GoogleCloudMlV1beta1__ListVersionsResponse
        type Scopes ProjectsModelsVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsVersionsList'{..}
          = go _pmvlParent _pmvlXgafv _pmvlUploadProtocol
              (Just _pmvlPp)
              _pmvlAccessToken
              _pmvlUploadType
              _pmvlBearerToken
              _pmvlPageToken
              _pmvlPageSize
              _pmvlCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsVersionsListResource)
                      mempty
