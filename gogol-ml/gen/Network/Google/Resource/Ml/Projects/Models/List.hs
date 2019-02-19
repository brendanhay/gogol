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
-- Module      : Network.Google.Resource.Ml.Projects.Models.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the models in a project. Each project can contain multiple models,
-- and each model can have multiple versions. If there are no models that
-- match the request parameters, the list request returns an empty response
-- body: {}.
--
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.models.list@.
module Network.Google.Resource.Ml.Projects.Models.List
    (
    -- * REST Resource
      ProjectsModelsListResource

    -- * Creating a Request
    , projectsModelsList
    , ProjectsModelsList

    -- * Request Lenses
    , pmlParent
    , pmlXgafv
    , pmlUploadProtocol
    , pmlAccessToken
    , pmlUploadType
    , pmlFilter
    , pmlPageToken
    , pmlPageSize
    , pmlCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.list@ method which the
-- 'ProjectsModelsList' request conforms to.
type ProjectsModelsListResource =
     "v1" :>
       Capture "parent" Text :>
         "models" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] GoogleCloudMlV1__ListModelsResponse

-- | Lists the models in a project. Each project can contain multiple models,
-- and each model can have multiple versions. If there are no models that
-- match the request parameters, the list request returns an empty response
-- body: {}.
--
-- /See:/ 'projectsModelsList' smart constructor.
data ProjectsModelsList =
  ProjectsModelsList'
    { _pmlParent         :: !Text
    , _pmlXgafv          :: !(Maybe Xgafv)
    , _pmlUploadProtocol :: !(Maybe Text)
    , _pmlAccessToken    :: !(Maybe Text)
    , _pmlUploadType     :: !(Maybe Text)
    , _pmlFilter         :: !(Maybe Text)
    , _pmlPageToken      :: !(Maybe Text)
    , _pmlPageSize       :: !(Maybe (Textual Int32))
    , _pmlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsModelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmlParent'
--
-- * 'pmlXgafv'
--
-- * 'pmlUploadProtocol'
--
-- * 'pmlAccessToken'
--
-- * 'pmlUploadType'
--
-- * 'pmlFilter'
--
-- * 'pmlPageToken'
--
-- * 'pmlPageSize'
--
-- * 'pmlCallback'
projectsModelsList
    :: Text -- ^ 'pmlParent'
    -> ProjectsModelsList
projectsModelsList pPmlParent_ =
  ProjectsModelsList'
    { _pmlParent = pPmlParent_
    , _pmlXgafv = Nothing
    , _pmlUploadProtocol = Nothing
    , _pmlAccessToken = Nothing
    , _pmlUploadType = Nothing
    , _pmlFilter = Nothing
    , _pmlPageToken = Nothing
    , _pmlPageSize = Nothing
    , _pmlCallback = Nothing
    }

-- | Required. The name of the project whose models are to be listed.
pmlParent :: Lens' ProjectsModelsList Text
pmlParent
  = lens _pmlParent (\ s a -> s{_pmlParent = a})

-- | V1 error format.
pmlXgafv :: Lens' ProjectsModelsList (Maybe Xgafv)
pmlXgafv = lens _pmlXgafv (\ s a -> s{_pmlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmlUploadProtocol :: Lens' ProjectsModelsList (Maybe Text)
pmlUploadProtocol
  = lens _pmlUploadProtocol
      (\ s a -> s{_pmlUploadProtocol = a})

-- | OAuth access token.
pmlAccessToken :: Lens' ProjectsModelsList (Maybe Text)
pmlAccessToken
  = lens _pmlAccessToken
      (\ s a -> s{_pmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmlUploadType :: Lens' ProjectsModelsList (Maybe Text)
pmlUploadType
  = lens _pmlUploadType
      (\ s a -> s{_pmlUploadType = a})

-- | Optional. Specifies the subset of models to retrieve.
pmlFilter :: Lens' ProjectsModelsList (Maybe Text)
pmlFilter
  = lens _pmlFilter (\ s a -> s{_pmlFilter = a})

-- | Optional. A page token to request the next page of results. You get the
-- token from the \`next_page_token\` field of the response from the
-- previous call.
pmlPageToken :: Lens' ProjectsModelsList (Maybe Text)
pmlPageToken
  = lens _pmlPageToken (\ s a -> s{_pmlPageToken = a})

-- | Optional. The number of models to retrieve per \"page\" of results. If
-- there are more remaining results than this number, the response message
-- will contain a valid value in the \`next_page_token\` field. The default
-- value is 20, and the maximum page size is 100.
pmlPageSize :: Lens' ProjectsModelsList (Maybe Int32)
pmlPageSize
  = lens _pmlPageSize (\ s a -> s{_pmlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pmlCallback :: Lens' ProjectsModelsList (Maybe Text)
pmlCallback
  = lens _pmlCallback (\ s a -> s{_pmlCallback = a})

instance GoogleRequest ProjectsModelsList where
        type Rs ProjectsModelsList =
             GoogleCloudMlV1__ListModelsResponse
        type Scopes ProjectsModelsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsList'{..}
          = go _pmlParent _pmlXgafv _pmlUploadProtocol
              _pmlAccessToken
              _pmlUploadType
              _pmlFilter
              _pmlPageToken
              _pmlPageSize
              _pmlCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsListResource)
                      mempty
