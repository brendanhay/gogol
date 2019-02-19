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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Executions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Execution. The returned Execution will have the id set. May
-- return any of the following canonical error codes: - PERMISSION_DENIED -
-- if the user is not authorized to write to project - INVALID_ARGUMENT -
-- if the request is malformed - NOT_FOUND - if the containing History does
-- not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.executions.create@.
module Network.Google.Resource.ToolResults.Projects.Histories.Executions.Create
    (
    -- * REST Resource
      ProjectsHistoriesExecutionsCreateResource

    -- * Creating a Request
    , projectsHistoriesExecutionsCreate
    , ProjectsHistoriesExecutionsCreate

    -- * Request Lenses
    , phecRequestId
    , phecPayload
    , phecHistoryId
    , phecProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.executions.create@ method which the
-- 'ProjectsHistoriesExecutionsCreate' request conforms to.
type ProjectsHistoriesExecutionsCreateResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 "executions" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Execution :> Post '[JSON] Execution

-- | Creates an Execution. The returned Execution will have the id set. May
-- return any of the following canonical error codes: - PERMISSION_DENIED -
-- if the user is not authorized to write to project - INVALID_ARGUMENT -
-- if the request is malformed - NOT_FOUND - if the containing History does
-- not exist
--
-- /See:/ 'projectsHistoriesExecutionsCreate' smart constructor.
data ProjectsHistoriesExecutionsCreate =
  ProjectsHistoriesExecutionsCreate'
    { _phecRequestId :: !(Maybe Text)
    , _phecPayload   :: !Execution
    , _phecHistoryId :: !Text
    , _phecProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesExecutionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phecRequestId'
--
-- * 'phecPayload'
--
-- * 'phecHistoryId'
--
-- * 'phecProjectId'
projectsHistoriesExecutionsCreate
    :: Execution -- ^ 'phecPayload'
    -> Text -- ^ 'phecHistoryId'
    -> Text -- ^ 'phecProjectId'
    -> ProjectsHistoriesExecutionsCreate
projectsHistoriesExecutionsCreate pPhecPayload_ pPhecHistoryId_ pPhecProjectId_ =
  ProjectsHistoriesExecutionsCreate'
    { _phecRequestId = Nothing
    , _phecPayload = pPhecPayload_
    , _phecHistoryId = pPhecHistoryId_
    , _phecProjectId = pPhecProjectId_
    }


-- | A unique request ID for server to detect duplicated requests. For
-- example, a UUID. Optional, but strongly recommended.
phecRequestId :: Lens' ProjectsHistoriesExecutionsCreate (Maybe Text)
phecRequestId
  = lens _phecRequestId
      (\ s a -> s{_phecRequestId = a})

-- | Multipart request metadata.
phecPayload :: Lens' ProjectsHistoriesExecutionsCreate Execution
phecPayload
  = lens _phecPayload (\ s a -> s{_phecPayload = a})

-- | A History id. Required.
phecHistoryId :: Lens' ProjectsHistoriesExecutionsCreate Text
phecHistoryId
  = lens _phecHistoryId
      (\ s a -> s{_phecHistoryId = a})

-- | A Project id. Required.
phecProjectId :: Lens' ProjectsHistoriesExecutionsCreate Text
phecProjectId
  = lens _phecProjectId
      (\ s a -> s{_phecProjectId = a})

instance GoogleRequest
           ProjectsHistoriesExecutionsCreate
         where
        type Rs ProjectsHistoriesExecutionsCreate = Execution
        type Scopes ProjectsHistoriesExecutionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsHistoriesExecutionsCreate'{..}
          = go _phecProjectId _phecHistoryId _phecRequestId
              (Just AltJSON)
              _phecPayload
              toolResultsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsHistoriesExecutionsCreateResource)
                      mempty
