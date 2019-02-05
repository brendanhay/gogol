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
-- Module      : Network.Google.Resource.Script.Projects.Deployments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the deployments of an Apps Script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.deployments.list@.
module Network.Google.Resource.Script.Projects.Deployments.List
    (
    -- * REST Resource
      ProjectsDeploymentsListResource

    -- * Creating a Request
    , projectsDeploymentsList
    , ProjectsDeploymentsList

    -- * Request Lenses
    , pdlXgafv
    , pdlUploadProtocol
    , pdlAccessToken
    , pdlUploadType
    , pdlScriptId
    , pdlPageToken
    , pdlPageSize
    , pdlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.projects.deployments.list@ method which the
-- 'ProjectsDeploymentsList' request conforms to.
type ProjectsDeploymentsListResource =
     "v1" :>
       "projects" :>
         Capture "scriptId" Text :>
           "deployments" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListDeploymentsResponse

-- | Lists the deployments of an Apps Script project.
--
-- /See:/ 'projectsDeploymentsList' smart constructor.
data ProjectsDeploymentsList = ProjectsDeploymentsList'
    { _pdlXgafv          :: !(Maybe Xgafv)
    , _pdlUploadProtocol :: !(Maybe Text)
    , _pdlAccessToken    :: !(Maybe Text)
    , _pdlUploadType     :: !(Maybe Text)
    , _pdlScriptId       :: !Text
    , _pdlPageToken      :: !(Maybe Text)
    , _pdlPageSize       :: !(Maybe (Textual Int32))
    , _pdlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsDeploymentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdlXgafv'
--
-- * 'pdlUploadProtocol'
--
-- * 'pdlAccessToken'
--
-- * 'pdlUploadType'
--
-- * 'pdlScriptId'
--
-- * 'pdlPageToken'
--
-- * 'pdlPageSize'
--
-- * 'pdlCallback'
projectsDeploymentsList
    :: Text -- ^ 'pdlScriptId'
    -> ProjectsDeploymentsList
projectsDeploymentsList pPdlScriptId_ =
    ProjectsDeploymentsList'
    { _pdlXgafv = Nothing
    , _pdlUploadProtocol = Nothing
    , _pdlAccessToken = Nothing
    , _pdlUploadType = Nothing
    , _pdlScriptId = pPdlScriptId_
    , _pdlPageToken = Nothing
    , _pdlPageSize = Nothing
    , _pdlCallback = Nothing
    }

-- | V1 error format.
pdlXgafv :: Lens' ProjectsDeploymentsList (Maybe Xgafv)
pdlXgafv = lens _pdlXgafv (\ s a -> s{_pdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdlUploadProtocol :: Lens' ProjectsDeploymentsList (Maybe Text)
pdlUploadProtocol
  = lens _pdlUploadProtocol
      (\ s a -> s{_pdlUploadProtocol = a})

-- | OAuth access token.
pdlAccessToken :: Lens' ProjectsDeploymentsList (Maybe Text)
pdlAccessToken
  = lens _pdlAccessToken
      (\ s a -> s{_pdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdlUploadType :: Lens' ProjectsDeploymentsList (Maybe Text)
pdlUploadType
  = lens _pdlUploadType
      (\ s a -> s{_pdlUploadType = a})

-- | The script project\'s Drive ID.
pdlScriptId :: Lens' ProjectsDeploymentsList Text
pdlScriptId
  = lens _pdlScriptId (\ s a -> s{_pdlScriptId = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \`nextPageToken\` from a previous
-- response.
pdlPageToken :: Lens' ProjectsDeploymentsList (Maybe Text)
pdlPageToken
  = lens _pdlPageToken (\ s a -> s{_pdlPageToken = a})

-- | The maximum number of deployments on each returned page. Defaults to 50.
pdlPageSize :: Lens' ProjectsDeploymentsList (Maybe Int32)
pdlPageSize
  = lens _pdlPageSize (\ s a -> s{_pdlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pdlCallback :: Lens' ProjectsDeploymentsList (Maybe Text)
pdlCallback
  = lens _pdlCallback (\ s a -> s{_pdlCallback = a})

instance GoogleRequest ProjectsDeploymentsList where
        type Rs ProjectsDeploymentsList =
             ListDeploymentsResponse
        type Scopes ProjectsDeploymentsList =
             '["https://www.googleapis.com/auth/script.deployments",
               "https://www.googleapis.com/auth/script.deployments.readonly"]
        requestClient ProjectsDeploymentsList'{..}
          = go _pdlScriptId _pdlXgafv _pdlUploadProtocol
              _pdlAccessToken
              _pdlUploadType
              _pdlPageToken
              _pdlPageSize
              _pdlCallback
              (Just AltJSON)
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDeploymentsListResource)
                      mempty
