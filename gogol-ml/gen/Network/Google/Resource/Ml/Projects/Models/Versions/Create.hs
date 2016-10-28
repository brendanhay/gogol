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
-- Module      : Network.Google.Resource.Ml.Projects.Models.Versions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of a model from a trained TensorFlow model. If the
-- version created in the cloud by this call is the first deployed version
-- of the specified model, it will be made the default version of the
-- model. When you add a version to a model that already has one or more
-- versions, the default version does not automatically change. If you want
-- a new version to be the default, you must call
-- [projects.models.versions.setDefault](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/setDefault).
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.models.versions.create@.
module Network.Google.Resource.Ml.Projects.Models.Versions.Create
    (
    -- * REST Resource
      ProjectsModelsVersionsCreateResource

    -- * Creating a Request
    , projectsModelsVersionsCreate
    , ProjectsModelsVersionsCreate

    -- * Request Lenses
    , pmvcParent
    , pmvcXgafv
    , pmvcUploadProtocol
    , pmvcPp
    , pmvcAccessToken
    , pmvcUploadType
    , pmvcPayload
    , pmvcBearerToken
    , pmvcCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.versions.create@ method which the
-- 'ProjectsModelsVersionsCreate' request conforms to.
type ProjectsModelsVersionsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] GoogleCloudMlV1beta1__Version :>
                             Post '[JSON] GoogleLongrunning__Operation

-- | Creates a new version of a model from a trained TensorFlow model. If the
-- version created in the cloud by this call is the first deployed version
-- of the specified model, it will be made the default version of the
-- model. When you add a version to a model that already has one or more
-- versions, the default version does not automatically change. If you want
-- a new version to be the default, you must call
-- [projects.models.versions.setDefault](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/setDefault).
--
-- /See:/ 'projectsModelsVersionsCreate' smart constructor.
data ProjectsModelsVersionsCreate = ProjectsModelsVersionsCreate'
    { _pmvcParent         :: !Text
    , _pmvcXgafv          :: !(Maybe Xgafv)
    , _pmvcUploadProtocol :: !(Maybe Text)
    , _pmvcPp             :: !Bool
    , _pmvcAccessToken    :: !(Maybe Text)
    , _pmvcUploadType     :: !(Maybe Text)
    , _pmvcPayload        :: !GoogleCloudMlV1beta1__Version
    , _pmvcBearerToken    :: !(Maybe Text)
    , _pmvcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsModelsVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmvcParent'
--
-- * 'pmvcXgafv'
--
-- * 'pmvcUploadProtocol'
--
-- * 'pmvcPp'
--
-- * 'pmvcAccessToken'
--
-- * 'pmvcUploadType'
--
-- * 'pmvcPayload'
--
-- * 'pmvcBearerToken'
--
-- * 'pmvcCallback'
projectsModelsVersionsCreate
    :: Text -- ^ 'pmvcParent'
    -> GoogleCloudMlV1beta1__Version -- ^ 'pmvcPayload'
    -> ProjectsModelsVersionsCreate
projectsModelsVersionsCreate pPmvcParent_ pPmvcPayload_ =
    ProjectsModelsVersionsCreate'
    { _pmvcParent = pPmvcParent_
    , _pmvcXgafv = Nothing
    , _pmvcUploadProtocol = Nothing
    , _pmvcPp = True
    , _pmvcAccessToken = Nothing
    , _pmvcUploadType = Nothing
    , _pmvcPayload = pPmvcPayload_
    , _pmvcBearerToken = Nothing
    , _pmvcCallback = Nothing
    }

-- | Required. The name of the model. Authorization: requires \`Editor\` role
-- on the parent project.
pmvcParent :: Lens' ProjectsModelsVersionsCreate Text
pmvcParent
  = lens _pmvcParent (\ s a -> s{_pmvcParent = a})

-- | V1 error format.
pmvcXgafv :: Lens' ProjectsModelsVersionsCreate (Maybe Xgafv)
pmvcXgafv
  = lens _pmvcXgafv (\ s a -> s{_pmvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmvcUploadProtocol :: Lens' ProjectsModelsVersionsCreate (Maybe Text)
pmvcUploadProtocol
  = lens _pmvcUploadProtocol
      (\ s a -> s{_pmvcUploadProtocol = a})

-- | Pretty-print response.
pmvcPp :: Lens' ProjectsModelsVersionsCreate Bool
pmvcPp = lens _pmvcPp (\ s a -> s{_pmvcPp = a})

-- | OAuth access token.
pmvcAccessToken :: Lens' ProjectsModelsVersionsCreate (Maybe Text)
pmvcAccessToken
  = lens _pmvcAccessToken
      (\ s a -> s{_pmvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmvcUploadType :: Lens' ProjectsModelsVersionsCreate (Maybe Text)
pmvcUploadType
  = lens _pmvcUploadType
      (\ s a -> s{_pmvcUploadType = a})

-- | Multipart request metadata.
pmvcPayload :: Lens' ProjectsModelsVersionsCreate GoogleCloudMlV1beta1__Version
pmvcPayload
  = lens _pmvcPayload (\ s a -> s{_pmvcPayload = a})

-- | OAuth bearer token.
pmvcBearerToken :: Lens' ProjectsModelsVersionsCreate (Maybe Text)
pmvcBearerToken
  = lens _pmvcBearerToken
      (\ s a -> s{_pmvcBearerToken = a})

-- | JSONP
pmvcCallback :: Lens' ProjectsModelsVersionsCreate (Maybe Text)
pmvcCallback
  = lens _pmvcCallback (\ s a -> s{_pmvcCallback = a})

instance GoogleRequest ProjectsModelsVersionsCreate
         where
        type Rs ProjectsModelsVersionsCreate =
             GoogleLongrunning__Operation
        type Scopes ProjectsModelsVersionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsVersionsCreate'{..}
          = go _pmvcParent _pmvcXgafv _pmvcUploadProtocol
              (Just _pmvcPp)
              _pmvcAccessToken
              _pmvcUploadType
              _pmvcBearerToken
              _pmvcCallback
              (Just AltJSON)
              _pmvcPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsVersionsCreateResource)
                      mempty
