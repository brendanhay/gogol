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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new workflow template.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.create@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Create
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesCreateResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesCreate
    , ProjectsRegionsWorkflowTemplatesCreate

    -- * Request Lenses
    , prwtcParent
    , prwtcXgafv
    , prwtcUploadProtocol
    , prwtcAccessToken
    , prwtcUploadType
    , prwtcPayload
    , prwtcCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.create@ method which the
-- 'ProjectsRegionsWorkflowTemplatesCreate' request conforms to.
type ProjectsRegionsWorkflowTemplatesCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "workflowTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WorkflowTemplate :>
                         Post '[JSON] WorkflowTemplate

-- | Creates new workflow template.
--
-- /See:/ 'projectsRegionsWorkflowTemplatesCreate' smart constructor.
data ProjectsRegionsWorkflowTemplatesCreate =
  ProjectsRegionsWorkflowTemplatesCreate'
    { _prwtcParent         :: !Text
    , _prwtcXgafv          :: !(Maybe Xgafv)
    , _prwtcUploadProtocol :: !(Maybe Text)
    , _prwtcAccessToken    :: !(Maybe Text)
    , _prwtcUploadType     :: !(Maybe Text)
    , _prwtcPayload        :: !WorkflowTemplate
    , _prwtcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtcParent'
--
-- * 'prwtcXgafv'
--
-- * 'prwtcUploadProtocol'
--
-- * 'prwtcAccessToken'
--
-- * 'prwtcUploadType'
--
-- * 'prwtcPayload'
--
-- * 'prwtcCallback'
projectsRegionsWorkflowTemplatesCreate
    :: Text -- ^ 'prwtcParent'
    -> WorkflowTemplate -- ^ 'prwtcPayload'
    -> ProjectsRegionsWorkflowTemplatesCreate
projectsRegionsWorkflowTemplatesCreate pPrwtcParent_ pPrwtcPayload_ =
  ProjectsRegionsWorkflowTemplatesCreate'
    { _prwtcParent = pPrwtcParent_
    , _prwtcXgafv = Nothing
    , _prwtcUploadProtocol = Nothing
    , _prwtcAccessToken = Nothing
    , _prwtcUploadType = Nothing
    , _prwtcPayload = pPrwtcPayload_
    , _prwtcCallback = Nothing
    }

-- | Required. The \"resource name\" of the region, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names of the form
-- projects\/{project_id}\/regions\/{region}
prwtcParent :: Lens' ProjectsRegionsWorkflowTemplatesCreate Text
prwtcParent
  = lens _prwtcParent (\ s a -> s{_prwtcParent = a})

-- | V1 error format.
prwtcXgafv :: Lens' ProjectsRegionsWorkflowTemplatesCreate (Maybe Xgafv)
prwtcXgafv
  = lens _prwtcXgafv (\ s a -> s{_prwtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtcUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesCreate (Maybe Text)
prwtcUploadProtocol
  = lens _prwtcUploadProtocol
      (\ s a -> s{_prwtcUploadProtocol = a})

-- | OAuth access token.
prwtcAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesCreate (Maybe Text)
prwtcAccessToken
  = lens _prwtcAccessToken
      (\ s a -> s{_prwtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtcUploadType :: Lens' ProjectsRegionsWorkflowTemplatesCreate (Maybe Text)
prwtcUploadType
  = lens _prwtcUploadType
      (\ s a -> s{_prwtcUploadType = a})

-- | Multipart request metadata.
prwtcPayload :: Lens' ProjectsRegionsWorkflowTemplatesCreate WorkflowTemplate
prwtcPayload
  = lens _prwtcPayload (\ s a -> s{_prwtcPayload = a})

-- | JSONP
prwtcCallback :: Lens' ProjectsRegionsWorkflowTemplatesCreate (Maybe Text)
prwtcCallback
  = lens _prwtcCallback
      (\ s a -> s{_prwtcCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesCreate
         where
        type Rs ProjectsRegionsWorkflowTemplatesCreate =
             WorkflowTemplate
        type Scopes ProjectsRegionsWorkflowTemplatesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesCreate'{..}
          = go _prwtcParent _prwtcXgafv _prwtcUploadProtocol
              _prwtcAccessToken
              _prwtcUploadType
              _prwtcCallback
              (Just AltJSON)
              _prwtcPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsWorkflowTemplatesCreateResource)
                      mempty
