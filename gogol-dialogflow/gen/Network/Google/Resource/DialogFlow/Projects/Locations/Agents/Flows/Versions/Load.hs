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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Load
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Loads resources in the specified version to the draft flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.load@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.Load
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsVersionsLoadResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsVersionsLoad
    , ProjectsLocationsAgentsFlowsVersionsLoad

    -- * Request Lenses
    , plafvlXgafv
    , plafvlUploadProtocol
    , plafvlAccessToken
    , plafvlUploadType
    , plafvlPayload
    , plafvlName
    , plafvlCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.load@ method which the
-- 'ProjectsLocationsAgentsFlowsVersionsLoad' request conforms to.
type ProjectsLocationsAgentsFlowsVersionsLoadResource
     =
     "v3" :>
       CaptureMode "name" "load" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3LoadVersionRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Loads resources in the specified version to the draft flow.
--
-- /See:/ 'projectsLocationsAgentsFlowsVersionsLoad' smart constructor.
data ProjectsLocationsAgentsFlowsVersionsLoad =
  ProjectsLocationsAgentsFlowsVersionsLoad'
    { _plafvlXgafv :: !(Maybe Xgafv)
    , _plafvlUploadProtocol :: !(Maybe Text)
    , _plafvlAccessToken :: !(Maybe Text)
    , _plafvlUploadType :: !(Maybe Text)
    , _plafvlPayload :: !GoogleCloudDialogflowCxV3LoadVersionRequest
    , _plafvlName :: !Text
    , _plafvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsVersionsLoad' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafvlXgafv'
--
-- * 'plafvlUploadProtocol'
--
-- * 'plafvlAccessToken'
--
-- * 'plafvlUploadType'
--
-- * 'plafvlPayload'
--
-- * 'plafvlName'
--
-- * 'plafvlCallback'
projectsLocationsAgentsFlowsVersionsLoad
    :: GoogleCloudDialogflowCxV3LoadVersionRequest -- ^ 'plafvlPayload'
    -> Text -- ^ 'plafvlName'
    -> ProjectsLocationsAgentsFlowsVersionsLoad
projectsLocationsAgentsFlowsVersionsLoad pPlafvlPayload_ pPlafvlName_ =
  ProjectsLocationsAgentsFlowsVersionsLoad'
    { _plafvlXgafv = Nothing
    , _plafvlUploadProtocol = Nothing
    , _plafvlAccessToken = Nothing
    , _plafvlUploadType = Nothing
    , _plafvlPayload = pPlafvlPayload_
    , _plafvlName = pPlafvlName_
    , _plafvlCallback = Nothing
    }


-- | V1 error format.
plafvlXgafv :: Lens' ProjectsLocationsAgentsFlowsVersionsLoad (Maybe Xgafv)
plafvlXgafv
  = lens _plafvlXgafv (\ s a -> s{_plafvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafvlUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsVersionsLoad (Maybe Text)
plafvlUploadProtocol
  = lens _plafvlUploadProtocol
      (\ s a -> s{_plafvlUploadProtocol = a})

-- | OAuth access token.
plafvlAccessToken :: Lens' ProjectsLocationsAgentsFlowsVersionsLoad (Maybe Text)
plafvlAccessToken
  = lens _plafvlAccessToken
      (\ s a -> s{_plafvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafvlUploadType :: Lens' ProjectsLocationsAgentsFlowsVersionsLoad (Maybe Text)
plafvlUploadType
  = lens _plafvlUploadType
      (\ s a -> s{_plafvlUploadType = a})

-- | Multipart request metadata.
plafvlPayload :: Lens' ProjectsLocationsAgentsFlowsVersionsLoad GoogleCloudDialogflowCxV3LoadVersionRequest
plafvlPayload
  = lens _plafvlPayload
      (\ s a -> s{_plafvlPayload = a})

-- | Required. The Version to be loaded to draft flow. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\/versions\/\`.
plafvlName :: Lens' ProjectsLocationsAgentsFlowsVersionsLoad Text
plafvlName
  = lens _plafvlName (\ s a -> s{_plafvlName = a})

-- | JSONP
plafvlCallback :: Lens' ProjectsLocationsAgentsFlowsVersionsLoad (Maybe Text)
plafvlCallback
  = lens _plafvlCallback
      (\ s a -> s{_plafvlCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsVersionsLoad
         where
        type Rs ProjectsLocationsAgentsFlowsVersionsLoad =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsFlowsVersionsLoad
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsVersionsLoad'{..}
          = go _plafvlName _plafvlXgafv _plafvlUploadProtocol
              _plafvlAccessToken
              _plafvlUploadType
              _plafvlCallback
              (Just AltJSON)
              _plafvlPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsVersionsLoadResource)
                      mempty
