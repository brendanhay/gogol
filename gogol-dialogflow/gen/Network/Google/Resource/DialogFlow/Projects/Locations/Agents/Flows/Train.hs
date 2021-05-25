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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Train
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Trains the specified flow. Note that only the flow in \'draft\'
-- environment is trained. Note: You should always train a flow prior to
-- sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.train@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Train
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsTrainResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsTrain
    , ProjectsLocationsAgentsFlowsTrain

    -- * Request Lenses
    , plaftXgafv
    , plaftUploadProtocol
    , plaftAccessToken
    , plaftUploadType
    , plaftPayload
    , plaftName
    , plaftCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.train@ method which the
-- 'ProjectsLocationsAgentsFlowsTrain' request conforms to.
type ProjectsLocationsAgentsFlowsTrainResource =
     "v3" :>
       CaptureMode "name" "train" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3TrainFlowRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Trains the specified flow. Note that only the flow in \'draft\'
-- environment is trained. Note: You should always train a flow prior to
-- sending it queries. See the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsTrain' smart constructor.
data ProjectsLocationsAgentsFlowsTrain =
  ProjectsLocationsAgentsFlowsTrain'
    { _plaftXgafv :: !(Maybe Xgafv)
    , _plaftUploadProtocol :: !(Maybe Text)
    , _plaftAccessToken :: !(Maybe Text)
    , _plaftUploadType :: !(Maybe Text)
    , _plaftPayload :: !GoogleCloudDialogflowCxV3TrainFlowRequest
    , _plaftName :: !Text
    , _plaftCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsTrain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaftXgafv'
--
-- * 'plaftUploadProtocol'
--
-- * 'plaftAccessToken'
--
-- * 'plaftUploadType'
--
-- * 'plaftPayload'
--
-- * 'plaftName'
--
-- * 'plaftCallback'
projectsLocationsAgentsFlowsTrain
    :: GoogleCloudDialogflowCxV3TrainFlowRequest -- ^ 'plaftPayload'
    -> Text -- ^ 'plaftName'
    -> ProjectsLocationsAgentsFlowsTrain
projectsLocationsAgentsFlowsTrain pPlaftPayload_ pPlaftName_ =
  ProjectsLocationsAgentsFlowsTrain'
    { _plaftXgafv = Nothing
    , _plaftUploadProtocol = Nothing
    , _plaftAccessToken = Nothing
    , _plaftUploadType = Nothing
    , _plaftPayload = pPlaftPayload_
    , _plaftName = pPlaftName_
    , _plaftCallback = Nothing
    }


-- | V1 error format.
plaftXgafv :: Lens' ProjectsLocationsAgentsFlowsTrain (Maybe Xgafv)
plaftXgafv
  = lens _plaftXgafv (\ s a -> s{_plaftXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaftUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsTrain (Maybe Text)
plaftUploadProtocol
  = lens _plaftUploadProtocol
      (\ s a -> s{_plaftUploadProtocol = a})

-- | OAuth access token.
plaftAccessToken :: Lens' ProjectsLocationsAgentsFlowsTrain (Maybe Text)
plaftAccessToken
  = lens _plaftAccessToken
      (\ s a -> s{_plaftAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaftUploadType :: Lens' ProjectsLocationsAgentsFlowsTrain (Maybe Text)
plaftUploadType
  = lens _plaftUploadType
      (\ s a -> s{_plaftUploadType = a})

-- | Multipart request metadata.
plaftPayload :: Lens' ProjectsLocationsAgentsFlowsTrain GoogleCloudDialogflowCxV3TrainFlowRequest
plaftPayload
  = lens _plaftPayload (\ s a -> s{_plaftPayload = a})

-- | Required. The flow to train. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plaftName :: Lens' ProjectsLocationsAgentsFlowsTrain Text
plaftName
  = lens _plaftName (\ s a -> s{_plaftName = a})

-- | JSONP
plaftCallback :: Lens' ProjectsLocationsAgentsFlowsTrain (Maybe Text)
plaftCallback
  = lens _plaftCallback
      (\ s a -> s{_plaftCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsTrain
         where
        type Rs ProjectsLocationsAgentsFlowsTrain =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsFlowsTrain =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsFlowsTrain'{..}
          = go _plaftName _plaftXgafv _plaftUploadProtocol
              _plaftAccessToken
              _plaftUploadType
              _plaftCallback
              (Just AltJSON)
              _plaftPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsTrainResource)
                      mempty
