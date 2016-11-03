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
-- Module      : Network.Google.Resource.Ml.Projects.Models.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a model, including its name, the description (if
-- set), and the default version (if at least one version of the model has
-- been deployed).
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.models.get@.
module Network.Google.Resource.Ml.Projects.Models.Get
    (
    -- * REST Resource
      ProjectsModelsGetResource

    -- * Creating a Request
    , projectsModelsGet
    , ProjectsModelsGet

    -- * Request Lenses
    , pmgXgafv
    , pmgUploadProtocol
    , pmgPp
    , pmgAccessToken
    , pmgUploadType
    , pmgBearerToken
    , pmgName
    , pmgCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.get@ method which the
-- 'ProjectsModelsGet' request conforms to.
type ProjectsModelsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GoogleCloudMlV1beta1__Model

-- | Gets information about a model, including its name, the description (if
-- set), and the default version (if at least one version of the model has
-- been deployed).
--
-- /See:/ 'projectsModelsGet' smart constructor.
data ProjectsModelsGet = ProjectsModelsGet'
    { _pmgXgafv          :: !(Maybe Xgafv)
    , _pmgUploadProtocol :: !(Maybe Text)
    , _pmgPp             :: !Bool
    , _pmgAccessToken    :: !(Maybe Text)
    , _pmgUploadType     :: !(Maybe Text)
    , _pmgBearerToken    :: !(Maybe Text)
    , _pmgName           :: !Text
    , _pmgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsModelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmgXgafv'
--
-- * 'pmgUploadProtocol'
--
-- * 'pmgPp'
--
-- * 'pmgAccessToken'
--
-- * 'pmgUploadType'
--
-- * 'pmgBearerToken'
--
-- * 'pmgName'
--
-- * 'pmgCallback'
projectsModelsGet
    :: Text -- ^ 'pmgName'
    -> ProjectsModelsGet
projectsModelsGet pPmgName_ =
    ProjectsModelsGet'
    { _pmgXgafv = Nothing
    , _pmgUploadProtocol = Nothing
    , _pmgPp = True
    , _pmgAccessToken = Nothing
    , _pmgUploadType = Nothing
    , _pmgBearerToken = Nothing
    , _pmgName = pPmgName_
    , _pmgCallback = Nothing
    }

-- | V1 error format.
pmgXgafv :: Lens' ProjectsModelsGet (Maybe Xgafv)
pmgXgafv = lens _pmgXgafv (\ s a -> s{_pmgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmgUploadProtocol :: Lens' ProjectsModelsGet (Maybe Text)
pmgUploadProtocol
  = lens _pmgUploadProtocol
      (\ s a -> s{_pmgUploadProtocol = a})

-- | Pretty-print response.
pmgPp :: Lens' ProjectsModelsGet Bool
pmgPp = lens _pmgPp (\ s a -> s{_pmgPp = a})

-- | OAuth access token.
pmgAccessToken :: Lens' ProjectsModelsGet (Maybe Text)
pmgAccessToken
  = lens _pmgAccessToken
      (\ s a -> s{_pmgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmgUploadType :: Lens' ProjectsModelsGet (Maybe Text)
pmgUploadType
  = lens _pmgUploadType
      (\ s a -> s{_pmgUploadType = a})

-- | OAuth bearer token.
pmgBearerToken :: Lens' ProjectsModelsGet (Maybe Text)
pmgBearerToken
  = lens _pmgBearerToken
      (\ s a -> s{_pmgBearerToken = a})

-- | Required. The name of the model. Authorization: requires \`Viewer\` role
-- on the parent project.
pmgName :: Lens' ProjectsModelsGet Text
pmgName = lens _pmgName (\ s a -> s{_pmgName = a})

-- | JSONP
pmgCallback :: Lens' ProjectsModelsGet (Maybe Text)
pmgCallback
  = lens _pmgCallback (\ s a -> s{_pmgCallback = a})

instance GoogleRequest ProjectsModelsGet where
        type Rs ProjectsModelsGet =
             GoogleCloudMlV1beta1__Model
        type Scopes ProjectsModelsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsGet'{..}
          = go _pmgName _pmgXgafv _pmgUploadProtocol
              (Just _pmgPp)
              _pmgAccessToken
              _pmgUploadType
              _pmgBearerToken
              _pmgCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsGetResource)
                      mempty
