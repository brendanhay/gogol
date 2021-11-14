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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a History. May return any of the following canonical error codes: -
-- PERMISSION_DENIED - if the user is not authorized to read project -
-- INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the
-- History does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.get@.
module Network.Google.Resource.ToolResults.Projects.Histories.Get
    (
    -- * REST Resource
      ProjectsHistoriesGetResource

    -- * Creating a Request
    , projectsHistoriesGet
    , ProjectsHistoriesGet

    -- * Request Lenses
    , phgHistoryId
    , phgProjectId
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.get@ method which the
-- 'ProjectsHistoriesGet' request conforms to.
type ProjectsHistoriesGetResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               Capture "historyId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] History

-- | Gets a History. May return any of the following canonical error codes: -
-- PERMISSION_DENIED - if the user is not authorized to read project -
-- INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the
-- History does not exist
--
-- /See:/ 'projectsHistoriesGet' smart constructor.
data ProjectsHistoriesGet =
  ProjectsHistoriesGet'
    { _phgHistoryId :: !Text
    , _phgProjectId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phgHistoryId'
--
-- * 'phgProjectId'
projectsHistoriesGet
    :: Text -- ^ 'phgHistoryId'
    -> Text -- ^ 'phgProjectId'
    -> ProjectsHistoriesGet
projectsHistoriesGet pPhgHistoryId_ pPhgProjectId_ =
  ProjectsHistoriesGet'
    {_phgHistoryId = pPhgHistoryId_, _phgProjectId = pPhgProjectId_}


-- | A History id. Required.
phgHistoryId :: Lens' ProjectsHistoriesGet Text
phgHistoryId
  = lens _phgHistoryId (\ s a -> s{_phgHistoryId = a})

-- | A Project id. Required.
phgProjectId :: Lens' ProjectsHistoriesGet Text
phgProjectId
  = lens _phgProjectId (\ s a -> s{_phgProjectId = a})

instance GoogleRequest ProjectsHistoriesGet where
        type Rs ProjectsHistoriesGet = History
        type Scopes ProjectsHistoriesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsHistoriesGet'{..}
          = go _phgProjectId _phgHistoryId (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsHistoriesGetResource)
                      mempty
