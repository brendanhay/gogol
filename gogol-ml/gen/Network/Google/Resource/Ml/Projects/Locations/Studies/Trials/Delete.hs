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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a trial.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.delete@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Delete
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsDeleteResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsDelete
    , ProjectsLocationsStudiesTrialsDelete

    -- * Request Lenses
    , plstdXgafv
    , plstdUploadProtocol
    , plstdAccessToken
    , plstdUploadType
    , plstdName
    , plstdCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.delete@ method which the
-- 'ProjectsLocationsStudiesTrialsDelete' request conforms to.
type ProjectsLocationsStudiesTrialsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobuf__Empty

-- | Deletes a trial.
--
-- /See:/ 'projectsLocationsStudiesTrialsDelete' smart constructor.
data ProjectsLocationsStudiesTrialsDelete =
  ProjectsLocationsStudiesTrialsDelete'
    { _plstdXgafv :: !(Maybe Xgafv)
    , _plstdUploadProtocol :: !(Maybe Text)
    , _plstdAccessToken :: !(Maybe Text)
    , _plstdUploadType :: !(Maybe Text)
    , _plstdName :: !Text
    , _plstdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstdXgafv'
--
-- * 'plstdUploadProtocol'
--
-- * 'plstdAccessToken'
--
-- * 'plstdUploadType'
--
-- * 'plstdName'
--
-- * 'plstdCallback'
projectsLocationsStudiesTrialsDelete
    :: Text -- ^ 'plstdName'
    -> ProjectsLocationsStudiesTrialsDelete
projectsLocationsStudiesTrialsDelete pPlstdName_ =
  ProjectsLocationsStudiesTrialsDelete'
    { _plstdXgafv = Nothing
    , _plstdUploadProtocol = Nothing
    , _plstdAccessToken = Nothing
    , _plstdUploadType = Nothing
    , _plstdName = pPlstdName_
    , _plstdCallback = Nothing
    }


-- | V1 error format.
plstdXgafv :: Lens' ProjectsLocationsStudiesTrialsDelete (Maybe Xgafv)
plstdXgafv
  = lens _plstdXgafv (\ s a -> s{_plstdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstdUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsDelete (Maybe Text)
plstdUploadProtocol
  = lens _plstdUploadProtocol
      (\ s a -> s{_plstdUploadProtocol = a})

-- | OAuth access token.
plstdAccessToken :: Lens' ProjectsLocationsStudiesTrialsDelete (Maybe Text)
plstdAccessToken
  = lens _plstdAccessToken
      (\ s a -> s{_plstdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstdUploadType :: Lens' ProjectsLocationsStudiesTrialsDelete (Maybe Text)
plstdUploadType
  = lens _plstdUploadType
      (\ s a -> s{_plstdUploadType = a})

-- | Required. The trial name.
plstdName :: Lens' ProjectsLocationsStudiesTrialsDelete Text
plstdName
  = lens _plstdName (\ s a -> s{_plstdName = a})

-- | JSONP
plstdCallback :: Lens' ProjectsLocationsStudiesTrialsDelete (Maybe Text)
plstdCallback
  = lens _plstdCallback
      (\ s a -> s{_plstdCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsDelete
         where
        type Rs ProjectsLocationsStudiesTrialsDelete =
             GoogleProtobuf__Empty
        type Scopes ProjectsLocationsStudiesTrialsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStudiesTrialsDelete'{..}
          = go _plstdName _plstdXgafv _plstdUploadProtocol
              _plstdAccessToken
              _plstdUploadType
              _plstdCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesTrialsDeleteResource)
                      mempty
