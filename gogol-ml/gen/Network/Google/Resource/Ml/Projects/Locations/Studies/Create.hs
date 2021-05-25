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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.create@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Create
    (
    -- * REST Resource
      ProjectsLocationsStudiesCreateResource

    -- * Creating a Request
    , projectsLocationsStudiesCreate
    , ProjectsLocationsStudiesCreate

    -- * Request Lenses
    , plscParent
    , plscXgafv
    , plscStudyId
    , plscUploadProtocol
    , plscAccessToken
    , plscUploadType
    , plscPayload
    , plscCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.create@ method which the
-- 'ProjectsLocationsStudiesCreate' request conforms to.
type ProjectsLocationsStudiesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "studies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "studyId" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GoogleCloudMlV1__Study :>
                           Post '[JSON] GoogleCloudMlV1__Study

-- | Creates a study.
--
-- /See:/ 'projectsLocationsStudiesCreate' smart constructor.
data ProjectsLocationsStudiesCreate =
  ProjectsLocationsStudiesCreate'
    { _plscParent :: !Text
    , _plscXgafv :: !(Maybe Xgafv)
    , _plscStudyId :: !(Maybe Text)
    , _plscUploadProtocol :: !(Maybe Text)
    , _plscAccessToken :: !(Maybe Text)
    , _plscUploadType :: !(Maybe Text)
    , _plscPayload :: !GoogleCloudMlV1__Study
    , _plscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plscParent'
--
-- * 'plscXgafv'
--
-- * 'plscStudyId'
--
-- * 'plscUploadProtocol'
--
-- * 'plscAccessToken'
--
-- * 'plscUploadType'
--
-- * 'plscPayload'
--
-- * 'plscCallback'
projectsLocationsStudiesCreate
    :: Text -- ^ 'plscParent'
    -> GoogleCloudMlV1__Study -- ^ 'plscPayload'
    -> ProjectsLocationsStudiesCreate
projectsLocationsStudiesCreate pPlscParent_ pPlscPayload_ =
  ProjectsLocationsStudiesCreate'
    { _plscParent = pPlscParent_
    , _plscXgafv = Nothing
    , _plscStudyId = Nothing
    , _plscUploadProtocol = Nothing
    , _plscAccessToken = Nothing
    , _plscUploadType = Nothing
    , _plscPayload = pPlscPayload_
    , _plscCallback = Nothing
    }


-- | Required. The project and location that the study belongs to. Format:
-- projects\/{project}\/locations\/{location}
plscParent :: Lens' ProjectsLocationsStudiesCreate Text
plscParent
  = lens _plscParent (\ s a -> s{_plscParent = a})

-- | V1 error format.
plscXgafv :: Lens' ProjectsLocationsStudiesCreate (Maybe Xgafv)
plscXgafv
  = lens _plscXgafv (\ s a -> s{_plscXgafv = a})

-- | Required. The ID to use for the study, which will become the final
-- component of the study\'s resource name.
plscStudyId :: Lens' ProjectsLocationsStudiesCreate (Maybe Text)
plscStudyId
  = lens _plscStudyId (\ s a -> s{_plscStudyId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plscUploadProtocol :: Lens' ProjectsLocationsStudiesCreate (Maybe Text)
plscUploadProtocol
  = lens _plscUploadProtocol
      (\ s a -> s{_plscUploadProtocol = a})

-- | OAuth access token.
plscAccessToken :: Lens' ProjectsLocationsStudiesCreate (Maybe Text)
plscAccessToken
  = lens _plscAccessToken
      (\ s a -> s{_plscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plscUploadType :: Lens' ProjectsLocationsStudiesCreate (Maybe Text)
plscUploadType
  = lens _plscUploadType
      (\ s a -> s{_plscUploadType = a})

-- | Multipart request metadata.
plscPayload :: Lens' ProjectsLocationsStudiesCreate GoogleCloudMlV1__Study
plscPayload
  = lens _plscPayload (\ s a -> s{_plscPayload = a})

-- | JSONP
plscCallback :: Lens' ProjectsLocationsStudiesCreate (Maybe Text)
plscCallback
  = lens _plscCallback (\ s a -> s{_plscCallback = a})

instance GoogleRequest ProjectsLocationsStudiesCreate
         where
        type Rs ProjectsLocationsStudiesCreate =
             GoogleCloudMlV1__Study
        type Scopes ProjectsLocationsStudiesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsStudiesCreate'{..}
          = go _plscParent _plscXgafv _plscStudyId
              _plscUploadProtocol
              _plscAccessToken
              _plscUploadType
              _plscCallback
              (Just AltJSON)
              _plscPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesCreateResource)
                      mempty
