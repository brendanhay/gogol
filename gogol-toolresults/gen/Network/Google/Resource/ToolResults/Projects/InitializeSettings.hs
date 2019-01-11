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
-- Module      : Network.Google.Resource.ToolResults.Projects.InitializeSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates resources for settings which have not yet been set. Currently,
-- this creates a single resource: a Google Cloud Storage bucket, to be
-- used as the default bucket for this project. The bucket is created in an
-- FTL-own storage project. Except for in rare cases, calling this method
-- in parallel from multiple clients will only create a single bucket. In
-- order to avoid unnecessary storage charges, the bucket is configured to
-- automatically delete objects older than 90 days. The bucket is created
-- with the following permissions: - Owner access for owners of central
-- storage project (FTL-owned) - Writer access for owners\/editors of
-- customer project - Reader access for viewers of customer project The
-- default ACL on objects created in the bucket is: - Owner access for
-- owners of central storage project - Reader access for
-- owners\/editors\/viewers of customer project See Google Cloud Storage
-- documentation for more details. If there is already a default bucket set
-- and the project can access the bucket, this call does nothing. However,
-- if the project doesn\'t have the permission to access the bucket or the
-- bucket is deleted, a new bucket will be created. May return any
-- canonical error codes, including the following: - PERMISSION_DENIED - if
-- the user is not authorized to write to project - Any error code raised
-- by Google Cloud Storage
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.initializeSettings@.
module Network.Google.Resource.ToolResults.Projects.InitializeSettings
    (
    -- * REST Resource
      ProjectsInitializeSettingsResource

    -- * Creating a Request
    , projectsInitializeSettings
    , ProjectsInitializeSettings

    -- * Request Lenses
    , pisProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.initializeSettings@ method which the
-- 'ProjectsInitializeSettings' request conforms to.
type ProjectsInitializeSettingsResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           CaptureMode "projectId" "initializeSettings" Text :>
             QueryParam "alt" AltJSON :>
               Post '[JSON] ProjectSettings

-- | Creates resources for settings which have not yet been set. Currently,
-- this creates a single resource: a Google Cloud Storage bucket, to be
-- used as the default bucket for this project. The bucket is created in an
-- FTL-own storage project. Except for in rare cases, calling this method
-- in parallel from multiple clients will only create a single bucket. In
-- order to avoid unnecessary storage charges, the bucket is configured to
-- automatically delete objects older than 90 days. The bucket is created
-- with the following permissions: - Owner access for owners of central
-- storage project (FTL-owned) - Writer access for owners\/editors of
-- customer project - Reader access for viewers of customer project The
-- default ACL on objects created in the bucket is: - Owner access for
-- owners of central storage project - Reader access for
-- owners\/editors\/viewers of customer project See Google Cloud Storage
-- documentation for more details. If there is already a default bucket set
-- and the project can access the bucket, this call does nothing. However,
-- if the project doesn\'t have the permission to access the bucket or the
-- bucket is deleted, a new bucket will be created. May return any
-- canonical error codes, including the following: - PERMISSION_DENIED - if
-- the user is not authorized to write to project - Any error code raised
-- by Google Cloud Storage
--
-- /See:/ 'projectsInitializeSettings' smart constructor.
newtype ProjectsInitializeSettings = ProjectsInitializeSettings'
    { _pisProjectId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsInitializeSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pisProjectId'
projectsInitializeSettings
    :: Text -- ^ 'pisProjectId'
    -> ProjectsInitializeSettings
projectsInitializeSettings pPisProjectId_ =
    ProjectsInitializeSettings'
    { _pisProjectId = pPisProjectId_
    }

-- | A Project id. Required.
pisProjectId :: Lens' ProjectsInitializeSettings Text
pisProjectId
  = lens _pisProjectId (\ s a -> s{_pisProjectId = a})

instance GoogleRequest ProjectsInitializeSettings
         where
        type Rs ProjectsInitializeSettings = ProjectSettings
        type Scopes ProjectsInitializeSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInitializeSettings'{..}
          = go _pisProjectId (Just AltJSON) toolResultsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInitializeSettingsResource)
                      mempty
