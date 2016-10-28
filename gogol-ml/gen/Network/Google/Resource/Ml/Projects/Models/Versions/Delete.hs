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
-- Module      : Network.Google.Resource.Ml.Projects.Models.Versions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a model version. Each model can have multiple versions deployed
-- and in use at any given time. Use this method to remove a single
-- version. Note: You cannot delete the version that is set as the default
-- version of the model unless it is the only remaining version.
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.models.versions.delete@.
module Network.Google.Resource.Ml.Projects.Models.Versions.Delete
    (
    -- * REST Resource
      ProjectsModelsVersionsDeleteResource

    -- * Creating a Request
    , projectsModelsVersionsDelete
    , ProjectsModelsVersionsDelete

    -- * Request Lenses
    , pmvdXgafv
    , pmvdUploadProtocol
    , pmvdPp
    , pmvdAccessToken
    , pmvdUploadType
    , pmvdBearerToken
    , pmvdName
    , pmvdCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.versions.delete@ method which the
-- 'ProjectsModelsVersionsDelete' request conforms to.
type ProjectsModelsVersionsDeleteResource =
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
                         Delete '[JSON] GoogleLongrunning__Operation

-- | Deletes a model version. Each model can have multiple versions deployed
-- and in use at any given time. Use this method to remove a single
-- version. Note: You cannot delete the version that is set as the default
-- version of the model unless it is the only remaining version.
--
-- /See:/ 'projectsModelsVersionsDelete' smart constructor.
data ProjectsModelsVersionsDelete = ProjectsModelsVersionsDelete'
    { _pmvdXgafv          :: !(Maybe Xgafv)
    , _pmvdUploadProtocol :: !(Maybe Text)
    , _pmvdPp             :: !Bool
    , _pmvdAccessToken    :: !(Maybe Text)
    , _pmvdUploadType     :: !(Maybe Text)
    , _pmvdBearerToken    :: !(Maybe Text)
    , _pmvdName           :: !Text
    , _pmvdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsModelsVersionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmvdXgafv'
--
-- * 'pmvdUploadProtocol'
--
-- * 'pmvdPp'
--
-- * 'pmvdAccessToken'
--
-- * 'pmvdUploadType'
--
-- * 'pmvdBearerToken'
--
-- * 'pmvdName'
--
-- * 'pmvdCallback'
projectsModelsVersionsDelete
    :: Text -- ^ 'pmvdName'
    -> ProjectsModelsVersionsDelete
projectsModelsVersionsDelete pPmvdName_ =
    ProjectsModelsVersionsDelete'
    { _pmvdXgafv = Nothing
    , _pmvdUploadProtocol = Nothing
    , _pmvdPp = True
    , _pmvdAccessToken = Nothing
    , _pmvdUploadType = Nothing
    , _pmvdBearerToken = Nothing
    , _pmvdName = pPmvdName_
    , _pmvdCallback = Nothing
    }

-- | V1 error format.
pmvdXgafv :: Lens' ProjectsModelsVersionsDelete (Maybe Xgafv)
pmvdXgafv
  = lens _pmvdXgafv (\ s a -> s{_pmvdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmvdUploadProtocol :: Lens' ProjectsModelsVersionsDelete (Maybe Text)
pmvdUploadProtocol
  = lens _pmvdUploadProtocol
      (\ s a -> s{_pmvdUploadProtocol = a})

-- | Pretty-print response.
pmvdPp :: Lens' ProjectsModelsVersionsDelete Bool
pmvdPp = lens _pmvdPp (\ s a -> s{_pmvdPp = a})

-- | OAuth access token.
pmvdAccessToken :: Lens' ProjectsModelsVersionsDelete (Maybe Text)
pmvdAccessToken
  = lens _pmvdAccessToken
      (\ s a -> s{_pmvdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmvdUploadType :: Lens' ProjectsModelsVersionsDelete (Maybe Text)
pmvdUploadType
  = lens _pmvdUploadType
      (\ s a -> s{_pmvdUploadType = a})

-- | OAuth bearer token.
pmvdBearerToken :: Lens' ProjectsModelsVersionsDelete (Maybe Text)
pmvdBearerToken
  = lens _pmvdBearerToken
      (\ s a -> s{_pmvdBearerToken = a})

-- | Required. The name of the version. You can get the names of all the
-- versions of a model by calling
-- [projects.models.versions.list](\/ml\/reference\/rest\/v1beta1\/projects.models.versions\/list).
-- Authorization: requires \`Editor\` role on the parent project.
pmvdName :: Lens' ProjectsModelsVersionsDelete Text
pmvdName = lens _pmvdName (\ s a -> s{_pmvdName = a})

-- | JSONP
pmvdCallback :: Lens' ProjectsModelsVersionsDelete (Maybe Text)
pmvdCallback
  = lens _pmvdCallback (\ s a -> s{_pmvdCallback = a})

instance GoogleRequest ProjectsModelsVersionsDelete
         where
        type Rs ProjectsModelsVersionsDelete =
             GoogleLongrunning__Operation
        type Scopes ProjectsModelsVersionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsVersionsDelete'{..}
          = go _pmvdName _pmvdXgafv _pmvdUploadProtocol
              (Just _pmvdPp)
              _pmvdAccessToken
              _pmvdUploadType
              _pmvdBearerToken
              _pmvdCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsVersionsDeleteResource)
                      mempty
