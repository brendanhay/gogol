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
-- Module      : Network.Google.Resource.Ml.Projects.Models.Versions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a model version. Models can have multiple
-- versions. You can call
-- [projects.models.versions.list](\/ml-engine\/reference\/rest\/v1\/projects.models.versions\/list)
-- to get the same information that this method returns for all of the
-- versions of a model.
--
-- /See:/ <https://cloud.google.com/ml/ Cloud Machine Learning Engine Reference> for @ml.projects.models.versions.get@.
module Network.Google.Resource.Ml.Projects.Models.Versions.Get
    (
    -- * REST Resource
      ProjectsModelsVersionsGetResource

    -- * Creating a Request
    , projectsModelsVersionsGet
    , ProjectsModelsVersionsGet

    -- * Request Lenses
    , pmvgXgafv
    , pmvgUploadProtocol
    , pmvgAccessToken
    , pmvgUploadType
    , pmvgName
    , pmvgCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.models.versions.get@ method which the
-- 'ProjectsModelsVersionsGet' request conforms to.
type ProjectsModelsVersionsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudMlV1__Version

-- | Gets information about a model version. Models can have multiple
-- versions. You can call
-- [projects.models.versions.list](\/ml-engine\/reference\/rest\/v1\/projects.models.versions\/list)
-- to get the same information that this method returns for all of the
-- versions of a model.
--
-- /See:/ 'projectsModelsVersionsGet' smart constructor.
data ProjectsModelsVersionsGet = ProjectsModelsVersionsGet'
    { _pmvgXgafv          :: !(Maybe Xgafv)
    , _pmvgUploadProtocol :: !(Maybe Text)
    , _pmvgAccessToken    :: !(Maybe Text)
    , _pmvgUploadType     :: !(Maybe Text)
    , _pmvgName           :: !Text
    , _pmvgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsModelsVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmvgXgafv'
--
-- * 'pmvgUploadProtocol'
--
-- * 'pmvgAccessToken'
--
-- * 'pmvgUploadType'
--
-- * 'pmvgName'
--
-- * 'pmvgCallback'
projectsModelsVersionsGet
    :: Text -- ^ 'pmvgName'
    -> ProjectsModelsVersionsGet
projectsModelsVersionsGet pPmvgName_ =
    ProjectsModelsVersionsGet'
    { _pmvgXgafv = Nothing
    , _pmvgUploadProtocol = Nothing
    , _pmvgAccessToken = Nothing
    , _pmvgUploadType = Nothing
    , _pmvgName = pPmvgName_
    , _pmvgCallback = Nothing
    }

-- | V1 error format.
pmvgXgafv :: Lens' ProjectsModelsVersionsGet (Maybe Xgafv)
pmvgXgafv
  = lens _pmvgXgafv (\ s a -> s{_pmvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmvgUploadProtocol :: Lens' ProjectsModelsVersionsGet (Maybe Text)
pmvgUploadProtocol
  = lens _pmvgUploadProtocol
      (\ s a -> s{_pmvgUploadProtocol = a})

-- | OAuth access token.
pmvgAccessToken :: Lens' ProjectsModelsVersionsGet (Maybe Text)
pmvgAccessToken
  = lens _pmvgAccessToken
      (\ s a -> s{_pmvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmvgUploadType :: Lens' ProjectsModelsVersionsGet (Maybe Text)
pmvgUploadType
  = lens _pmvgUploadType
      (\ s a -> s{_pmvgUploadType = a})

-- | Required. The name of the version.
pmvgName :: Lens' ProjectsModelsVersionsGet Text
pmvgName = lens _pmvgName (\ s a -> s{_pmvgName = a})

-- | JSONP
pmvgCallback :: Lens' ProjectsModelsVersionsGet (Maybe Text)
pmvgCallback
  = lens _pmvgCallback (\ s a -> s{_pmvgCallback = a})

instance GoogleRequest ProjectsModelsVersionsGet
         where
        type Rs ProjectsModelsVersionsGet =
             GoogleCloudMlV1__Version
        type Scopes ProjectsModelsVersionsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsModelsVersionsGet'{..}
          = go _pmvgName _pmvgXgafv _pmvgUploadProtocol
              _pmvgAccessToken
              _pmvgUploadType
              _pmvgCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsModelsVersionsGetResource)
                      mempty
