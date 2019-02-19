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
-- Module      : Network.Google.Resource.Speech.Projects.Operations.ManualRecognitionTasks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ <https://cloud.google.com/speech-to-text/docs/quickstart-protocol Cloud Speech-to-Text API Reference> for @speech.projects.operations.manualRecognitionTasks.get@.
module Network.Google.Resource.Speech.Projects.Operations.ManualRecognitionTasks.Get
    (
    -- * REST Resource
      ProjectsOperationsManualRecognitionTasksGetResource

    -- * Creating a Request
    , projectsOperationsManualRecognitionTasksGet
    , ProjectsOperationsManualRecognitionTasksGet

    -- * Request Lenses
    , pomrtgXgafv
    , pomrtgUploadProtocol
    , pomrtgAccessToken
    , pomrtgUploadType
    , pomrtgName
    , pomrtgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Speech.Types

-- | A resource alias for @speech.projects.operations.manualRecognitionTasks.get@ method which the
-- 'ProjectsOperationsManualRecognitionTasksGet' request conforms to.
type ProjectsOperationsManualRecognitionTasksGetResource
     =
     "v1p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
--
-- /See:/ 'projectsOperationsManualRecognitionTasksGet' smart constructor.
data ProjectsOperationsManualRecognitionTasksGet =
  ProjectsOperationsManualRecognitionTasksGet'
    { _pomrtgXgafv          :: !(Maybe Xgafv)
    , _pomrtgUploadProtocol :: !(Maybe Text)
    , _pomrtgAccessToken    :: !(Maybe Text)
    , _pomrtgUploadType     :: !(Maybe Text)
    , _pomrtgName           :: !Text
    , _pomrtgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsOperationsManualRecognitionTasksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pomrtgXgafv'
--
-- * 'pomrtgUploadProtocol'
--
-- * 'pomrtgAccessToken'
--
-- * 'pomrtgUploadType'
--
-- * 'pomrtgName'
--
-- * 'pomrtgCallback'
projectsOperationsManualRecognitionTasksGet
    :: Text -- ^ 'pomrtgName'
    -> ProjectsOperationsManualRecognitionTasksGet
projectsOperationsManualRecognitionTasksGet pPomrtgName_ =
  ProjectsOperationsManualRecognitionTasksGet'
    { _pomrtgXgafv = Nothing
    , _pomrtgUploadProtocol = Nothing
    , _pomrtgAccessToken = Nothing
    , _pomrtgUploadType = Nothing
    , _pomrtgName = pPomrtgName_
    , _pomrtgCallback = Nothing
    }

-- | V1 error format.
pomrtgXgafv :: Lens' ProjectsOperationsManualRecognitionTasksGet (Maybe Xgafv)
pomrtgXgafv
  = lens _pomrtgXgafv (\ s a -> s{_pomrtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pomrtgUploadProtocol :: Lens' ProjectsOperationsManualRecognitionTasksGet (Maybe Text)
pomrtgUploadProtocol
  = lens _pomrtgUploadProtocol
      (\ s a -> s{_pomrtgUploadProtocol = a})

-- | OAuth access token.
pomrtgAccessToken :: Lens' ProjectsOperationsManualRecognitionTasksGet (Maybe Text)
pomrtgAccessToken
  = lens _pomrtgAccessToken
      (\ s a -> s{_pomrtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pomrtgUploadType :: Lens' ProjectsOperationsManualRecognitionTasksGet (Maybe Text)
pomrtgUploadType
  = lens _pomrtgUploadType
      (\ s a -> s{_pomrtgUploadType = a})

-- | The name of the operation resource.
pomrtgName :: Lens' ProjectsOperationsManualRecognitionTasksGet Text
pomrtgName
  = lens _pomrtgName (\ s a -> s{_pomrtgName = a})

-- | JSONP
pomrtgCallback :: Lens' ProjectsOperationsManualRecognitionTasksGet (Maybe Text)
pomrtgCallback
  = lens _pomrtgCallback
      (\ s a -> s{_pomrtgCallback = a})

instance GoogleRequest
           ProjectsOperationsManualRecognitionTasksGet
         where
        type Rs ProjectsOperationsManualRecognitionTasksGet =
             Operation
        type Scopes
               ProjectsOperationsManualRecognitionTasksGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsOperationsManualRecognitionTasksGet'{..}
          = go _pomrtgName _pomrtgXgafv _pomrtgUploadProtocol
              _pomrtgAccessToken
              _pomrtgUploadType
              _pomrtgCallback
              (Just AltJSON)
              speechService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsOperationsManualRecognitionTasksGetResource)
                      mempty
