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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Validate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates the specified agent and creates or updates validation results.
-- The agent in draft version is validated. Please call this API after the
-- training is completed to get the complete validation results.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.validate@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Validate
    (
    -- * REST Resource
      ProjectsLocationsAgentsValidateResource

    -- * Creating a Request
    , projectsLocationsAgentsValidate
    , ProjectsLocationsAgentsValidate

    -- * Request Lenses
    , plavXgafv
    , plavUploadProtocol
    , plavAccessToken
    , plavUploadType
    , plavPayload
    , plavName
    , plavCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.validate@ method which the
-- 'ProjectsLocationsAgentsValidate' request conforms to.
type ProjectsLocationsAgentsValidateResource =
     "v3" :>
       CaptureMode "name" "validate" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3ValidateAgentRequest
                       :>
                       Post '[JSON]
                         GoogleCloudDialogflowCxV3AgentValidationResult

-- | Validates the specified agent and creates or updates validation results.
-- The agent in draft version is validated. Please call this API after the
-- training is completed to get the complete validation results.
--
-- /See:/ 'projectsLocationsAgentsValidate' smart constructor.
data ProjectsLocationsAgentsValidate =
  ProjectsLocationsAgentsValidate'
    { _plavXgafv :: !(Maybe Xgafv)
    , _plavUploadProtocol :: !(Maybe Text)
    , _plavAccessToken :: !(Maybe Text)
    , _plavUploadType :: !(Maybe Text)
    , _plavPayload :: !GoogleCloudDialogflowCxV3ValidateAgentRequest
    , _plavName :: !Text
    , _plavCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plavXgafv'
--
-- * 'plavUploadProtocol'
--
-- * 'plavAccessToken'
--
-- * 'plavUploadType'
--
-- * 'plavPayload'
--
-- * 'plavName'
--
-- * 'plavCallback'
projectsLocationsAgentsValidate
    :: GoogleCloudDialogflowCxV3ValidateAgentRequest -- ^ 'plavPayload'
    -> Text -- ^ 'plavName'
    -> ProjectsLocationsAgentsValidate
projectsLocationsAgentsValidate pPlavPayload_ pPlavName_ =
  ProjectsLocationsAgentsValidate'
    { _plavXgafv = Nothing
    , _plavUploadProtocol = Nothing
    , _plavAccessToken = Nothing
    , _plavUploadType = Nothing
    , _plavPayload = pPlavPayload_
    , _plavName = pPlavName_
    , _plavCallback = Nothing
    }


-- | V1 error format.
plavXgafv :: Lens' ProjectsLocationsAgentsValidate (Maybe Xgafv)
plavXgafv
  = lens _plavXgafv (\ s a -> s{_plavXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plavUploadProtocol :: Lens' ProjectsLocationsAgentsValidate (Maybe Text)
plavUploadProtocol
  = lens _plavUploadProtocol
      (\ s a -> s{_plavUploadProtocol = a})

-- | OAuth access token.
plavAccessToken :: Lens' ProjectsLocationsAgentsValidate (Maybe Text)
plavAccessToken
  = lens _plavAccessToken
      (\ s a -> s{_plavAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plavUploadType :: Lens' ProjectsLocationsAgentsValidate (Maybe Text)
plavUploadType
  = lens _plavUploadType
      (\ s a -> s{_plavUploadType = a})

-- | Multipart request metadata.
plavPayload :: Lens' ProjectsLocationsAgentsValidate GoogleCloudDialogflowCxV3ValidateAgentRequest
plavPayload
  = lens _plavPayload (\ s a -> s{_plavPayload = a})

-- | Required. The agent to validate. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plavName :: Lens' ProjectsLocationsAgentsValidate Text
plavName = lens _plavName (\ s a -> s{_plavName = a})

-- | JSONP
plavCallback :: Lens' ProjectsLocationsAgentsValidate (Maybe Text)
plavCallback
  = lens _plavCallback (\ s a -> s{_plavCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsValidate
         where
        type Rs ProjectsLocationsAgentsValidate =
             GoogleCloudDialogflowCxV3AgentValidationResult
        type Scopes ProjectsLocationsAgentsValidate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsValidate'{..}
          = go _plavName _plavXgafv _plavUploadProtocol
              _plavAccessToken
              _plavUploadType
              _plavCallback
              (Just AltJSON)
              _plavPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsValidateResource)
                      mempty
