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
-- Module      : Network.Google.Resource.ToolResults.Projects.Histories.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Histories for a given Project. The histories are sorted by
-- modification time in descending order. The history_id key will be used
-- to order the history with the same modification time. May return any of
-- the following canonical error codes: - PERMISSION_DENIED - if the user
-- is not authorized to read project - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the History does not exist
--
-- /See:/ <https://firebase.google.com/docs/test-lab/ Cloud Tool Results API Reference> for @toolresults.projects.histories.list@.
module Network.Google.Resource.ToolResults.Projects.Histories.List
    (
    -- * REST Resource
      ProjectsHistoriesListResource

    -- * Creating a Request
    , projectsHistoriesList
    , ProjectsHistoriesList

    -- * Request Lenses
    , phlFilterByName
    , phlPageToken
    , phlProjectId
    , phlPageSize
    ) where

import           Network.Google.Prelude
import           Network.Google.ToolResults.Types

-- | A resource alias for @toolresults.projects.histories.list@ method which the
-- 'ProjectsHistoriesList' request conforms to.
type ProjectsHistoriesListResource =
     "toolresults" :>
       "v1beta3" :>
         "projects" :>
           Capture "projectId" Text :>
             "histories" :>
               QueryParam "filterByName" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListHistoriesResponse

-- | Lists Histories for a given Project. The histories are sorted by
-- modification time in descending order. The history_id key will be used
-- to order the history with the same modification time. May return any of
-- the following canonical error codes: - PERMISSION_DENIED - if the user
-- is not authorized to read project - INVALID_ARGUMENT - if the request is
-- malformed - NOT_FOUND - if the History does not exist
--
-- /See:/ 'projectsHistoriesList' smart constructor.
data ProjectsHistoriesList =
  ProjectsHistoriesList'
    { _phlFilterByName :: !(Maybe Text)
    , _phlPageToken    :: !(Maybe Text)
    , _phlProjectId    :: !Text
    , _phlPageSize     :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsHistoriesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phlFilterByName'
--
-- * 'phlPageToken'
--
-- * 'phlProjectId'
--
-- * 'phlPageSize'
projectsHistoriesList
    :: Text -- ^ 'phlProjectId'
    -> ProjectsHistoriesList
projectsHistoriesList pPhlProjectId_ =
  ProjectsHistoriesList'
    { _phlFilterByName = Nothing
    , _phlPageToken = Nothing
    , _phlProjectId = pPhlProjectId_
    , _phlPageSize = Nothing
    }


-- | If set, only return histories with the given name. Optional.
phlFilterByName :: Lens' ProjectsHistoriesList (Maybe Text)
phlFilterByName
  = lens _phlFilterByName
      (\ s a -> s{_phlFilterByName = a})

-- | A continuation token to resume the query at the next item. Optional.
phlPageToken :: Lens' ProjectsHistoriesList (Maybe Text)
phlPageToken
  = lens _phlPageToken (\ s a -> s{_phlPageToken = a})

-- | A Project id. Required.
phlProjectId :: Lens' ProjectsHistoriesList Text
phlProjectId
  = lens _phlProjectId (\ s a -> s{_phlProjectId = a})

-- | The maximum number of Histories to fetch. Default value: 20. The server
-- will use this default if the field is not set or has a value of 0. Any
-- value greater than 100 will be treated as 100. Optional.
phlPageSize :: Lens' ProjectsHistoriesList (Maybe Int32)
phlPageSize
  = lens _phlPageSize (\ s a -> s{_phlPageSize = a}) .
      mapping _Coerce

instance GoogleRequest ProjectsHistoriesList where
        type Rs ProjectsHistoriesList = ListHistoriesResponse
        type Scopes ProjectsHistoriesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsHistoriesList'{..}
          = go _phlProjectId _phlFilterByName _phlPageToken
              _phlPageSize
              (Just AltJSON)
              toolResultsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsHistoriesListResource)
                      mempty
