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
-- Module      : Network.Google.Resource.Ml.Projects.Models.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a model which will later contain one or more versions. You must
-- add at least one version before you can request predictions from the
-- model. Add versions by calling
-- [projects.models.versions.create](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/create).
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.models.create@.
module Network.Google.Resource.Ml.Projects.Models.Create
    (
    -- * REST Resource
      ProjectsModelsCreateResource

    -- * Creating a Request
    , projectsModelsCreate
    , ProjectsModelsCreate

    -- * Request Lenses
    , pmcParent
    , pmcXgafv
    , pmcUploadProtocol
    , pmcPp
    , pmcAccessToken
    , pmcUploadType
    , pmcPayload
    , pmcBearerToken
    , pmcCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.create@ method which the
-- 'ProjectsModelsCreate' request conforms to.
type ProjectsModelsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "models" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] GoogleCloudMlV1beta1__Model :>
                             Post '[JSON] GoogleCloudMlV1beta1__Model

-- | Creates a model which will later contain one or more versions. You must
-- add at least one version before you can request predictions from the
-- model. Add versions by calling
-- [projects.models.versions.create](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/create).
--
-- /See:/ 'projectsModelsCreate' smart constructor.
data ProjectsModelsCreate = ProjectsModelsCreate'
    { _pmcParent         :: !Text
    , _pmcXgafv          :: !(Maybe Xgafv)
    , _pmcUploadProtocol :: !(Maybe Text)
    , _pmcPp             :: !Bool
    , _pmcAccessToken    :: !(Maybe Text)
    , _pmcUploadType     :: !(Maybe Text)
    , _pmcPayload        :: !GoogleCloudMlV1beta1__Model
    , _pmcBearerToken    :: !(Maybe Text)
    , _pmcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsModelsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmcParent'
--
-- * 'pmcXgafv'
--
-- * 'pmcUploadProtocol'
--
-- * 'pmcPp'
--
-- * 'pmcAccessToken'
--
-- * 'pmcUploadType'
--
-- * 'pmcPayload'
--
-- * 'pmcBearerToken'
--
-- * 'pmcCallback'
projectsModelsCreate
    :: Text -- ^ 'pmcParent'
    -> GoogleCloudMlV1beta1__Model -- ^ 'pmcPayload'
    -> ProjectsModelsCreate
projectsModelsCreate pPmcParent_ pPmcPayload_ =
    ProjectsModelsCreate'
    { _pmcParent = pPmcParent_
    , _pmcXgafv = Nothing
    , _pmcUploadProtocol = Nothing
    , _pmcPp = True
    , _pmcAccessToken = Nothing
    , _pmcUploadType = Nothing
    , _pmcPayload = pPmcPayload_
    , _pmcBearerToken = Nothing
    , _pmcCallback = Nothing
    }

-- | Required. The project name. Authorization: requires \`Editor\` role on
-- the specified project.
pmcParent :: Lens' ProjectsModelsCreate Text
pmcParent
  = lens _pmcParent (\ s a -> s{_pmcParent = a})

-- | V1 error format.
pmcXgafv :: Lens' ProjectsModelsCreate (Maybe Xgafv)
pmcXgafv = lens _pmcXgafv (\ s a -> s{_pmcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmcUploadProtocol :: Lens' ProjectsModelsCreate (Maybe Text)
pmcUploadProtocol
  = lens _pmcUploadProtocol
      (\ s a -> s{_pmcUploadProtocol = a})

-- | Pretty-print response.
pmcPp :: Lens' ProjectsModelsCreate Bool
pmcPp = lens _pmcPp (\ s a -> s{_pmcPp = a})

-- | OAuth access token.
pmcAccessToken :: Lens' ProjectsModelsCreate (Maybe Text)
pmcAccessToken
  = lens _pmcAccessToken
      (\ s a -> s{_pmcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmcUploadType :: Lens' ProjectsModelsCreate (Maybe Text)
pmcUploadType
  = lens _pmcUploadType
      (\ s a -> s{_pmcUploadType = a})

-- | Multipart request metadata.
pmcPayload :: Lens' ProjectsModelsCreate GoogleCloudMlV1beta1__Model
pmcPayload
  = lens _pmcPayload (\ s a -> s{_pmcPayload = a})

-- | OAuth bearer token.
pmcBearerToken :: Lens' ProjectsModelsCreate (Maybe Text)
pmcBearerToken
  = lens _pmcBearerToken
      (\ s a -> s{_pmcBearerToken = a})

-- | JSONP
pmcCallback :: Lens' ProjectsModelsCreate (Maybe Text)
pmcCallback
  = lens _pmcCallback (\ s a -> s{_pmcCallback = a})

instance GoogleRequest ProjectsModelsCreate where
        type Rs ProjectsModelsCreate =
             GoogleCloudMlV1beta1__Model
        type Scopes ProjectsModelsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsCreate'{..}
          = go _pmcParent _pmcXgafv _pmcUploadProtocol
              (Just _pmcPp)
              _pmcAccessToken
              _pmcUploadType
              _pmcBearerToken
              _pmcCallback
              (Just AltJSON)
              _pmcPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsCreateResource)
                      mempty
