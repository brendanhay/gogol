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
-- Module      : Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the latest workflow template.Can retrieve previously
-- instantiated template by specifying optional version parameter.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.get@.
module Network.Google.Resource.Dataproc.Projects.Regions.WorkflowTemplates.Get
    (
    -- * REST Resource
      ProjectsRegionsWorkflowTemplatesGetResource

    -- * Creating a Request
    , projectsRegionsWorkflowTemplatesGet
    , ProjectsRegionsWorkflowTemplatesGet

    -- * Request Lenses
    , prwtgXgafv
    , prwtgUploadProtocol
    , prwtgAccessToken
    , prwtgUploadType
    , prwtgName
    , prwtgVersion
    , prwtgCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.get@ method which the
-- 'ProjectsRegionsWorkflowTemplatesGet' request conforms to.
type ProjectsRegionsWorkflowTemplatesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "version" (Textual Int32) :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] WorkflowTemplate

-- | Retrieves the latest workflow template.Can retrieve previously
-- instantiated template by specifying optional version parameter.
--
-- /See:/ 'projectsRegionsWorkflowTemplatesGet' smart constructor.
data ProjectsRegionsWorkflowTemplatesGet =
  ProjectsRegionsWorkflowTemplatesGet'
    { _prwtgXgafv :: !(Maybe Xgafv)
    , _prwtgUploadProtocol :: !(Maybe Text)
    , _prwtgAccessToken :: !(Maybe Text)
    , _prwtgUploadType :: !(Maybe Text)
    , _prwtgName :: !Text
    , _prwtgVersion :: !(Maybe (Textual Int32))
    , _prwtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsRegionsWorkflowTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prwtgXgafv'
--
-- * 'prwtgUploadProtocol'
--
-- * 'prwtgAccessToken'
--
-- * 'prwtgUploadType'
--
-- * 'prwtgName'
--
-- * 'prwtgVersion'
--
-- * 'prwtgCallback'
projectsRegionsWorkflowTemplatesGet
    :: Text -- ^ 'prwtgName'
    -> ProjectsRegionsWorkflowTemplatesGet
projectsRegionsWorkflowTemplatesGet pPrwtgName_ =
  ProjectsRegionsWorkflowTemplatesGet'
    { _prwtgXgafv = Nothing
    , _prwtgUploadProtocol = Nothing
    , _prwtgAccessToken = Nothing
    , _prwtgUploadType = Nothing
    , _prwtgName = pPrwtgName_
    , _prwtgVersion = Nothing
    , _prwtgCallback = Nothing
    }


-- | V1 error format.
prwtgXgafv :: Lens' ProjectsRegionsWorkflowTemplatesGet (Maybe Xgafv)
prwtgXgafv
  = lens _prwtgXgafv (\ s a -> s{_prwtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prwtgUploadProtocol :: Lens' ProjectsRegionsWorkflowTemplatesGet (Maybe Text)
prwtgUploadProtocol
  = lens _prwtgUploadProtocol
      (\ s a -> s{_prwtgUploadProtocol = a})

-- | OAuth access token.
prwtgAccessToken :: Lens' ProjectsRegionsWorkflowTemplatesGet (Maybe Text)
prwtgAccessToken
  = lens _prwtgAccessToken
      (\ s a -> s{_prwtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prwtgUploadType :: Lens' ProjectsRegionsWorkflowTemplatesGet (Maybe Text)
prwtgUploadType
  = lens _prwtgUploadType
      (\ s a -> s{_prwtgUploadType = a})

-- | Required. The resource name of the workflow template, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.workflowTemplates.get, the resource name of the
-- template has the following format:
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
-- For projects.locations.workflowTemplates.get, the resource name of the
-- template has the following format:
-- projects\/{project_id}\/locations\/{location}\/workflowTemplates\/{template_id}
prwtgName :: Lens' ProjectsRegionsWorkflowTemplatesGet Text
prwtgName
  = lens _prwtgName (\ s a -> s{_prwtgName = a})

-- | Optional. The version of workflow template to retrieve. Only previously
-- instantiated versions can be retrieved.If unspecified, retrieves the
-- current version.
prwtgVersion :: Lens' ProjectsRegionsWorkflowTemplatesGet (Maybe Int32)
prwtgVersion
  = lens _prwtgVersion (\ s a -> s{_prwtgVersion = a})
      . mapping _Coerce

-- | JSONP
prwtgCallback :: Lens' ProjectsRegionsWorkflowTemplatesGet (Maybe Text)
prwtgCallback
  = lens _prwtgCallback
      (\ s a -> s{_prwtgCallback = a})

instance GoogleRequest
           ProjectsRegionsWorkflowTemplatesGet
         where
        type Rs ProjectsRegionsWorkflowTemplatesGet =
             WorkflowTemplate
        type Scopes ProjectsRegionsWorkflowTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsRegionsWorkflowTemplatesGet'{..}
          = go _prwtgName _prwtgXgafv _prwtgUploadProtocol
              _prwtgAccessToken
              _prwtgUploadType
              _prwtgVersion
              _prwtgCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsRegionsWorkflowTemplatesGetResource)
                      mempty
