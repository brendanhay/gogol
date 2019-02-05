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
-- Module      : Network.Google.Resource.TPU.Projects.Locations.TensorflowVersions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets TensorFlow Version.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.tensorflowVersions.get@.
module Network.Google.Resource.TPU.Projects.Locations.TensorflowVersions.Get
    (
    -- * REST Resource
      ProjectsLocationsTensorflowVersionsGetResource

    -- * Creating a Request
    , projectsLocationsTensorflowVersionsGet
    , ProjectsLocationsTensorflowVersionsGet

    -- * Request Lenses
    , pltvgXgafv
    , pltvgUploadProtocol
    , pltvgAccessToken
    , pltvgUploadType
    , pltvgName
    , pltvgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types

-- | A resource alias for @tpu.projects.locations.tensorflowVersions.get@ method which the
-- 'ProjectsLocationsTensorflowVersionsGet' request conforms to.
type ProjectsLocationsTensorflowVersionsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] TensorFlowVersion

-- | Gets TensorFlow Version.
--
-- /See:/ 'projectsLocationsTensorflowVersionsGet' smart constructor.
data ProjectsLocationsTensorflowVersionsGet = ProjectsLocationsTensorflowVersionsGet'
    { _pltvgXgafv          :: !(Maybe Xgafv)
    , _pltvgUploadProtocol :: !(Maybe Text)
    , _pltvgAccessToken    :: !(Maybe Text)
    , _pltvgUploadType     :: !(Maybe Text)
    , _pltvgName           :: !Text
    , _pltvgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsLocationsTensorflowVersionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pltvgXgafv'
--
-- * 'pltvgUploadProtocol'
--
-- * 'pltvgAccessToken'
--
-- * 'pltvgUploadType'
--
-- * 'pltvgName'
--
-- * 'pltvgCallback'
projectsLocationsTensorflowVersionsGet
    :: Text -- ^ 'pltvgName'
    -> ProjectsLocationsTensorflowVersionsGet
projectsLocationsTensorflowVersionsGet pPltvgName_ =
    ProjectsLocationsTensorflowVersionsGet'
    { _pltvgXgafv = Nothing
    , _pltvgUploadProtocol = Nothing
    , _pltvgAccessToken = Nothing
    , _pltvgUploadType = Nothing
    , _pltvgName = pPltvgName_
    , _pltvgCallback = Nothing
    }

-- | V1 error format.
pltvgXgafv :: Lens' ProjectsLocationsTensorflowVersionsGet (Maybe Xgafv)
pltvgXgafv
  = lens _pltvgXgafv (\ s a -> s{_pltvgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pltvgUploadProtocol :: Lens' ProjectsLocationsTensorflowVersionsGet (Maybe Text)
pltvgUploadProtocol
  = lens _pltvgUploadProtocol
      (\ s a -> s{_pltvgUploadProtocol = a})

-- | OAuth access token.
pltvgAccessToken :: Lens' ProjectsLocationsTensorflowVersionsGet (Maybe Text)
pltvgAccessToken
  = lens _pltvgAccessToken
      (\ s a -> s{_pltvgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pltvgUploadType :: Lens' ProjectsLocationsTensorflowVersionsGet (Maybe Text)
pltvgUploadType
  = lens _pltvgUploadType
      (\ s a -> s{_pltvgUploadType = a})

-- | The resource name.
pltvgName :: Lens' ProjectsLocationsTensorflowVersionsGet Text
pltvgName
  = lens _pltvgName (\ s a -> s{_pltvgName = a})

-- | JSONP
pltvgCallback :: Lens' ProjectsLocationsTensorflowVersionsGet (Maybe Text)
pltvgCallback
  = lens _pltvgCallback
      (\ s a -> s{_pltvgCallback = a})

instance GoogleRequest
         ProjectsLocationsTensorflowVersionsGet where
        type Rs ProjectsLocationsTensorflowVersionsGet =
             TensorFlowVersion
        type Scopes ProjectsLocationsTensorflowVersionsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsTensorflowVersionsGet'{..}
          = go _pltvgName _pltvgXgafv _pltvgUploadProtocol
              _pltvgAccessToken
              _pltvgUploadType
              _pltvgCallback
              (Just AltJSON)
              tPUService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsTensorflowVersionsGetResource)
                      mempty
