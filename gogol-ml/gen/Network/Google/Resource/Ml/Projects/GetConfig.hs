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
-- Module      : Network.Google.Resource.Ml.Projects.GetConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the service account information associated with your project. You
-- need this information in order to grant the service account persmissions
-- for the Google Cloud Storage location where you put your model training
-- code for training the model with Google Cloud Machine Learning.
--
-- /See:/ <https://cloud.google.com/ml/ Google Cloud Machine Learning Reference> for @ml.projects.getConfig@.
module Network.Google.Resource.Ml.Projects.GetConfig
    (
    -- * REST Resource
      ProjectsGetConfigResource

    -- * Creating a Request
    , projectsGetConfig
    , ProjectsGetConfig

    -- * Request Lenses
    , pgcXgafv
    , pgcUploadProtocol
    , pgcPp
    , pgcAccessToken
    , pgcUploadType
    , pgcBearerToken
    , pgcName
    , pgcCallback
    ) where

import           Network.Google.MachineLearning.Types
import           Network.Google.Prelude

-- | A resource alias for @ml.projects.getConfig@ method which the
-- 'ProjectsGetConfig' request conforms to.
type ProjectsGetConfigResource =
     "v1beta1" :>
       CaptureMode "name" "getConfig" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GoogleCloudMlV1beta1__GetConfigResponse

-- | Get the service account information associated with your project. You
-- need this information in order to grant the service account persmissions
-- for the Google Cloud Storage location where you put your model training
-- code for training the model with Google Cloud Machine Learning.
--
-- /See:/ 'projectsGetConfig' smart constructor.
data ProjectsGetConfig = ProjectsGetConfig'
    { _pgcXgafv          :: !(Maybe Xgafv)
    , _pgcUploadProtocol :: !(Maybe Text)
    , _pgcPp             :: !Bool
    , _pgcAccessToken    :: !(Maybe Text)
    , _pgcUploadType     :: !(Maybe Text)
    , _pgcBearerToken    :: !(Maybe Text)
    , _pgcName           :: !Text
    , _pgcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGetConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgcXgafv'
--
-- * 'pgcUploadProtocol'
--
-- * 'pgcPp'
--
-- * 'pgcAccessToken'
--
-- * 'pgcUploadType'
--
-- * 'pgcBearerToken'
--
-- * 'pgcName'
--
-- * 'pgcCallback'
projectsGetConfig
    :: Text -- ^ 'pgcName'
    -> ProjectsGetConfig
projectsGetConfig pPgcName_ =
    ProjectsGetConfig'
    { _pgcXgafv = Nothing
    , _pgcUploadProtocol = Nothing
    , _pgcPp = True
    , _pgcAccessToken = Nothing
    , _pgcUploadType = Nothing
    , _pgcBearerToken = Nothing
    , _pgcName = pPgcName_
    , _pgcCallback = Nothing
    }

-- | V1 error format.
pgcXgafv :: Lens' ProjectsGetConfig (Maybe Xgafv)
pgcXgafv = lens _pgcXgafv (\ s a -> s{_pgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgcUploadProtocol :: Lens' ProjectsGetConfig (Maybe Text)
pgcUploadProtocol
  = lens _pgcUploadProtocol
      (\ s a -> s{_pgcUploadProtocol = a})

-- | Pretty-print response.
pgcPp :: Lens' ProjectsGetConfig Bool
pgcPp = lens _pgcPp (\ s a -> s{_pgcPp = a})

-- | OAuth access token.
pgcAccessToken :: Lens' ProjectsGetConfig (Maybe Text)
pgcAccessToken
  = lens _pgcAccessToken
      (\ s a -> s{_pgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgcUploadType :: Lens' ProjectsGetConfig (Maybe Text)
pgcUploadType
  = lens _pgcUploadType
      (\ s a -> s{_pgcUploadType = a})

-- | OAuth bearer token.
pgcBearerToken :: Lens' ProjectsGetConfig (Maybe Text)
pgcBearerToken
  = lens _pgcBearerToken
      (\ s a -> s{_pgcBearerToken = a})

-- | Required. The project name. Authorization: requires \`Viewer\` role on
-- the specified project.
pgcName :: Lens' ProjectsGetConfig Text
pgcName = lens _pgcName (\ s a -> s{_pgcName = a})

-- | JSONP
pgcCallback :: Lens' ProjectsGetConfig (Maybe Text)
pgcCallback
  = lens _pgcCallback (\ s a -> s{_pgcCallback = a})

instance GoogleRequest ProjectsGetConfig where
        type Rs ProjectsGetConfig =
             GoogleCloudMlV1beta1__GetConfigResponse
        type Scopes ProjectsGetConfig =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGetConfig'{..}
          = go _pgcName _pgcXgafv _pgcUploadProtocol
              (Just _pgcPp)
              _pgcAccessToken
              _pgcUploadType
              _pgcBearerToken
              _pgcCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetConfigResource)
                      mempty
