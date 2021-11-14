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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all versions in the specified Flow.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.versions.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.Versions.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsVersionsListResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsVersionsList
    , ProjectsLocationsAgentsFlowsVersionsList

    -- * Request Lenses
    , pParent
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPageToken
    , pPageSize
    , pCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.versions.list@ method which the
-- 'ProjectsLocationsAgentsFlowsVersionsList' request conforms to.
type ProjectsLocationsAgentsFlowsVersionsListResource
     =
     "v3" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowCxV3ListVersionsResponse

-- | Returns the list of all versions in the specified Flow.
--
-- /See:/ 'projectsLocationsAgentsFlowsVersionsList' smart constructor.
data ProjectsLocationsAgentsFlowsVersionsList =
  ProjectsLocationsAgentsFlowsVersionsList'
    { _pParent :: !Text
    , _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPageToken :: !(Maybe Text)
    , _pPageSize :: !(Maybe (Textual Int32))
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPageToken'
--
-- * 'pPageSize'
--
-- * 'pCallback'
projectsLocationsAgentsFlowsVersionsList
    :: Text -- ^ 'pParent'
    -> ProjectsLocationsAgentsFlowsVersionsList
projectsLocationsAgentsFlowsVersionsList pPParent_ =
  ProjectsLocationsAgentsFlowsVersionsList'
    { _pParent = pPParent_
    , _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPageToken = Nothing
    , _pPageSize = Nothing
    , _pCallback = Nothing
    }


-- | Required. The Flow to list all versions for. Format:
-- \`projects\/\/locations\/\/agents\/\/flows\/\`.
pParent :: Lens' ProjectsLocationsAgentsFlowsVersionsList Text
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | V1 error format.
pXgafv :: Lens' ProjectsLocationsAgentsFlowsVersionsList (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsVersionsList (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLocationsAgentsFlowsVersionsList (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLocationsAgentsFlowsVersionsList (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | The next_page_token value returned from a previous list request.
pPageToken :: Lens' ProjectsLocationsAgentsFlowsVersionsList (Maybe Text)
pPageToken
  = lens _pPageToken (\ s a -> s{_pPageToken = a})

-- | The maximum number of items to return in a single page. By default 20
-- and at most 100.
pPageSize :: Lens' ProjectsLocationsAgentsFlowsVersionsList (Maybe Int32)
pPageSize
  = lens _pPageSize (\ s a -> s{_pPageSize = a}) .
      mapping _Coerce

-- | JSONP
pCallback :: Lens' ProjectsLocationsAgentsFlowsVersionsList (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsVersionsList
         where
        type Rs ProjectsLocationsAgentsFlowsVersionsList =
             GoogleCloudDialogflowCxV3ListVersionsResponse
        type Scopes ProjectsLocationsAgentsFlowsVersionsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsFlowsVersionsList'{..}
          = go _pParent _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pPageToken
              _pPageSize
              _pCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsFlowsVersionsListResource)
                      mempty
