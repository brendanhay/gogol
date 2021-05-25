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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the latest workflow template.Can retrieve previously
-- instantiated template by specifying optional version parameter.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.get@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Get
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesGetResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesGet
    , ProjectsLocationsWorkflowTemplatesGet

    -- * Request Lenses
    , plwtgXgafv
    , plwtgUploadProtocol
    , plwtgAccessToken
    , plwtgUploadType
    , plwtgName
    , plwtgVersion
    , plwtgCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.get@ method which the
-- 'ProjectsLocationsWorkflowTemplatesGet' request conforms to.
type ProjectsLocationsWorkflowTemplatesGetResource =
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
-- /See:/ 'projectsLocationsWorkflowTemplatesGet' smart constructor.
data ProjectsLocationsWorkflowTemplatesGet =
  ProjectsLocationsWorkflowTemplatesGet'
    { _plwtgXgafv :: !(Maybe Xgafv)
    , _plwtgUploadProtocol :: !(Maybe Text)
    , _plwtgAccessToken :: !(Maybe Text)
    , _plwtgUploadType :: !(Maybe Text)
    , _plwtgName :: !Text
    , _plwtgVersion :: !(Maybe (Textual Int32))
    , _plwtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtgXgafv'
--
-- * 'plwtgUploadProtocol'
--
-- * 'plwtgAccessToken'
--
-- * 'plwtgUploadType'
--
-- * 'plwtgName'
--
-- * 'plwtgVersion'
--
-- * 'plwtgCallback'
projectsLocationsWorkflowTemplatesGet
    :: Text -- ^ 'plwtgName'
    -> ProjectsLocationsWorkflowTemplatesGet
projectsLocationsWorkflowTemplatesGet pPlwtgName_ =
  ProjectsLocationsWorkflowTemplatesGet'
    { _plwtgXgafv = Nothing
    , _plwtgUploadProtocol = Nothing
    , _plwtgAccessToken = Nothing
    , _plwtgUploadType = Nothing
    , _plwtgName = pPlwtgName_
    , _plwtgVersion = Nothing
    , _plwtgCallback = Nothing
    }


-- | V1 error format.
plwtgXgafv :: Lens' ProjectsLocationsWorkflowTemplatesGet (Maybe Xgafv)
plwtgXgafv
  = lens _plwtgXgafv (\ s a -> s{_plwtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtgUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesGet (Maybe Text)
plwtgUploadProtocol
  = lens _plwtgUploadProtocol
      (\ s a -> s{_plwtgUploadProtocol = a})

-- | OAuth access token.
plwtgAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesGet (Maybe Text)
plwtgAccessToken
  = lens _plwtgAccessToken
      (\ s a -> s{_plwtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtgUploadType :: Lens' ProjectsLocationsWorkflowTemplatesGet (Maybe Text)
plwtgUploadType
  = lens _plwtgUploadType
      (\ s a -> s{_plwtgUploadType = a})

-- | Required. The resource name of the workflow template, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.workflowTemplates.get, the resource name of the
-- template has the following format:
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
-- For projects.locations.workflowTemplates.get, the resource name of the
-- template has the following format:
-- projects\/{project_id}\/locations\/{location}\/workflowTemplates\/{template_id}
plwtgName :: Lens' ProjectsLocationsWorkflowTemplatesGet Text
plwtgName
  = lens _plwtgName (\ s a -> s{_plwtgName = a})

-- | Optional. The version of workflow template to retrieve. Only previously
-- instantiated versions can be retrieved.If unspecified, retrieves the
-- current version.
plwtgVersion :: Lens' ProjectsLocationsWorkflowTemplatesGet (Maybe Int32)
plwtgVersion
  = lens _plwtgVersion (\ s a -> s{_plwtgVersion = a})
      . mapping _Coerce

-- | JSONP
plwtgCallback :: Lens' ProjectsLocationsWorkflowTemplatesGet (Maybe Text)
plwtgCallback
  = lens _plwtgCallback
      (\ s a -> s{_plwtgCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkflowTemplatesGet
         where
        type Rs ProjectsLocationsWorkflowTemplatesGet =
             WorkflowTemplate
        type Scopes ProjectsLocationsWorkflowTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesGet'{..}
          = go _plwtgName _plwtgXgafv _plwtgUploadProtocol
              _plwtgAccessToken
              _plwtgUploadType
              _plwtgVersion
              _plwtgCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsWorkflowTemplatesGetResource)
                      mempty
