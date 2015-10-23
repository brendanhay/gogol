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
-- Module      : Network.Google.Resource.BigQuery.Projects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all projects to which you have been granted any project role.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.projects.list@.
module Network.Google.Resource.BigQuery.Projects.List
    (
    -- * REST Resource
      ProjectsListResource

    -- * Creating a Request
    , projectsList
    , ProjectsList

    -- * Request Lenses
    , plPageToken
    , plMaxResults
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @bigquery.projects.list@ method which the
-- 'ProjectsList' request conforms to.
type ProjectsListResource =
     "bigquery" :>
       "v2" :>
         "projects" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :> Get '[JSON] ProjectList

-- | Lists all projects to which you have been granted any project role.
--
-- /See:/ 'projectsList' smart constructor.
data ProjectsList = ProjectsList
    { _plPageToken  :: !(Maybe Text)
    , _plMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
projectsList
    :: ProjectsList
projectsList =
    ProjectsList
    { _plPageToken = Nothing
    , _plMaxResults = Nothing
    }

-- | Page token, returned by a previous call, to request the next page of
-- results
plPageToken :: Lens' ProjectsList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Maximum number of results to return
plMaxResults :: Lens' ProjectsList (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

instance GoogleRequest ProjectsList where
        type Rs ProjectsList = ProjectList
        requestClient ProjectsList{..}
          = go _plPageToken _plMaxResults (Just AltJSON)
              bigQueryService
          where go
                  = buildClient (Proxy :: Proxy ProjectsListResource)
                      mempty
