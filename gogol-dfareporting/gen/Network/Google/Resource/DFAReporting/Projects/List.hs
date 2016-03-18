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
-- Module      : Network.Google.Resource.DFAReporting.Projects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of projects, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.projects.list@.
module Network.Google.Resource.DFAReporting.Projects.List
    (
    -- * REST Resource
      ProjectsListResource

    -- * Creating a Request
    , projectsList
    , ProjectsList

    -- * Request Lenses
    , plSearchString
    , plIds
    , plProFileId
    , plSortOrder
    , plPageToken
    , plSortField
    , plAdvertiserIds
    , plMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.projects.list@ method which the
-- 'ProjectsList' request conforms to.
type ProjectsListResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "projects" :>
               QueryParam "searchString" Text :>
                 QueryParams "ids" (Textual Int64) :>
                   QueryParam "sortOrder" ProjectsListSortOrder :>
                     QueryParam "pageToken" Text :>
                       QueryParam "sortField" ProjectsListSortField :>
                         QueryParams "advertiserIds" (Textual Int64) :>
                           QueryParam "maxResults" (Textual Int32) :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ProjectsListResponse

-- | Retrieves a list of projects, possibly filtered.
--
-- /See:/ 'projectsList' smart constructor.
data ProjectsList = ProjectsList
    { _plSearchString  :: !(Maybe Text)
    , _plIds           :: !(Maybe [Textual Int64])
    , _plProFileId     :: !(Textual Int64)
    , _plSortOrder     :: !(Maybe ProjectsListSortOrder)
    , _plPageToken     :: !(Maybe Text)
    , _plSortField     :: !(Maybe ProjectsListSortField)
    , _plAdvertiserIds :: !(Maybe [Textual Int64])
    , _plMaxResults    :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plSearchString'
--
-- * 'plIds'
--
-- * 'plProFileId'
--
-- * 'plSortOrder'
--
-- * 'plPageToken'
--
-- * 'plSortField'
--
-- * 'plAdvertiserIds'
--
-- * 'plMaxResults'
projectsList
    :: Int64 -- ^ 'plProFileId'
    -> ProjectsList
projectsList pPlProFileId_ =
    ProjectsList
    { _plSearchString = Nothing
    , _plIds = Nothing
    , _plProFileId = _Coerce # pPlProFileId_
    , _plSortOrder = Nothing
    , _plPageToken = Nothing
    , _plSortField = Nothing
    , _plAdvertiserIds = Nothing
    , _plMaxResults = Nothing
    }

-- | Allows searching for projects by name or ID. Wildcards (*) are allowed.
-- For example, \"project*2015\" will return projects with names like
-- \"project June 2015\", \"project April 2015\", or simply \"project
-- 2015\". Most of the searches also add wildcards implicitly at the start
-- and the end of the search string. For example, a search string of
-- \"project\" will match projects with name \"my project\", \"project
-- 2015\", or simply \"project\".
plSearchString :: Lens' ProjectsList (Maybe Text)
plSearchString
  = lens _plSearchString
      (\ s a -> s{_plSearchString = a})

-- | Select only projects with these IDs.
plIds :: Lens' ProjectsList [Int64]
plIds
  = lens _plIds (\ s a -> s{_plIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
plProFileId :: Lens' ProjectsList Int64
plProFileId
  = lens _plProFileId (\ s a -> s{_plProFileId = a}) .
      _Coerce

-- | Order of sorted results, default is ASCENDING.
plSortOrder :: Lens' ProjectsList (Maybe ProjectsListSortOrder)
plSortOrder
  = lens _plSortOrder (\ s a -> s{_plSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
plPageToken :: Lens' ProjectsList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Field by which to sort the list.
plSortField :: Lens' ProjectsList (Maybe ProjectsListSortField)
plSortField
  = lens _plSortField (\ s a -> s{_plSortField = a})

-- | Select only projects with these advertiser IDs.
plAdvertiserIds :: Lens' ProjectsList [Int64]
plAdvertiserIds
  = lens _plAdvertiserIds
      (\ s a -> s{_plAdvertiserIds = a})
      . _Default
      . _Coerce

-- | Maximum number of results to return.
plMaxResults :: Lens' ProjectsList (Maybe Int32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ProjectsList where
        type Rs ProjectsList = ProjectsListResponse
        requestClient ProjectsList{..}
          = go _plProFileId _plSearchString
              (_plIds ^. _Default)
              _plSortOrder
              _plPageToken
              _plSortField
              (_plAdvertiserIds ^. _Default)
              _plMaxResults
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ProjectsListResource)
                      mempty
