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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a workflow template. It does not cancel in-progress workflows.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.delete@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Delete
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesDeleteResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesDelete
    , ProjectsRegionsWorkflowTemplatesDelete

    -- * Request Lenses
    , prwtdXgafv
    , prwtdUploadProtocol
    , prwtdAccessToken
    , prwtdUploadType
    , prwtdName
    , prwtdVersion
    , prwtdCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.delete@ method which the
-- 'ProjectsRegionsWorkflowTemplatesDelete' request conforms to.
type ProjectsRegionsWorkflowTemplatesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "version" (Textual Int32) :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a workflow template. It does not cancel in-progress workflows.
--
-- /See:/ 'projectsRegionsWorkflowTemplatesDelete' smart constructor.
data ProjectsRegionsWorkflowTemplatesDelete =
  ProjectsRegionsWorkflowTemplatesDelete'
    { _prwtdXgafv          :: !(Maybe Xgafv)
    , _prwtdUploadProtocol :: !(Maybe Text)
    , _prwtdAccessToken    :: !(Maybe Text)
    , _prwtdUploadType     :: !(Maybe Text)
    , _prwtdName           :: !Text
    , _prwtdVersion        :: !(Maybe (Textual Int32))
    , _prwtdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtdXgafv'
--
-- * 'prwtdUploadProtocol'
--
-- * 'prwtdAccessToken'
--
-- * 'prwtdUploadType'
--
-- * 'prwtdName'
--
-- * 'prwtdVersion'
--
-- * 'prwtdCallback'
projectsRegionsWorkflowTemplatesDelete
    :: Text -- ^ 'prwtdName'
    -> ProjectsRegionsWorkflowTemplatesDelete
projectsRegionsWorkflowTemplatesDelete pPrwtdName_ =
  ProjectsRegionsWorkflowTemplatesDelete'
    { _prwtdXgafv = Nothing
    , _prwtdUploadProtocol = Nothing
    , _prwtdAccessToken = Nothing
    , _prwtdUploadType = Nothing
    , _prwtdName = pPrwtdName_
    , _prwtdVersion = Nothing
    , _prwtdCallback = Nothing
    }

-- | V1 error format.
prwtdXgafv :: Lens' ProjectsRegionsWorkflowTemplatesDelete (Maybe Xgafv)
prwtdXgafv
  = lens _prwtdXgafv (\ s a -> s{_prwtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtdUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesDelete (Maybe Text)
prwtdUploadProtocol
  = lens _prwtdUploadProtocol
      (\ s a -> s{_prwtdUploadProtocol = a})

-- | OAuth access token.
prwtdAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesDelete (Maybe Text)
prwtdAccessToken
  = lens _prwtdAccessToken
      (\ s a -> s{_prwtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtdUploadType :: Lens' ProjectsRegionsWorkflowTemplatesDelete (Maybe Text)
prwtdUploadType
  = lens _prwtdUploadType
      (\ s a -> s{_prwtdUploadType = a})

-- | Required. The \"resource name\" of the workflow template, as described
-- in https:\/\/cloud.google.com\/apis\/design\/resource_names of the form
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
prwtdName :: Lens' ProjectsRegionsWorkflowTemplatesDelete Text
prwtdName
  = lens _prwtdName (\ s a -> s{_prwtdName = a})

-- | Optional. The version of workflow template to delete. If specified, will
-- only delete the template if the current server version matches specified
-- version.
prwtdVersion :: Lens' ProjectsRegionsWorkflowTemplatesDelete (Maybe Int32)
prwtdVersion
  = lens _prwtdVersion (\ s a -> s{_prwtdVersion = a})
      . mapping _Coerce

-- | JSONP
prwtdCallback :: Lens' ProjectsRegionsWorkflowTemplatesDelete (Maybe Text)
prwtdCallback
  = lens _prwtdCallback
      (\ s a -> s{_prwtdCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesDelete
         where
        type Rs ProjectsRegionsWorkflowTemplatesDelete =
             Empty
        type Scopes ProjectsRegionsWorkflowTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesDelete'{..}
          = go _prwtdName _prwtdXgafv _prwtdUploadProtocol
              _prwtdAccessToken
              _prwtdUploadType
              _prwtdVersion
              _prwtdCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsWorkflowTemplatesDeleteResource)
                      mempty
