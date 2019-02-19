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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a History. The returned History will have the id set. May return
-- any of the following canonical error codes: - PERMISSION_DENIED - if the
-- user is not authorized to write to project - INVALID_ARGUMENT - if the
-- request is malformed - NOT_FOUND - if the containing project does not
-- exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.create@.
module Network.Google.Resource.ToolResults.Projects.Histories.Create
    (
    -- * REST Resource
      ProjectsHistoriesCreateResource

    -- * Creating a Request
    , projectsHistoriesCreate
    , ProjectsHistoriesCreate

    -- * Request Lenses
    , phcRequestId
    , phcPayload
    , phcProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.create@ method which the
-- 'ProjectsHistoriesCreate' request conforms to.
type ProjectsHistoriesCreateResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] History :> Post '[JSON] History

-- | Creates a History. The returned History will have the id set. May return
-- any of the following canonical error codes: - PERMISSION_DENIED - if the
-- user is not authorized to write to project - INVALID_ARGUMENT - if the
-- request is malformed - NOT_FOUND - if the containing project does not
-- exist
--
-- /See:/ 'projectsHistoriesCreate' smart constructor.
data ProjectsHistoriesCreate =
  ProjectsHistoriesCreate'
    { _phcRequestId :: !(Maybe Text)
    , _phcPayload   :: !History
    , _phcProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsHistoriesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phcRequestId'
--
-- * 'phcPayload'
--
-- * 'phcProjectId'
projectsHistoriesCreate
    :: History -- ^ 'phcPayload'
    -> Text -- ^ 'phcProjectId'
    -> ProjectsHistoriesCreate
projectsHistoriesCreate pPhcPayload_ pPhcProjectId_ =
  ProjectsHistoriesCreate'
    { _phcRequestId = Nothing
    , _phcPayload = pPhcPayload_
    , _phcProjectId = pPhcProjectId_
    }

-- | A unique request ID for server to detect duplicated requests. For
-- example, a UUID. Optional, but strongly recommended.
phcRequestId :: Lens' ProjectsHistoriesCreate (Maybe Text)
phcRequestId
  = lens _phcRequestId (\ s a -> s{_phcRequestId = a})

-- | Multipart request metadata.
phcPayload :: Lens' ProjectsHistoriesCreate History
phcPayload
  = lens _phcPayload (\ s a -> s{_phcPayload = a})

-- | A Project id. Required.
phcProjectId :: Lens' ProjectsHistoriesCreate Text
phcProjectId
  = lens _phcProjectId (\ s a -> s{_phcProjectId = a})

instance GoogleRequest ProjectsHistoriesCreate where
        type Rs ProjectsHistoriesCreate = History
        type Scopes ProjectsHistoriesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsHistoriesCreate'{..}
          = go _phcProjectId _phcRequestId (Just AltJSON)
              _phcPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsHistoriesCreateResource)
                      mempty
