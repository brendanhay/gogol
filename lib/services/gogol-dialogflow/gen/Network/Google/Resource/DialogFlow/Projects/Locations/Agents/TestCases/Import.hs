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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Import
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the test cases from a Cloud Storage bucket or a local file. It
-- always creates new test cases and won\'t overwite any existing ones. The
-- provided ID in the imported test case is neglected.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.testCases.import@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.TestCases.Import
    (
    -- * REST Resource
      ProjectsLocationsAgentsTestCasesImportResource

    -- * Creating a Request
    , projectsLocationsAgentsTestCasesImport
    , ProjectsLocationsAgentsTestCasesImport

    -- * Request Lenses
    , platciParent
    , platciXgafv
    , platciUploadProtocol
    , platciAccessToken
    , platciUploadType
    , platciPayload
    , platciCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.testCases.import@ method which the
-- 'ProjectsLocationsAgentsTestCasesImport' request conforms to.
type ProjectsLocationsAgentsTestCasesImportResource =
     "v3" :>
       Capture "parent" Text :>
         "testCases:import" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudDialogflowCxV3ImportTestCasesRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Imports the test cases from a Cloud Storage bucket or a local file. It
-- always creates new test cases and won\'t overwite any existing ones. The
-- provided ID in the imported test case is neglected.
--
-- /See:/ 'projectsLocationsAgentsTestCasesImport' smart constructor.
data ProjectsLocationsAgentsTestCasesImport =
  ProjectsLocationsAgentsTestCasesImport'
    { _platciParent :: !Text
    , _platciXgafv :: !(Maybe Xgafv)
    , _platciUploadProtocol :: !(Maybe Text)
    , _platciAccessToken :: !(Maybe Text)
    , _platciUploadType :: !(Maybe Text)
    , _platciPayload :: !GoogleCloudDialogflowCxV3ImportTestCasesRequest
    , _platciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsTestCasesImport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'platciParent'
--
-- * 'platciXgafv'
--
-- * 'platciUploadProtocol'
--
-- * 'platciAccessToken'
--
-- * 'platciUploadType'
--
-- * 'platciPayload'
--
-- * 'platciCallback'
projectsLocationsAgentsTestCasesImport
    :: Text -- ^ 'platciParent'
    -> GoogleCloudDialogflowCxV3ImportTestCasesRequest -- ^ 'platciPayload'
    -> ProjectsLocationsAgentsTestCasesImport
projectsLocationsAgentsTestCasesImport pPlatciParent_ pPlatciPayload_ =
  ProjectsLocationsAgentsTestCasesImport'
    { _platciParent = pPlatciParent_
    , _platciXgafv = Nothing
    , _platciUploadProtocol = Nothing
    , _platciAccessToken = Nothing
    , _platciUploadType = Nothing
    , _platciPayload = pPlatciPayload_
    , _platciCallback = Nothing
    }


-- | Required. The agent to import test cases to. Format:
-- \`projects\/\/locations\/\/agents\/\`.
platciParent :: Lens' ProjectsLocationsAgentsTestCasesImport Text
platciParent
  = lens _platciParent (\ s a -> s{_platciParent = a})

-- | V1 error format.
platciXgafv :: Lens' ProjectsLocationsAgentsTestCasesImport (Maybe Xgafv)
platciXgafv
  = lens _platciXgafv (\ s a -> s{_platciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
platciUploadProtocol :: Lens' ProjectsLocationsAgentsTestCasesImport (Maybe Text)
platciUploadProtocol
  = lens _platciUploadProtocol
      (\ s a -> s{_platciUploadProtocol = a})

-- | OAuth access token.
platciAccessToken :: Lens' ProjectsLocationsAgentsTestCasesImport (Maybe Text)
platciAccessToken
  = lens _platciAccessToken
      (\ s a -> s{_platciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
platciUploadType :: Lens' ProjectsLocationsAgentsTestCasesImport (Maybe Text)
platciUploadType
  = lens _platciUploadType
      (\ s a -> s{_platciUploadType = a})

-- | Multipart request metadata.
platciPayload :: Lens' ProjectsLocationsAgentsTestCasesImport GoogleCloudDialogflowCxV3ImportTestCasesRequest
platciPayload
  = lens _platciPayload
      (\ s a -> s{_platciPayload = a})

-- | JSONP
platciCallback :: Lens' ProjectsLocationsAgentsTestCasesImport (Maybe Text)
platciCallback
  = lens _platciCallback
      (\ s a -> s{_platciCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsTestCasesImport
         where
        type Rs ProjectsLocationsAgentsTestCasesImport =
             GoogleLongrunningOperation
        type Scopes ProjectsLocationsAgentsTestCasesImport =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsTestCasesImport'{..}
          = go _platciParent _platciXgafv _platciUploadProtocol
              _platciAccessToken
              _platciUploadType
              _platciCallback
              (Just AltJSON)
              _platciPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsTestCasesImportResource)
                      mempty
