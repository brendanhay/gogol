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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a workflow template. It does not cancel in-progress workflows.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.delete@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Delete
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesDeleteResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesDelete
    , ProjectsLocationsWorkflowTemplatesDelete

    -- * Request Lenses
    , plwtdXgafv
    , plwtdUploadProtocol
    , plwtdAccessToken
    , plwtdUploadType
    , plwtdName
    , plwtdVersion
    , plwtdCallback
    ) where

import Network.Google.Dataproc.Types
import Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.delete@ method which the
-- 'ProjectsLocationsWorkflowTemplatesDelete' request conforms to.
type ProjectsLocationsWorkflowTemplatesDeleteResource
     =
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
-- /See:/ 'projectsLocationsWorkflowTemplatesDelete' smart constructor.
data ProjectsLocationsWorkflowTemplatesDelete =
  ProjectsLocationsWorkflowTemplatesDelete'
    { _plwtdXgafv :: !(Maybe Xgafv)
    , _plwtdUploadProtocol :: !(Maybe Text)
    , _plwtdAccessToken :: !(Maybe Text)
    , _plwtdUploadType :: !(Maybe Text)
    , _plwtdName :: !Text
    , _plwtdVersion :: !(Maybe (Textual Int32))
    , _plwtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtdXgafv'
--
-- * 'plwtdUploadProtocol'
--
-- * 'plwtdAccessToken'
--
-- * 'plwtdUploadType'
--
-- * 'plwtdName'
--
-- * 'plwtdVersion'
--
-- * 'plwtdCallback'
projectsLocationsWorkflowTemplatesDelete
    :: Text -- ^ 'plwtdName'
    -> ProjectsLocationsWorkflowTemplatesDelete
projectsLocationsWorkflowTemplatesDelete pPlwtdName_ =
  ProjectsLocationsWorkflowTemplatesDelete'
    { _plwtdXgafv = Nothing
    , _plwtdUploadProtocol = Nothing
    , _plwtdAccessToken = Nothing
    , _plwtdUploadType = Nothing
    , _plwtdName = pPlwtdName_
    , _plwtdVersion = Nothing
    , _plwtdCallback = Nothing
    }


-- | V1 error format.
plwtdXgafv :: Lens' ProjectsLocationsWorkflowTemplatesDelete (Maybe Xgafv)
plwtdXgafv
  = lens _plwtdXgafv (\ s a -> s{_plwtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtdUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesDelete (Maybe Text)
plwtdUploadProtocol
  = lens _plwtdUploadProtocol
      (\ s a -> s{_plwtdUploadProtocol = a})

-- | OAuth access token.
plwtdAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesDelete (Maybe Text)
plwtdAccessToken
  = lens _plwtdAccessToken
      (\ s a -> s{_plwtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtdUploadType :: Lens' ProjectsLocationsWorkflowTemplatesDelete (Maybe Text)
plwtdUploadType
  = lens _plwtdUploadType
      (\ s a -> s{_plwtdUploadType = a})

-- | Required. The resource name of the workflow template, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names. For
-- projects.regions.workflowTemplates.delete, the resource name of the
-- template has the following format:
-- projects\/{project_id}\/regions\/{region}\/workflowTemplates\/{template_id}
-- For projects.locations.workflowTemplates.instantiate, the resource name
-- of the template has the following format:
-- projects\/{project_id}\/locations\/{location}\/workflowTemplates\/{template_id}
plwtdName :: Lens' ProjectsLocationsWorkflowTemplatesDelete Text
plwtdName
  = lens _plwtdName (\ s a -> s{_plwtdName = a})

-- | Optional. The version of workflow template to delete. If specified, will
-- only delete the template if the current server version matches specified
-- version.
plwtdVersion :: Lens' ProjectsLocationsWorkflowTemplatesDelete (Maybe Int32)
plwtdVersion
  = lens _plwtdVersion (\ s a -> s{_plwtdVersion = a})
      . mapping _Coerce

-- | JSONP
plwtdCallback :: Lens' ProjectsLocationsWorkflowTemplatesDelete (Maybe Text)
plwtdCallback
  = lens _plwtdCallback
      (\ s a -> s{_plwtdCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkflowTemplatesDelete
         where
        type Rs ProjectsLocationsWorkflowTemplatesDelete =
             Empty
        type Scopes ProjectsLocationsWorkflowTemplatesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesDelete'{..}
          = go _plwtdName _plwtdXgafv _plwtdUploadProtocol
              _plwtdAccessToken
              _plwtdUploadType
              _plwtdVersion
              _plwtdCallback
              (Just AltJSON)
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkflowTemplatesDeleteResource)
                      mempty
