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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of projects, possibly filtered. This method supports
-- paging .
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.projects.list@.
module Network.Google.Resource.DFAReporting.Projects.List
    (
    -- * REST Resource
      ProjectsListResource

    -- * Creating a Request
    , projectsList
    , ProjectsList

    -- * Request Lenses
    , plXgafv
    , plUploadProtocol
    , plAccessToken
    , plSearchString
    , plUploadType
    , plIds
    , plProFileId
    , plSortOrder
    , plPageToken
    , plSortField
    , plAdvertiserIds
    , plMaxResults
    , plCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.projects.list@ method which the
-- 'ProjectsList' request conforms to.
type ProjectsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "projects" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "searchString" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParams "ids" (Textual Int64) :>
                           QueryParam "sortOrder" ProjectsListSortOrder :>
                             QueryParam "pageToken" Text :>
                               QueryParam "sortField" ProjectsListSortField :>
                                 QueryParams "advertiserIds" (Textual Int64) :>
                                   QueryParam "maxResults" (Textual Int32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ProjectsListResponse

-- | Retrieves a list of projects, possibly filtered. This method supports
-- paging .
--
-- /See:/ 'projectsList' smart constructor.
data ProjectsList =
  ProjectsList'
    { _plXgafv :: !(Maybe Xgafv)
    , _plUploadProtocol :: !(Maybe Text)
    , _plAccessToken :: !(Maybe Text)
    , _plSearchString :: !(Maybe Text)
    , _plUploadType :: !(Maybe Text)
    , _plIds :: !(Maybe [Textual Int64])
    , _plProFileId :: !(Textual Int64)
    , _plSortOrder :: !ProjectsListSortOrder
    , _plPageToken :: !(Maybe Text)
    , _plSortField :: !ProjectsListSortField
    , _plAdvertiserIds :: !(Maybe [Textual Int64])
    , _plMaxResults :: !(Textual Int32)
    , _plCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plXgafv'
--
-- * 'plUploadProtocol'
--
-- * 'plAccessToken'
--
-- * 'plSearchString'
--
-- * 'plUploadType'
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
--
-- * 'plCallback'
projectsList
    :: Int64 -- ^ 'plProFileId'
    -> ProjectsList
projectsList pPlProFileId_ =
  ProjectsList'
    { _plXgafv = Nothing
    , _plUploadProtocol = Nothing
    , _plAccessToken = Nothing
    , _plSearchString = Nothing
    , _plUploadType = Nothing
    , _plIds = Nothing
    , _plProFileId = _Coerce # pPlProFileId_
    , _plSortOrder = PLSOAscending
    , _plPageToken = Nothing
    , _plSortField = PID
    , _plAdvertiserIds = Nothing
    , _plMaxResults = 1000
    , _plCallback = Nothing
    }


-- | V1 error format.
plXgafv :: Lens' ProjectsList (Maybe Xgafv)
plXgafv = lens _plXgafv (\ s a -> s{_plXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plUploadProtocol :: Lens' ProjectsList (Maybe Text)
plUploadProtocol
  = lens _plUploadProtocol
      (\ s a -> s{_plUploadProtocol = a})

-- | OAuth access token.
plAccessToken :: Lens' ProjectsList (Maybe Text)
plAccessToken
  = lens _plAccessToken
      (\ s a -> s{_plAccessToken = a})

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

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plUploadType :: Lens' ProjectsList (Maybe Text)
plUploadType
  = lens _plUploadType (\ s a -> s{_plUploadType = a})

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

-- | Order of sorted results.
plSortOrder :: Lens' ProjectsList ProjectsListSortOrder
plSortOrder
  = lens _plSortOrder (\ s a -> s{_plSortOrder = a})

-- | Value of the nextPageToken from the previous result page.
plPageToken :: Lens' ProjectsList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Field by which to sort the list.
plSortField :: Lens' ProjectsList ProjectsListSortField
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
plMaxResults :: Lens' ProjectsList Int32
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . _Coerce

-- | JSONP
plCallback :: Lens' ProjectsList (Maybe Text)
plCallback
  = lens _plCallback (\ s a -> s{_plCallback = a})

instance GoogleRequest ProjectsList where
        type Rs ProjectsList = ProjectsListResponse
        type Scopes ProjectsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ProjectsList'{..}
          = go _plProFileId _plXgafv _plUploadProtocol
              _plAccessToken
              _plSearchString
              _plUploadType
              (_plIds ^. _Default)
              (Just _plSortOrder)
              _plPageToken
              (Just _plSortField)
              (_plAdvertiserIds ^. _Default)
              (Just _plMaxResults)
              _plCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ProjectsListResource)
                      mempty
