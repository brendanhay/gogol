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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.delete@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Delete
    (
    -- * REST Resource
      ProjectsLocationsStudiesDeleteResource

    -- * Creating a Request
    , projectsLocationsStudiesDelete
    , ProjectsLocationsStudiesDelete

    -- * Request Lenses
    , plsdXgafv
    , plsdUploadProtocol
    , plsdAccessToken
    , plsdUploadType
    , plsdName
    , plsdCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.delete@ method which the
-- 'ProjectsLocationsStudiesDelete' request conforms to.
type ProjectsLocationsStudiesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobuf__Empty

-- | Deletes a study.
--
-- /See:/ 'projectsLocationsStudiesDelete' smart constructor.
data ProjectsLocationsStudiesDelete =
  ProjectsLocationsStudiesDelete'
    { _plsdXgafv :: !(Maybe Xgafv)
    , _plsdUploadProtocol :: !(Maybe Text)
    , _plsdAccessToken :: !(Maybe Text)
    , _plsdUploadType :: !(Maybe Text)
    , _plsdName :: !Text
    , _plsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsdXgafv'
--
-- * 'plsdUploadProtocol'
--
-- * 'plsdAccessToken'
--
-- * 'plsdUploadType'
--
-- * 'plsdName'
--
-- * 'plsdCallback'
projectsLocationsStudiesDelete
    :: Text -- ^ 'plsdName'
    -> ProjectsLocationsStudiesDelete
projectsLocationsStudiesDelete pPlsdName_ =
  ProjectsLocationsStudiesDelete'
    { _plsdXgafv = Nothing
    , _plsdUploadProtocol = Nothing
    , _plsdAccessToken = Nothing
    , _plsdUploadType = Nothing
    , _plsdName = pPlsdName_
    , _plsdCallback = Nothing
    }


-- | V1 error format.
plsdXgafv :: Lens' ProjectsLocationsStudiesDelete (Maybe Xgafv)
plsdXgafv
  = lens _plsdXgafv (\ s a -> s{_plsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsdUploadProtocol :: Lens' ProjectsLocationsStudiesDelete (Maybe Text)
plsdUploadProtocol
  = lens _plsdUploadProtocol
      (\ s a -> s{_plsdUploadProtocol = a})

-- | OAuth access token.
plsdAccessToken :: Lens' ProjectsLocationsStudiesDelete (Maybe Text)
plsdAccessToken
  = lens _plsdAccessToken
      (\ s a -> s{_plsdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsdUploadType :: Lens' ProjectsLocationsStudiesDelete (Maybe Text)
plsdUploadType
  = lens _plsdUploadType
      (\ s a -> s{_plsdUploadType = a})

-- | Required. The study name.
plsdName :: Lens' ProjectsLocationsStudiesDelete Text
plsdName = lens _plsdName (\ s a -> s{_plsdName = a})

-- | JSONP
plsdCallback :: Lens' ProjectsLocationsStudiesDelete (Maybe Text)
plsdCallback
  = lens _plsdCallback (\ s a -> s{_plsdCallback = a})

instance GoogleRequest ProjectsLocationsStudiesDelete
         where
        type Rs ProjectsLocationsStudiesDelete =
             GoogleProtobuf__Empty
        type Scopes ProjectsLocationsStudiesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsStudiesDelete'{..}
          = go _plsdName _plsdXgafv _plsdUploadProtocol
              _plsdAccessToken
              _plsdUploadType
              _plsdCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesDeleteResource)
                      mempty
