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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Validate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates the specified flow and creates or updates validation results.
-- Please call this API after the training is completed to get the complete
-- validation results.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.validate@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Validate
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsValidateResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsValidate
    , ProjectsLocationsAgentsFlowsValidate

    -- * Request Lenses
    , plafvXgafv
    , plafvUploadProtocol
    , plafvAccessToken
    , plafvUploadType
    , plafvPayload
    , plafvName
    , plafvCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.validate@ method which the
-- 'ProjectsLocationsAgentsFlowsValidate' request conforms to.
type ProjectsLocationsAgentsFlowsValidateResource =
     "v3" :>
       CaptureMode "name" "validate" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3ValidateFlowRequest
                       :>
                       Post '[JSON]
                         GoogleCloudDialogflowCxV3FlowValidationResult

-- | Validates the specified flow and creates or updates validation results.
-- Please call this API after the training is completed to get the complete
-- validation results.
--
-- /See:/ 'projectsLocationsAgentsFlowsValidate' smart constructor.
data ProjectsLocationsAgentsFlowsValidate =
  ProjectsLocationsAgentsFlowsValidate'
    { _plafvXgafv :: !(Maybe Xgafv)
    , _plafvUploadProtocol :: !(Maybe Text)
    , _plafvAccessToken :: !(Maybe Text)
    , _plafvUploadType :: !(Maybe Text)
    , _plafvPayload :: !GoogleCloudDialogflowCxV3ValidateFlowRequest
    , _plafvName :: !Text
    , _plafvCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafvXgafv'
--
-- * 'plafvUploadProtocol'
--
-- * 'plafvAccessToken'
--
-- * 'plafvUploadType'
--
-- * 'plafvPayload'
--
-- * 'plafvName'
--
-- * 'plafvCallback'
projectsLocationsAgentsFlowsValidate
    :: GoogleCloudDialogflowCxV3ValidateFlowRequest -- ^ 'plafvPayload'
    -> Text -- ^ 'plafvName'
    -> ProjectsLocationsAgentsFlowsValidate
projectsLocationsAgentsFlowsValidate pPlafvPayload_ pPlafvName_ =
  ProjectsLocationsAgentsFlowsValidate'
    { _plafvXgafv = Nothing
    , _plafvUploadProtocol = Nothing
    , _plafvAccessToken = Nothing
    , _plafvUploadType = Nothing
    , _plafvPayload = pPlafvPayload_
    , _plafvName = pPlafvName_
    , _plafvCallback = Nothing
    }


-- | V1 error format.
plafvXgafv :: Lens' ProjectsLocationsAgentsFlowsValidate (Maybe Xgafv)
plafvXgafv
  = lens _plafvXgafv (\ s a -> s{_plafvXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafvUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsValidate (Maybe Text)
plafvUploadProtocol
  = lens _plafvUploadProtocol
      (\ s a -> s{_plafvUploadProtocol = a})

-- | OAuth access token.
plafvAccessToken :: Lens' ProjectsLocationsAgentsFlowsValidate (Maybe Text)
plafvAccessToken
  = lens _plafvAccessToken
      (\ s a -> s{_plafvAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafvUploadType :: Lens' ProjectsLocationsAgentsFlowsValidate (Maybe Text)
plafvUploadType
  = lens _plafvUploadType
      (\ s a -> s{_plafvUploadType = a})

-- | Multipart request metadata.
plafvPayload :: Lens' ProjectsLocationsAgentsFlowsValidate GoogleCloudDialogflowCxV3ValidateFlowRequest
plafvPayload
  = lens _plafvPayload (\ s a -> s{_plafvPayload = a})

-- | Required. The flow to validate. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
plafvName :: Lens' ProjectsLocationsAgentsFlowsValidate Text
plafvName
  = lens _plafvName (\ s a -> s{_plafvName = a})

-- | JSONP
plafvCallback :: Lens' ProjectsLocationsAgentsFlowsValidate (Maybe Text)
plafvCallback
  = lens _plafvCallback
      (\ s a -> s{_plafvCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsValidate
         where
        type Rs ProjectsLocationsAgentsFlowsValidate =
             GoogleCloudDialogflowCxV3FlowValidationResult
        type Scopes ProjectsLocationsAgentsFlowsValidate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsValidate'{..}
          = go _plafvName _plafvXgafv _plafvUploadProtocol
              _plafvAccessToken
              _plafvUploadType
              _plafvCallback
              (Just AltJSON)
              _plafvPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsValidateResource)
                      mempty
