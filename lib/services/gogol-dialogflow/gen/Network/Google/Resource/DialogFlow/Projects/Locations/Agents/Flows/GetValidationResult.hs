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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.GetValidationResult
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest flow validation result. Flow validation is performed
-- when ValidateFlow is called.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.getValidationResult@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.GetValidationResult
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsGetValidationResultResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsGetValidationResult
    , ProjectsLocationsAgentsFlowsGetValidationResult

    -- * Request Lenses
    , plafgvrXgafv
    , plafgvrLanguageCode
    , plafgvrUploadProtocol
    , plafgvrAccessToken
    , plafgvrUploadType
    , plafgvrName
    , plafgvrCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.getValidationResult@ method which the
-- 'ProjectsLocationsAgentsFlowsGetValidationResult' request conforms to.
type ProjectsLocationsAgentsFlowsGetValidationResultResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON]
                         GoogleCloudDialogflowCxV3FlowValidationResult

-- | Gets the latest flow validation result. Flow validation is performed
-- when ValidateFlow is called.
--
-- /See:/ 'projectsLocationsAgentsFlowsGetValidationResult' smart constructor.
data ProjectsLocationsAgentsFlowsGetValidationResult =
  ProjectsLocationsAgentsFlowsGetValidationResult'
    { _plafgvrXgafv :: !(Maybe Xgafv)
    , _plafgvrLanguageCode :: !(Maybe Text)
    , _plafgvrUploadProtocol :: !(Maybe Text)
    , _plafgvrAccessToken :: !(Maybe Text)
    , _plafgvrUploadType :: !(Maybe Text)
    , _plafgvrName :: !Text
    , _plafgvrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsGetValidationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafgvrXgafv'
--
-- * 'plafgvrLanguageCode'
--
-- * 'plafgvrUploadProtocol'
--
-- * 'plafgvrAccessToken'
--
-- * 'plafgvrUploadType'
--
-- * 'plafgvrName'
--
-- * 'plafgvrCallback'
projectsLocationsAgentsFlowsGetValidationResult
    :: Text -- ^ 'plafgvrName'
    -> ProjectsLocationsAgentsFlowsGetValidationResult
projectsLocationsAgentsFlowsGetValidationResult pPlafgvrName_ =
  ProjectsLocationsAgentsFlowsGetValidationResult'
    { _plafgvrXgafv = Nothing
    , _plafgvrLanguageCode = Nothing
    , _plafgvrUploadProtocol = Nothing
    , _plafgvrAccessToken = Nothing
    , _plafgvrUploadType = Nothing
    , _plafgvrName = pPlafgvrName_
    , _plafgvrCallback = Nothing
    }


-- | V1 error format.
plafgvrXgafv :: Lens' ProjectsLocationsAgentsFlowsGetValidationResult (Maybe Xgafv)
plafgvrXgafv
  = lens _plafgvrXgafv (\ s a -> s{_plafgvrXgafv = a})

-- | If not specified, the agent\'s default language is used.
plafgvrLanguageCode :: Lens' ProjectsLocationsAgentsFlowsGetValidationResult (Maybe Text)
plafgvrLanguageCode
  = lens _plafgvrLanguageCode
      (\ s a -> s{_plafgvrLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafgvrUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsGetValidationResult (Maybe Text)
plafgvrUploadProtocol
  = lens _plafgvrUploadProtocol
      (\ s a -> s{_plafgvrUploadProtocol = a})

-- | OAuth access token.
plafgvrAccessToken :: Lens' ProjectsLocationsAgentsFlowsGetValidationResult (Maybe Text)
plafgvrAccessToken
  = lens _plafgvrAccessToken
      (\ s a -> s{_plafgvrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafgvrUploadType :: Lens' ProjectsLocationsAgentsFlowsGetValidationResult (Maybe Text)
plafgvrUploadType
  = lens _plafgvrUploadType
      (\ s a -> s{_plafgvrUploadType = a})

-- | Required. The flow name. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/validationResult\`.
plafgvrName :: Lens' ProjectsLocationsAgentsFlowsGetValidationResult Text
plafgvrName
  = lens _plafgvrName (\ s a -> s{_plafgvrName = a})

-- | JSONP
plafgvrCallback :: Lens' ProjectsLocationsAgentsFlowsGetValidationResult (Maybe Text)
plafgvrCallback
  = lens _plafgvrCallback
      (\ s a -> s{_plafgvrCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsGetValidationResult
         where
        type Rs
               ProjectsLocationsAgentsFlowsGetValidationResult
             = GoogleCloudDialogflowCxV3FlowValidationResult
        type Scopes
               ProjectsLocationsAgentsFlowsGetValidationResult
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsGetValidationResult'{..}
          = go _plafgvrName _plafgvrXgafv _plafgvrLanguageCode
              _plafgvrUploadProtocol
              _plafgvrAccessToken
              _plafgvrUploadType
              _plafgvrCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsGetValidationResultResource)
                      mempty
