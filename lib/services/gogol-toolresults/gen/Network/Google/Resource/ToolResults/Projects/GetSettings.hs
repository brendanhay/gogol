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
-- Module      : Network.Google.Resource.ToolResults.Projects.GetSettings
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Tool Results settings for a project. May return any of the
-- following canonical error codes: - PERMISSION_DENIED - if the user is
-- not authorized to read from project
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.getSettings@.
module Network.Google.Resource.ToolResults.Projects.GetSettings
    (
    -- * REST Resource
      ProjectsGetSettingsResource

    -- * Creating a Request
    , projectsGetSettings
    , ProjectsGetSettings

    -- * Request Lenses
    , pgsProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.getSettings@ method which the
-- 'ProjectsGetSettings' request conforms to.
type ProjectsGetSettingsResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "settings" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] ProjectSettings

-- | Gets the Tool Results settings for a project. May return any of the
-- following canonical error codes: - PERMISSION_DENIED - if the user is
-- not authorized to read from project
--
-- /See:/ 'projectsGetSettings' smart constructor.
newtype ProjectsGetSettings =
  ProjectsGetSettings'
    { _pgsProjectId :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsProjectId'
projectsGetSettings
    :: Text -- ^ 'pgsProjectId'
    -> ProjectsGetSettings
projectsGetSettings pPgsProjectId_ =
  ProjectsGetSettings' {_pgsProjectId = pPgsProjectId_}


-- | A Project id. Required.
pgsProjectId :: Lens' ProjectsGetSettings Text
pgsProjectId
  = lens _pgsProjectId (\ s a -> s{_pgsProjectId = a})

instance GoogleRequest ProjectsGetSettings where
        type Rs ProjectsGetSettings = ProjectSettings
        type Scopes ProjectsGetSettings =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsGetSettings'{..}
          = go _pgsProjectId (Just AltJSON) toolResultsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetSettingsResource)
                      mempty
