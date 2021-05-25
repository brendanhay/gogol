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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Export
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports the test cases under the agent to a Cloud Storage bucket or a
-- local file. Filter can be applied to export a subset of test cases.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.export@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Export
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesExportResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesExport
    , ProjectsLocationsAgentsTestCasesExport

    -- * Request Lenses
    , platceParent
    , platceXgafv
    , platceUploadProtocol
    , platceAccessToken
    , platceUploadType
    , platcePayload
    , platceCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.export@ method which the
-- 'ProjectsLocationsAgentsTestCasesExport' request conforms to.
type ProjectsLocationsAgentsTestCasesExportResource =
     "v3" :>
       Capture "parent" Text :>
         "testCases:export" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3ExportTestCasesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Exports the test cases under the agent to a Cloud Storage bucket or a
-- local file. Filter can be applied to export a subset of test cases.
--
-- /See:/ 'projectsLocationsAgentsTestCasesExport' smart constructor.
data ProjectsLocationsAgentsTestCasesExport =
  ProjectsLocationsAgentsTestCasesExport'
    { _platceParent :: !Text
    , _platceXgafv :: !(Maybe Xgafv)
    , _platceUploadProtocol :: !(Maybe Text)
    , _platceAccessToken :: !(Maybe Text)
    , _platceUploadType :: !(Maybe Text)
    , _platcePayload :: !GoogleCloudDialogflowCxV3ExportTestCasesRequest
    , _platceCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesExport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platceParent'
--
-- * 'platceXgafv'
--
-- * 'platceUploadProtocol'
--
-- * 'platceAccessToken'
--
-- * 'platceUploadType'
--
-- * 'platcePayload'
--
-- * 'platceCallback'
projectsLocationsAgentsTestCasesExport
    :: Text -- ^ 'platceParent'
    -> GoogleCloudDialogflowCxV3ExportTestCasesRequest -- ^ 'platcePayload'
    -> ProjectsLocationsAgentsTestCasesExport
projectsLocationsAgentsTestCasesExport pPlatceParent_ pPlatcePayload_ =
  ProjectsLocationsAgentsTestCasesExport'
    { _platceParent = pPlatceParent_
    , _platceXgafv = Nothing
    , _platceUploadProtocol = Nothing
    , _platceAccessToken = Nothing
    , _platceUploadType = Nothing
    , _platcePayload = pPlatcePayload_
    , _platceCallback = Nothing
    }


-- | Required. The agent where to export test cases from. Format:
-- \`projects\/\/locations\/\/agents\/\`.
platceParent :: Lens' ProjectsLocationsAgentsTestCasesExport Text
platceParent
  = lens _platceParent (\ s a -> s{_platceParent = a})

-- | V1 error format.
platceXgafv :: Lens' ProjectsLocationsAgentsTestCasesExport (Maybe Xgafv)
platceXgafv
  = lens _platceXgafv (\ s a -> s{_platceXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platceUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesExport (Maybe Text)
platceUploadProtocol
  = lens _platceUploadProtocol
      (\ s a -> s{_platceUploadProtocol = a})

-- | OAuth access token.
platceAccessToken :: Lens' ProjectsLocationsAgentsTestCasesExport (Maybe Text)
platceAccessToken
  = lens _platceAccessToken
      (\ s a -> s{_platceAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platceUploadType :: Lens' ProjectsLocationsAgentsTestCasesExport (Maybe Text)
platceUploadType
  = lens _platceUploadType
      (\ s a -> s{_platceUploadType = a})

-- | Multipart request metadata.
platcePayload :: Lens' ProjectsLocationsAgentsTestCasesExport GoogleCloudDialogflowCxV3ExportTestCasesRequest
platcePayload
  = lens _platcePayload
      (\ s a -> s{_platcePayload = a})

-- | JSONP
platceCallback :: Lens' ProjectsLocationsAgentsTestCasesExport (Maybe Text)
platceCallback
  = lens _platceCallback
      (\ s a -> s{_platceCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesExport
         where
        type Rs ProjectsLocationsAgentsTestCasesExport =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsTestCasesExport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesExport'{..}
          = go _platceParent _platceXgafv _platceUploadProtocol
              _platceAccessToken
              _platceUploadType
              _platceCallback
              (Just AltJSON)
              _platcePayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsTestCasesExportResource)
                      mempty
