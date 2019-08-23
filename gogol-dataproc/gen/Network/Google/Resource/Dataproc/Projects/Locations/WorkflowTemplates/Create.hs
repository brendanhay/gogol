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
-- Module      : Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new workflow template.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.workflowTemplates.create@.
module Network.Google.Resource.Dataproc.Projects.Locations.WorkflowTemplates.Create
    (
    -- * REST Resource
      ProjectsLocationsWorkflowTemplatesCreateResource

    -- * Creating a Request
    , projectsLocationsWorkflowTemplatesCreate
    , ProjectsLocationsWorkflowTemplatesCreate

    -- * Request Lenses
    , plwtcParent
    , plwtcXgafv
    , plwtcUploadProtocol
    , plwtcAccessToken
    , plwtcUploadType
    , plwtcPayload
    , plwtcCallback
    ) where

import           Network.Google.Dataproc.Types
import           Network.Google.Prelude

-- | A resource alias for @dataproc.projects.locations.workflowTemplates.create@ method which the
-- 'ProjectsLocationsWorkflowTemplatesCreate' request conforms to.
type ProjectsLocationsWorkflowTemplatesCreateResource
     =
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
-- /See:/ 'projectsLocationsWorkflowTemplatesCreate' smart constructor.
data ProjectsLocationsWorkflowTemplatesCreate =
  ProjectsLocationsWorkflowTemplatesCreate'
    { _plwtcParent         :: !Text
    , _plwtcXgafv          :: !(Maybe Xgafv)
    , _plwtcUploadProtocol :: !(Maybe Text)
    , _plwtcAccessToken    :: !(Maybe Text)
    , _plwtcUploadType     :: !(Maybe Text)
    , _plwtcPayload        :: !WorkflowTemplate
    , _plwtcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsWorkflowTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plwtcParent'
--
-- * 'plwtcXgafv'
--
-- * 'plwtcUploadProtocol'
--
-- * 'plwtcAccessToken'
--
-- * 'plwtcUploadType'
--
-- * 'plwtcPayload'
--
-- * 'plwtcCallback'
projectsLocationsWorkflowTemplatesCreate
    :: Text -- ^ 'plwtcParent'
    -> WorkflowTemplate -- ^ 'plwtcPayload'
    -> ProjectsLocationsWorkflowTemplatesCreate
projectsLocationsWorkflowTemplatesCreate pPlwtcParent_ pPlwtcPayload_ =
  ProjectsLocationsWorkflowTemplatesCreate'
    { _plwtcParent = pPlwtcParent_
    , _plwtcXgafv = Nothing
    , _plwtcUploadProtocol = Nothing
    , _plwtcAccessToken = Nothing
    , _plwtcUploadType = Nothing
    , _plwtcPayload = pPlwtcPayload_
    , _plwtcCallback = Nothing
    }


-- | Required. The \"resource name\" of the region, as described in
-- https:\/\/cloud.google.com\/apis\/design\/resource_names of the form
-- projects\/{project_id}\/regions\/{region}
plwtcParent :: Lens' ProjectsLocationsWorkflowTemplatesCreate Text
plwtcParent
  = lens _plwtcParent (\ s a -> s{_plwtcParent = a})

-- | V1 error format.
plwtcXgafv :: Lens' ProjectsLocationsWorkflowTemplatesCreate (Maybe Xgafv)
plwtcXgafv
  = lens _plwtcXgafv (\ s a -> s{_plwtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plwtcUploadProtocol :: Lens' ProjectsLocationsWorkflowTemplatesCreate (Maybe Text)
plwtcUploadProtocol
  = lens _plwtcUploadProtocol
      (\ s a -> s{_plwtcUploadProtocol = a})

-- | OAuth access token.
plwtcAccessToken :: Lens' ProjectsLocationsWorkflowTemplatesCreate (Maybe Text)
plwtcAccessToken
  = lens _plwtcAccessToken
      (\ s a -> s{_plwtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plwtcUploadType :: Lens' ProjectsLocationsWorkflowTemplatesCreate (Maybe Text)
plwtcUploadType
  = lens _plwtcUploadType
      (\ s a -> s{_plwtcUploadType = a})

-- | Multipart request metadata.
plwtcPayload :: Lens' ProjectsLocationsWorkflowTemplatesCreate WorkflowTemplate
plwtcPayload
  = lens _plwtcPayload (\ s a -> s{_plwtcPayload = a})

-- | JSONP
plwtcCallback :: Lens' ProjectsLocationsWorkflowTemplatesCreate (Maybe Text)
plwtcCallback
  = lens _plwtcCallback
      (\ s a -> s{_plwtcCallback = a})

instance GoogleRequest
           ProjectsLocationsWorkflowTemplatesCreate
         where
        type Rs ProjectsLocationsWorkflowTemplatesCreate =
             WorkflowTemplate
        type Scopes ProjectsLocationsWorkflowTemplatesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsWorkflowTemplatesCreate'{..}
          = go _plwtcParent _plwtcXgafv _plwtcUploadProtocol
              _plwtcAccessToken
              _plwtcUploadType
              _plwtcCallback
              (Just AltJSON)
              _plwtcPayload
              dataprocService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsWorkflowTemplatesCreateResource)
                      mempty
