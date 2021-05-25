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
-- Module      : Network.Google.Resource.Classroom.Courses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of courses that the requesting user is permitted to view,
-- restricted to those that match the request. Returned courses are ordered
-- by creation time, with the most recently created coming first. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` for
-- access errors. * \`INVALID_ARGUMENT\` if the query argument is
-- malformed. * \`NOT_FOUND\` if any users specified in the query arguments
-- do not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.list@.
module Network.Google.Resource.Classroom.Courses.List
    (
    -- * REST Resource
      CoursesListResource

    -- * Creating a Request
    , coursesList
    , CoursesList

    -- * Request Lenses
    , clStudentId
    , clXgafv
    , clUploadProtocol
    , clAccessToken
    , clUploadType
    , clTeacherId
    , clPageToken
    , clPageSize
    , clCourseStates
    , clCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.list@ method which the
-- 'CoursesList' request conforms to.
type CoursesListResource =
     "v1" :>
       "courses" :>
         QueryParam "studentId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "teacherId" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParams "courseStates" CoursesListCourseStates :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListCoursesResponse

-- | Returns a list of courses that the requesting user is permitted to view,
-- restricted to those that match the request. Returned courses are ordered
-- by creation time, with the most recently created coming first. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` for
-- access errors. * \`INVALID_ARGUMENT\` if the query argument is
-- malformed. * \`NOT_FOUND\` if any users specified in the query arguments
-- do not exist.
--
-- /See:/ 'coursesList' smart constructor.
data CoursesList =
  CoursesList'
    { _clStudentId :: !(Maybe Text)
    , _clXgafv :: !(Maybe Xgafv)
    , _clUploadProtocol :: !(Maybe Text)
    , _clAccessToken :: !(Maybe Text)
    , _clUploadType :: !(Maybe Text)
    , _clTeacherId :: !(Maybe Text)
    , _clPageToken :: !(Maybe Text)
    , _clPageSize :: !(Maybe (Textual Int32))
    , _clCourseStates :: !(Maybe [CoursesListCourseStates])
    , _clCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clStudentId'
--
-- * 'clXgafv'
--
-- * 'clUploadProtocol'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clTeacherId'
--
-- * 'clPageToken'
--
-- * 'clPageSize'
--
-- * 'clCourseStates'
--
-- * 'clCallback'
coursesList
    :: CoursesList
coursesList =
  CoursesList'
    { _clStudentId = Nothing
    , _clXgafv = Nothing
    , _clUploadProtocol = Nothing
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clTeacherId = Nothing
    , _clPageToken = Nothing
    , _clPageSize = Nothing
    , _clCourseStates = Nothing
    , _clCallback = Nothing
    }


-- | Restricts returned courses to those having a student with the specified
-- identifier. The identifier can be one of the following: * the numeric
-- identifier for the user * the email address of the user * the string
-- literal \`\"me\"\`, indicating the requesting user
clStudentId :: Lens' CoursesList (Maybe Text)
clStudentId
  = lens _clStudentId (\ s a -> s{_clStudentId = a})

-- | V1 error format.
clXgafv :: Lens' CoursesList (Maybe Xgafv)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CoursesList (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | OAuth access token.
clAccessToken :: Lens' CoursesList (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CoursesList (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | Restricts returned courses to those having a teacher with the specified
-- identifier. The identifier can be one of the following: * the numeric
-- identifier for the user * the email address of the user * the string
-- literal \`\"me\"\`, indicating the requesting user
clTeacherId :: Lens' CoursesList (Maybe Text)
clTeacherId
  = lens _clTeacherId (\ s a -> s{_clTeacherId = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
clPageToken :: Lens' CoursesList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
clPageSize :: Lens' CoursesList (Maybe Int32)
clPageSize
  = lens _clPageSize (\ s a -> s{_clPageSize = a}) .
      mapping _Coerce

-- | Restricts returned courses to those in one of the specified states The
-- default value is ACTIVE, ARCHIVED, PROVISIONED, DECLINED.
clCourseStates :: Lens' CoursesList [CoursesListCourseStates]
clCourseStates
  = lens _clCourseStates
      (\ s a -> s{_clCourseStates = a})
      . _Default
      . _Coerce

-- | JSONP
clCallback :: Lens' CoursesList (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleRequest CoursesList where
        type Rs CoursesList = ListCoursesResponse
        type Scopes CoursesList =
             '["https://www.googleapis.com/auth/classroom.courses",
               "https://www.googleapis.com/auth/classroom.courses.readonly"]
        requestClient CoursesList'{..}
          = go _clStudentId _clXgafv _clUploadProtocol
              _clAccessToken
              _clUploadType
              _clTeacherId
              _clPageToken
              _clPageSize
              (_clCourseStates ^. _Default)
              _clCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient (Proxy :: Proxy CoursesListResource)
                      mempty
