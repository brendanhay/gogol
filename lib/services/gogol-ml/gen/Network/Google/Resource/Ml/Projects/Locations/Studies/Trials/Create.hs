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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a user provided trial to a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.create@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Create
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsCreateResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsCreate
    , ProjectsLocationsStudiesTrialsCreate

    -- * Request Lenses
    , plstcParent
    , plstcXgafv
    , plstcUploadProtocol
    , plstcAccessToken
    , plstcUploadType
    , plstcPayload
    , plstcCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.create@ method which the
-- 'ProjectsLocationsStudiesTrialsCreate' request conforms to.
type ProjectsLocationsStudiesTrialsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "trials" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudMlV1__Trial :>
                         Post '[JSON] GoogleCloudMlV1__Trial

-- | Adds a user provided trial to a study.
--
-- /See:/ 'projectsLocationsStudiesTrialsCreate' smart constructor.
data ProjectsLocationsStudiesTrialsCreate =
  ProjectsLocationsStudiesTrialsCreate'
    { _plstcParent :: !Text
    , _plstcXgafv :: !(Maybe Xgafv)
    , _plstcUploadProtocol :: !(Maybe Text)
    , _plstcAccessToken :: !(Maybe Text)
    , _plstcUploadType :: !(Maybe Text)
    , _plstcPayload :: !GoogleCloudMlV1__Trial
    , _plstcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstcParent'
--
-- * 'plstcXgafv'
--
-- * 'plstcUploadProtocol'
--
-- * 'plstcAccessToken'
--
-- * 'plstcUploadType'
--
-- * 'plstcPayload'
--
-- * 'plstcCallback'
projectsLocationsStudiesTrialsCreate
    :: Text -- ^ 'plstcParent'
    -> GoogleCloudMlV1__Trial -- ^ 'plstcPayload'
    -> ProjectsLocationsStudiesTrialsCreate
projectsLocationsStudiesTrialsCreate pPlstcParent_ pPlstcPayload_ =
  ProjectsLocationsStudiesTrialsCreate'
    { _plstcParent = pPlstcParent_
    , _plstcXgafv = Nothing
    , _plstcUploadProtocol = Nothing
    , _plstcAccessToken = Nothing
    , _plstcUploadType = Nothing
    , _plstcPayload = pPlstcPayload_
    , _plstcCallback = Nothing
    }


-- | Required. The name of the study that the trial belongs to.
plstcParent :: Lens' ProjectsLocationsStudiesTrialsCreate Text
plstcParent
  = lens _plstcParent (\ s a -> s{_plstcParent = a})

-- | V1 error format.
plstcXgafv :: Lens' ProjectsLocationsStudiesTrialsCreate (Maybe Xgafv)
plstcXgafv
  = lens _plstcXgafv (\ s a -> s{_plstcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstcUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsCreate (Maybe Text)
plstcUploadProtocol
  = lens _plstcUploadProtocol
      (\ s a -> s{_plstcUploadProtocol = a})

-- | OAuth access token.
plstcAccessToken :: Lens' ProjectsLocationsStudiesTrialsCreate (Maybe Text)
plstcAccessToken
  = lens _plstcAccessToken
      (\ s a -> s{_plstcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstcUploadType :: Lens' ProjectsLocationsStudiesTrialsCreate (Maybe Text)
plstcUploadType
  = lens _plstcUploadType
      (\ s a -> s{_plstcUploadType = a})

-- | Multipart request metadata.
plstcPayload :: Lens' ProjectsLocationsStudiesTrialsCreate GoogleCloudMlV1__Trial
plstcPayload
  = lens _plstcPayload (\ s a -> s{_plstcPayload = a})

-- | JSONP
plstcCallback :: Lens' ProjectsLocationsStudiesTrialsCreate (Maybe Text)
plstcCallback
  = lens _plstcCallback
      (\ s a -> s{_plstcCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsCreate
         where
        type Rs ProjectsLocationsStudiesTrialsCreate =
             GoogleCloudMlV1__Trial
        type Scopes ProjectsLocationsStudiesTrialsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStudiesTrialsCreate'{..}
          = go _plstcParent _plstcXgafv _plstcUploadProtocol
              _plstcAccessToken
              _plstcUploadType
              _plstcCallback
              (Just AltJSON)
              _plstcPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesTrialsCreateResource)
                      mempty
