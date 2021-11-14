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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsPatch
    , ProjectsLocationsAgentsEnvironmentsPatch

    -- * Request Lenses
    , plaepXgafv
    , plaepUploadProtocol
    , plaepUpdateMask
    , plaepAccessToken
    , plaepUploadType
    , plaepPayload
    , plaepName
    , plaepCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.patch@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsPatch' request conforms to.
type ProjectsLocationsAgentsEnvironmentsPatchResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Environment
                         :> Patch '[JSON] GoogleLongrunningOperation

-- | Updates the specified Environment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsPatch' smart constructor.
data ProjectsLocationsAgentsEnvironmentsPatch =
  ProjectsLocationsAgentsEnvironmentsPatch'
    { _plaepXgafv :: !(Maybe Xgafv)
    , _plaepUploadProtocol :: !(Maybe Text)
    , _plaepUpdateMask :: !(Maybe GFieldMask)
    , _plaepAccessToken :: !(Maybe Text)
    , _plaepUploadType :: !(Maybe Text)
    , _plaepPayload :: !GoogleCloudDialogflowCxV3Environment
    , _plaepName :: !Text
    , _plaepCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaepXgafv'
--
-- * 'plaepUploadProtocol'
--
-- * 'plaepUpdateMask'
--
-- * 'plaepAccessToken'
--
-- * 'plaepUploadType'
--
-- * 'plaepPayload'
--
-- * 'plaepName'
--
-- * 'plaepCallback'
projectsLocationsAgentsEnvironmentsPatch
    :: GoogleCloudDialogflowCxV3Environment -- ^ 'plaepPayload'
    -> Text -- ^ 'plaepName'
    -> ProjectsLocationsAgentsEnvironmentsPatch
projectsLocationsAgentsEnvironmentsPatch pPlaepPayload_ pPlaepName_ =
  ProjectsLocationsAgentsEnvironmentsPatch'
    { _plaepXgafv = Nothing
    , _plaepUploadProtocol = Nothing
    , _plaepUpdateMask = Nothing
    , _plaepAccessToken = Nothing
    , _plaepUploadType = Nothing
    , _plaepPayload = pPlaepPayload_
    , _plaepName = pPlaepName_
    , _plaepCallback = Nothing
    }


-- | V1 error format.
plaepXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsPatch (Maybe Xgafv)
plaepXgafv
  = lens _plaepXgafv (\ s a -> s{_plaepXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaepUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsPatch (Maybe Text)
plaepUploadProtocol
  = lens _plaepUploadProtocol
      (\ s a -> s{_plaepUploadProtocol = a})

-- | Required. The mask to control which fields get updated.
plaepUpdateMask :: Lens' ProjectsLocationsAgentsEnvironmentsPatch (Maybe GFieldMask)
plaepUpdateMask
  = lens _plaepUpdateMask
      (\ s a -> s{_plaepUpdateMask = a})

-- | OAuth access token.
plaepAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsPatch (Maybe Text)
plaepAccessToken
  = lens _plaepAccessToken
      (\ s a -> s{_plaepAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaepUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsPatch (Maybe Text)
plaepUploadType
  = lens _plaepUploadType
      (\ s a -> s{_plaepUploadType = a})

-- | Multipart request metadata.
plaepPayload :: Lens' ProjectsLocationsAgentsEnvironmentsPatch GoogleCloudDialogflowCxV3Environment
plaepPayload
  = lens _plaepPayload (\ s a -> s{_plaepPayload = a})

-- | The name of the environment. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\`.
plaepName :: Lens' ProjectsLocationsAgentsEnvironmentsPatch Text
plaepName
  = lens _plaepName (\ s a -> s{_plaepName = a})

-- | JSONP
plaepCallback :: Lens' ProjectsLocationsAgentsEnvironmentsPatch (Maybe Text)
plaepCallback
  = lens _plaepCallback
      (\ s a -> s{_plaepCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsPatch
         where
        type Rs ProjectsLocationsAgentsEnvironmentsPatch =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsEnvironmentsPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsPatch'{..}
          = go _plaepName _plaepXgafv _plaepUploadProtocol
              _plaepUpdateMask
              _plaepAccessToken
              _plaepUploadType
              _plaepCallback
              (Just AltJSON)
              _plaepPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsPatchResource)
                      mempty
