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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.GetValidationResult
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest agent validation result. Agent validation is performed
-- when ValidateAgent is called.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.getValidationResult@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.GetValidationResult
    (
    -- * REST Resource
      ProjectsLocationsAgentsGetValidationResultResource

    -- * Creating a Request
    , projectsLocationsAgentsGetValidationResult
    , ProjectsLocationsAgentsGetValidationResult

    -- * Request Lenses
    , plagvrXgafv
    , plagvrLanguageCode
    , plagvrUploadProtocol
    , plagvrAccessToken
    , plagvrUploadType
    , plagvrName
    , plagvrCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.getValidationResult@ method which the
-- 'ProjectsLocationsAgentsGetValidationResult' request conforms to.
type ProjectsLocationsAgentsGetValidationResultResource
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
                         GoogleCloudDialogflowCxV3AgentValidationResult

-- | Gets the latest agent validation result. Agent validation is performed
-- when ValidateAgent is called.
--
-- /See:/ 'projectsLocationsAgentsGetValidationResult' smart constructor.
data ProjectsLocationsAgentsGetValidationResult =
  ProjectsLocationsAgentsGetValidationResult'
    { _plagvrXgafv :: !(Maybe Xgafv)
    , _plagvrLanguageCode :: !(Maybe Text)
    , _plagvrUploadProtocol :: !(Maybe Text)
    , _plagvrAccessToken :: !(Maybe Text)
    , _plagvrUploadType :: !(Maybe Text)
    , _plagvrName :: !Text
    , _plagvrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsGetValidationResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plagvrXgafv'
--
-- * 'plagvrLanguageCode'
--
-- * 'plagvrUploadProtocol'
--
-- * 'plagvrAccessToken'
--
-- * 'plagvrUploadType'
--
-- * 'plagvrName'
--
-- * 'plagvrCallback'
projectsLocationsAgentsGetValidationResult
    :: Text -- ^ 'plagvrName'
    -> ProjectsLocationsAgentsGetValidationResult
projectsLocationsAgentsGetValidationResult pPlagvrName_ =
  ProjectsLocationsAgentsGetValidationResult'
    { _plagvrXgafv = Nothing
    , _plagvrLanguageCode = Nothing
    , _plagvrUploadProtocol = Nothing
    , _plagvrAccessToken = Nothing
    , _plagvrUploadType = Nothing
    , _plagvrName = pPlagvrName_
    , _plagvrCallback = Nothing
    }


-- | V1 error format.
plagvrXgafv :: Lens' ProjectsLocationsAgentsGetValidationResult (Maybe Xgafv)
plagvrXgafv
  = lens _plagvrXgafv (\ s a -> s{_plagvrXgafv = a})

-- | If not specified, the agent\'s default language is used.
plagvrLanguageCode :: Lens' ProjectsLocationsAgentsGetValidationResult (Maybe Text)
plagvrLanguageCode
  = lens _plagvrLanguageCode
      (\ s a -> s{_plagvrLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plagvrUploadProtocol :: Lens' ProjectsLocationsAgentsGetValidationResult (Maybe Text)
plagvrUploadProtocol
  = lens _plagvrUploadProtocol
      (\ s a -> s{_plagvrUploadProtocol = a})

-- | OAuth access token.
plagvrAccessToken :: Lens' ProjectsLocationsAgentsGetValidationResult (Maybe Text)
plagvrAccessToken
  = lens _plagvrAccessToken
      (\ s a -> s{_plagvrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plagvrUploadType :: Lens' ProjectsLocationsAgentsGetValidationResult (Maybe Text)
plagvrUploadType
  = lens _plagvrUploadType
      (\ s a -> s{_plagvrUploadType = a})

-- | Required. The agent name. Format:
-- \`projects\/\/locations\/\/agents\/\/validationResult\`.
plagvrName :: Lens' ProjectsLocationsAgentsGetValidationResult Text
plagvrName
  = lens _plagvrName (\ s a -> s{_plagvrName = a})

-- | JSONP
plagvrCallback :: Lens' ProjectsLocationsAgentsGetValidationResult (Maybe Text)
plagvrCallback
  = lens _plagvrCallback
      (\ s a -> s{_plagvrCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsGetValidationResult
         where
        type Rs ProjectsLocationsAgentsGetValidationResult =
             GoogleCloudDialogflowCxV3AgentValidationResult
        type Scopes
               ProjectsLocationsAgentsGetValidationResult
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsGetValidationResult'{..}
          = go _plagvrName _plagvrXgafv _plagvrLanguageCode
              _plagvrUploadProtocol
              _plagvrAccessToken
              _plagvrUploadType
              _plagvrCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsGetValidationResultResource)
                      mempty
