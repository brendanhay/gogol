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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of student submissions that the requester is permitted to
-- view, factoring in the OAuth scopes of the request. \`-\` may be
-- specified as the \`course_work_id\` to include student submissions for
-- multiple course work items. Course students may only view their own
-- work. Course teachers and domain administrators may view all student
-- submissions. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or course work, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.list@.
module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.List
    (
    -- * REST Resource
      CoursesCourseWorkStudentSubmissionsListResource

    -- * Creating a Request
    , coursesCourseWorkStudentSubmissionsList
    , CoursesCourseWorkStudentSubmissionsList

    -- * Request Lenses
    , ccwsslStates
    , ccwsslXgafv
    , ccwsslLate
    , ccwsslUploadProtocol
    , ccwsslCourseId
    , ccwsslAccessToken
    , ccwsslUploadType
    , ccwsslUserId
    , ccwsslPageToken
    , ccwsslPageSize
    , ccwsslCallback
    , ccwsslCourseWorkId
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.list@ method which the
-- 'CoursesCourseWorkStudentSubmissionsList' request conforms to.
type CoursesCourseWorkStudentSubmissionsListResource
     =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "courseWorkId" Text :>
               "studentSubmissions" :>
                 QueryParams "states"
                   CoursesCourseWorkStudentSubmissionsListStates
                   :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "late"
                       CoursesCourseWorkStudentSubmissionsListLate
                       :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "userId" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON]
                                         ListStudentSubmissionsResponse

-- | Returns a list of student submissions that the requester is permitted to
-- view, factoring in the OAuth scopes of the request. \`-\` may be
-- specified as the \`course_work_id\` to include student submissions for
-- multiple course work items. Course students may only view their own
-- work. Course teachers and domain administrators may view all student
-- submissions. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or course work, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course does not exist.
--
-- /See:/ 'coursesCourseWorkStudentSubmissionsList' smart constructor.
data CoursesCourseWorkStudentSubmissionsList =
  CoursesCourseWorkStudentSubmissionsList'
    { _ccwsslStates :: !(Maybe [CoursesCourseWorkStudentSubmissionsListStates])
    , _ccwsslXgafv :: !(Maybe Xgafv)
    , _ccwsslLate :: !(Maybe CoursesCourseWorkStudentSubmissionsListLate)
    , _ccwsslUploadProtocol :: !(Maybe Text)
    , _ccwsslCourseId :: !Text
    , _ccwsslAccessToken :: !(Maybe Text)
    , _ccwsslUploadType :: !(Maybe Text)
    , _ccwsslUserId :: !(Maybe Text)
    , _ccwsslPageToken :: !(Maybe Text)
    , _ccwsslPageSize :: !(Maybe (Textual Int32))
    , _ccwsslCallback :: !(Maybe Text)
    , _ccwsslCourseWorkId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkStudentSubmissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwsslStates'
--
-- * 'ccwsslXgafv'
--
-- * 'ccwsslLate'
--
-- * 'ccwsslUploadProtocol'
--
-- * 'ccwsslCourseId'
--
-- * 'ccwsslAccessToken'
--
-- * 'ccwsslUploadType'
--
-- * 'ccwsslUserId'
--
-- * 'ccwsslPageToken'
--
-- * 'ccwsslPageSize'
--
-- * 'ccwsslCallback'
--
-- * 'ccwsslCourseWorkId'
coursesCourseWorkStudentSubmissionsList
    :: Text -- ^ 'ccwsslCourseId'
    -> Text -- ^ 'ccwsslCourseWorkId'
    -> CoursesCourseWorkStudentSubmissionsList
coursesCourseWorkStudentSubmissionsList pCcwsslCourseId_ pCcwsslCourseWorkId_ =
  CoursesCourseWorkStudentSubmissionsList'
    { _ccwsslStates = Nothing
    , _ccwsslXgafv = Nothing
    , _ccwsslLate = Nothing
    , _ccwsslUploadProtocol = Nothing
    , _ccwsslCourseId = pCcwsslCourseId_
    , _ccwsslAccessToken = Nothing
    , _ccwsslUploadType = Nothing
    , _ccwsslUserId = Nothing
    , _ccwsslPageToken = Nothing
    , _ccwsslPageSize = Nothing
    , _ccwsslCallback = Nothing
    , _ccwsslCourseWorkId = pCcwsslCourseWorkId_
    }


-- | Requested submission states. If specified, returned student submissions
-- match one of the specified submission states.
ccwsslStates :: Lens' CoursesCourseWorkStudentSubmissionsList [CoursesCourseWorkStudentSubmissionsListStates]
ccwsslStates
  = lens _ccwsslStates (\ s a -> s{_ccwsslStates = a})
      . _Default
      . _Coerce

-- | V1 error format.
ccwsslXgafv :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe Xgafv)
ccwsslXgafv
  = lens _ccwsslXgafv (\ s a -> s{_ccwsslXgafv = a})

-- | Requested lateness value. If specified, returned student submissions are
-- restricted by the requested value. If unspecified, submissions are
-- returned regardless of \`late\` value.
ccwsslLate :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe CoursesCourseWorkStudentSubmissionsListLate)
ccwsslLate
  = lens _ccwsslLate (\ s a -> s{_ccwsslLate = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwsslUploadProtocol :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe Text)
ccwsslUploadProtocol
  = lens _ccwsslUploadProtocol
      (\ s a -> s{_ccwsslUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwsslCourseId :: Lens' CoursesCourseWorkStudentSubmissionsList Text
ccwsslCourseId
  = lens _ccwsslCourseId
      (\ s a -> s{_ccwsslCourseId = a})

-- | OAuth access token.
ccwsslAccessToken :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe Text)
ccwsslAccessToken
  = lens _ccwsslAccessToken
      (\ s a -> s{_ccwsslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwsslUploadType :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe Text)
ccwsslUploadType
  = lens _ccwsslUploadType
      (\ s a -> s{_ccwsslUploadType = a})

-- | Optional argument to restrict returned student work to those owned by
-- the student with the specified identifier. The identifier can be one of
-- the following: * the numeric identifier for the user * the email address
-- of the user * the string literal \`\"me\"\`, indicating the requesting
-- user
ccwsslUserId :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe Text)
ccwsslUserId
  = lens _ccwsslUserId (\ s a -> s{_ccwsslUserId = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
ccwsslPageToken :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe Text)
ccwsslPageToken
  = lens _ccwsslPageToken
      (\ s a -> s{_ccwsslPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
ccwsslPageSize :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe Int32)
ccwsslPageSize
  = lens _ccwsslPageSize
      (\ s a -> s{_ccwsslPageSize = a})
      . mapping _Coerce

-- | JSONP
ccwsslCallback :: Lens' CoursesCourseWorkStudentSubmissionsList (Maybe Text)
ccwsslCallback
  = lens _ccwsslCallback
      (\ s a -> s{_ccwsslCallback = a})

-- | Identifier of the student work to request. This may be set to the string
-- literal \`\"-\"\` to request student work for all course work in the
-- specified course.
ccwsslCourseWorkId :: Lens' CoursesCourseWorkStudentSubmissionsList Text
ccwsslCourseWorkId
  = lens _ccwsslCourseWorkId
      (\ s a -> s{_ccwsslCourseWorkId = a})

instance GoogleRequest
           CoursesCourseWorkStudentSubmissionsList
         where
        type Rs CoursesCourseWorkStudentSubmissionsList =
             ListStudentSubmissionsResponse
        type Scopes CoursesCourseWorkStudentSubmissionsList =
             '["https://www.googleapis.com/auth/classroom.coursework.me",
               "https://www.googleapis.com/auth/classroom.coursework.me.readonly",
               "https://www.googleapis.com/auth/classroom.coursework.students",
               "https://www.googleapis.com/auth/classroom.coursework.students.readonly",
               "https://www.googleapis.com/auth/classroom.student-submissions.me.readonly",
               "https://www.googleapis.com/auth/classroom.student-submissions.students.readonly"]
        requestClient
          CoursesCourseWorkStudentSubmissionsList'{..}
          = go _ccwsslCourseId _ccwsslCourseWorkId
              (_ccwsslStates ^. _Default)
              _ccwsslXgafv
              _ccwsslLate
              _ccwsslUploadProtocol
              _ccwsslAccessToken
              _ccwsslUploadType
              _ccwsslUserId
              _ccwsslPageToken
              _ccwsslPageSize
              _ccwsslCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CoursesCourseWorkStudentSubmissionsListResource)
                      mempty
