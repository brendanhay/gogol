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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Import
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the specified flow to the specified agent from a binary file.
-- Note: You should always train a flow prior to sending it queries. See
-- the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.import@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Import
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsImportResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsImport
    , ProjectsLocationsAgentsFlowsImport

    -- * Request Lenses
    , plafiParent
    , plafiXgafv
    , plafiUploadProtocol
    , plafiAccessToken
    , plafiUploadType
    , plafiPayload
    , plafiCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.import@ method which the
-- 'ProjectsLocationsAgentsFlowsImport' request conforms to.
type ProjectsLocationsAgentsFlowsImportResource =
     "v3" :>
       Capture "parent" Text :>
         "flows:import" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3ImportFlowRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Imports the specified flow to the specified agent from a binary file.
-- Note: You should always train a flow prior to sending it queries. See
-- the [training
-- documentation](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/concept\/training).
--
-- /See:/ 'projectsLocationsAgentsFlowsImport' smart constructor.
data ProjectsLocationsAgentsFlowsImport =
  ProjectsLocationsAgentsFlowsImport'
    { _plafiParent :: !Text
    , _plafiXgafv :: !(Maybe Xgafv)
    , _plafiUploadProtocol :: !(Maybe Text)
    , _plafiAccessToken :: !(Maybe Text)
    , _plafiUploadType :: !(Maybe Text)
    , _plafiPayload :: !GoogleCloudDialogflowCxV3ImportFlowRequest
    , _plafiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plafiParent'
--
-- * 'plafiXgafv'
--
-- * 'plafiUploadProtocol'
--
-- * 'plafiAccessToken'
--
-- * 'plafiUploadType'
--
-- * 'plafiPayload'
--
-- * 'plafiCallback'
projectsLocationsAgentsFlowsImport
    :: Text -- ^ 'plafiParent'
    -> GoogleCloudDialogflowCxV3ImportFlowRequest -- ^ 'plafiPayload'
    -> ProjectsLocationsAgentsFlowsImport
projectsLocationsAgentsFlowsImport pPlafiParent_ pPlafiPayload_ =
  ProjectsLocationsAgentsFlowsImport'
    { _plafiParent = pPlafiParent_
    , _plafiXgafv = Nothing
    , _plafiUploadProtocol = Nothing
    , _plafiAccessToken = Nothing
    , _plafiUploadType = Nothing
    , _plafiPayload = pPlafiPayload_
    , _plafiCallback = Nothing
    }


-- | Required. The agent to import the flow into. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plafiParent :: Lens' ProjectsLocationsAgentsFlowsImport Text
plafiParent
  = lens _plafiParent (\ s a -> s{_plafiParent = a})

-- | V1 error format.
plafiXgafv :: Lens' ProjectsLocationsAgentsFlowsImport (Maybe Xgafv)
plafiXgafv
  = lens _plafiXgafv (\ s a -> s{_plafiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plafiUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsImport (Maybe Text)
plafiUploadProtocol
  = lens _plafiUploadProtocol
      (\ s a -> s{_plafiUploadProtocol = a})

-- | OAuth access token.
plafiAccessToken :: Lens' ProjectsLocationsAgentsFlowsImport (Maybe Text)
plafiAccessToken
  = lens _plafiAccessToken
      (\ s a -> s{_plafiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plafiUploadType :: Lens' ProjectsLocationsAgentsFlowsImport (Maybe Text)
plafiUploadType
  = lens _plafiUploadType
      (\ s a -> s{_plafiUploadType = a})

-- | Multipart request metadata.
plafiPayload :: Lens' ProjectsLocationsAgentsFlowsImport GoogleCloudDialogflowCxV3ImportFlowRequest
plafiPayload
  = lens _plafiPayload (\ s a -> s{_plafiPayload = a})

-- | JSONP
plafiCallback :: Lens' ProjectsLocationsAgentsFlowsImport (Maybe Text)
plafiCallback
  = lens _plafiCallback
      (\ s a -> s{_plafiCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsImport
         where
        type Rs ProjectsLocationsAgentsFlowsImport =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsFlowsImport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsFlowsImport'{..}
          = go _plafiParent _plafiXgafv _plafiUploadProtocol
              _plafiAccessToken
              _plafiUploadType
              _plafiCallback
              (Just AltJSON)
              _plafiPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsImportResource)
                      mempty
