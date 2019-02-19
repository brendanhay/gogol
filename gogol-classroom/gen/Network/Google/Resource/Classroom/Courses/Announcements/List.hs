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
-- Module      : Network.Google.Resource.Classroom.Courses.Announcements.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of announcements that the requester is permitted to view.
-- Course students may only view \`PUBLISHED\` announcements. Course
-- teachers and domain administrators may view all announcements. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting user is not permitted to access the requested course or for
-- access errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.list@.
module Network.Google.Resource.Classroom.Courses.Announcements.List
    (
    -- * REST Resource
      CoursesAnnouncementsListResource

    -- * Creating a Request
    , coursesAnnouncementsList
    , CoursesAnnouncementsList

    -- * Request Lenses
    , calXgafv
    , calUploadProtocol
    , calOrderBy
    , calAnnouncementStates
    , calCourseId
    , calAccessToken
    , calUploadType
    , calPageToken
    , calPageSize
    , calCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.announcements.list@ method which the
-- 'CoursesAnnouncementsList' request conforms to.
type CoursesAnnouncementsListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "announcements" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParams "announcementStates" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListAnnouncementsResponse

-- | Returns a list of announcements that the requester is permitted to view.
-- Course students may only view \`PUBLISHED\` announcements. Course
-- teachers and domain administrators may view all announcements. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting user is not permitted to access the requested course or for
-- access errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course does not exist.
--
-- /See:/ 'coursesAnnouncementsList' smart constructor.
data CoursesAnnouncementsList =
  CoursesAnnouncementsList'
    { _calXgafv              :: !(Maybe Xgafv)
    , _calUploadProtocol     :: !(Maybe Text)
    , _calOrderBy            :: !(Maybe Text)
    , _calAnnouncementStates :: !(Maybe [Text])
    , _calCourseId           :: !Text
    , _calAccessToken        :: !(Maybe Text)
    , _calUploadType         :: !(Maybe Text)
    , _calPageToken          :: !(Maybe Text)
    , _calPageSize           :: !(Maybe (Textual Int32))
    , _calCallback           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesAnnouncementsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calXgafv'
--
-- * 'calUploadProtocol'
--
-- * 'calOrderBy'
--
-- * 'calAnnouncementStates'
--
-- * 'calCourseId'
--
-- * 'calAccessToken'
--
-- * 'calUploadType'
--
-- * 'calPageToken'
--
-- * 'calPageSize'
--
-- * 'calCallback'
coursesAnnouncementsList
    :: Text -- ^ 'calCourseId'
    -> CoursesAnnouncementsList
coursesAnnouncementsList pCalCourseId_ =
  CoursesAnnouncementsList'
    { _calXgafv = Nothing
    , _calUploadProtocol = Nothing
    , _calOrderBy = Nothing
    , _calAnnouncementStates = Nothing
    , _calCourseId = pCalCourseId_
    , _calAccessToken = Nothing
    , _calUploadType = Nothing
    , _calPageToken = Nothing
    , _calPageSize = Nothing
    , _calCallback = Nothing
    }


-- | V1 error format.
calXgafv :: Lens' CoursesAnnouncementsList (Maybe Xgafv)
calXgafv = lens _calXgafv (\ s a -> s{_calXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
calUploadProtocol :: Lens' CoursesAnnouncementsList (Maybe Text)
calUploadProtocol
  = lens _calUploadProtocol
      (\ s a -> s{_calUploadProtocol = a})

-- | Optional sort ordering for results. A comma-separated list of fields
-- with an optional sort direction keyword. Supported field is
-- \`updateTime\`. Supported direction keywords are \`asc\` and \`desc\`.
-- If not specified, \`updateTime desc\` is the default behavior. Examples:
-- \`updateTime asc\`, \`updateTime\`
calOrderBy :: Lens' CoursesAnnouncementsList (Maybe Text)
calOrderBy
  = lens _calOrderBy (\ s a -> s{_calOrderBy = a})

-- | Restriction on the \`state\` of announcements returned. If this argument
-- is left unspecified, the default value is \`PUBLISHED\`.
calAnnouncementStates :: Lens' CoursesAnnouncementsList [Text]
calAnnouncementStates
  = lens _calAnnouncementStates
      (\ s a -> s{_calAnnouncementStates = a})
      . _Default
      . _Coerce

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
calCourseId :: Lens' CoursesAnnouncementsList Text
calCourseId
  = lens _calCourseId (\ s a -> s{_calCourseId = a})

-- | OAuth access token.
calAccessToken :: Lens' CoursesAnnouncementsList (Maybe Text)
calAccessToken
  = lens _calAccessToken
      (\ s a -> s{_calAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
calUploadType :: Lens' CoursesAnnouncementsList (Maybe Text)
calUploadType
  = lens _calUploadType
      (\ s a -> s{_calUploadType = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
calPageToken :: Lens' CoursesAnnouncementsList (Maybe Text)
calPageToken
  = lens _calPageToken (\ s a -> s{_calPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
calPageSize :: Lens' CoursesAnnouncementsList (Maybe Int32)
calPageSize
  = lens _calPageSize (\ s a -> s{_calPageSize = a}) .
      mapping _Coerce

-- | JSONP
calCallback :: Lens' CoursesAnnouncementsList (Maybe Text)
calCallback
  = lens _calCallback (\ s a -> s{_calCallback = a})

instance GoogleRequest CoursesAnnouncementsList where
        type Rs CoursesAnnouncementsList =
             ListAnnouncementsResponse
        type Scopes CoursesAnnouncementsList =
             '["https://www.googleapis.com/auth/classroom.announcements",
               "https://www.googleapis.com/auth/classroom.announcements.readonly"]
        requestClient CoursesAnnouncementsList'{..}
          = go _calCourseId _calXgafv _calUploadProtocol
              _calOrderBy
              (_calAnnouncementStates ^. _Default)
              _calAccessToken
              _calUploadType
              _calPageToken
              _calPageSize
              _calCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesAnnouncementsListResource)
                      mempty
