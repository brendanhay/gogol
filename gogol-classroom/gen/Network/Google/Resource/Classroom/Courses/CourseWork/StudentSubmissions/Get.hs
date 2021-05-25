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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a student submission. * \`PERMISSION_DENIED\` if the requesting
-- user is not permitted to access the requested course, course work, or
-- student submission or for access errors. * \`INVALID_ARGUMENT\` if the
-- request is malformed. * \`NOT_FOUND\` if the requested course, course
-- work, or student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.get@.
module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Get
    (
    -- * REST Resource
      CoursesCourseWorkStudentSubmissionsGetResource

    -- * Creating a Request
    , coursesCourseWorkStudentSubmissionsGet
    , CoursesCourseWorkStudentSubmissionsGet

    -- * Request Lenses
    , ccwssgXgafv
    , ccwssgUploadProtocol
    , ccwssgCourseId
    , ccwssgAccessToken
    , ccwssgUploadType
    , ccwssgId
    , ccwssgCallback
    , ccwssgCourseWorkId
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.get@ method which the
-- 'CoursesCourseWorkStudentSubmissionsGet' request conforms to.
type CoursesCourseWorkStudentSubmissionsGetResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "courseWorkId" Text :>
               "studentSubmissions" :>
                 Capture "id" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] StudentSubmission

-- | Returns a student submission. * \`PERMISSION_DENIED\` if the requesting
-- user is not permitted to access the requested course, course work, or
-- student submission or for access errors. * \`INVALID_ARGUMENT\` if the
-- request is malformed. * \`NOT_FOUND\` if the requested course, course
-- work, or student submission does not exist.
--
-- /See:/ 'coursesCourseWorkStudentSubmissionsGet' smart constructor.
data CoursesCourseWorkStudentSubmissionsGet =
  CoursesCourseWorkStudentSubmissionsGet'
    { _ccwssgXgafv :: !(Maybe Xgafv)
    , _ccwssgUploadProtocol :: !(Maybe Text)
    , _ccwssgCourseId :: !Text
    , _ccwssgAccessToken :: !(Maybe Text)
    , _ccwssgUploadType :: !(Maybe Text)
    , _ccwssgId :: !Text
    , _ccwssgCallback :: !(Maybe Text)
    , _ccwssgCourseWorkId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkStudentSubmissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwssgXgafv'
--
-- * 'ccwssgUploadProtocol'
--
-- * 'ccwssgCourseId'
--
-- * 'ccwssgAccessToken'
--
-- * 'ccwssgUploadType'
--
-- * 'ccwssgId'
--
-- * 'ccwssgCallback'
--
-- * 'ccwssgCourseWorkId'
coursesCourseWorkStudentSubmissionsGet
    :: Text -- ^ 'ccwssgCourseId'
    -> Text -- ^ 'ccwssgId'
    -> Text -- ^ 'ccwssgCourseWorkId'
    -> CoursesCourseWorkStudentSubmissionsGet
coursesCourseWorkStudentSubmissionsGet pCcwssgCourseId_ pCcwssgId_ pCcwssgCourseWorkId_ =
  CoursesCourseWorkStudentSubmissionsGet'
    { _ccwssgXgafv = Nothing
    , _ccwssgUploadProtocol = Nothing
    , _ccwssgCourseId = pCcwssgCourseId_
    , _ccwssgAccessToken = Nothing
    , _ccwssgUploadType = Nothing
    , _ccwssgId = pCcwssgId_
    , _ccwssgCallback = Nothing
    , _ccwssgCourseWorkId = pCcwssgCourseWorkId_
    }


-- | V1 error format.
ccwssgXgafv :: Lens' CoursesCourseWorkStudentSubmissionsGet (Maybe Xgafv)
ccwssgXgafv
  = lens _ccwssgXgafv (\ s a -> s{_ccwssgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwssgUploadProtocol :: Lens' CoursesCourseWorkStudentSubmissionsGet (Maybe Text)
ccwssgUploadProtocol
  = lens _ccwssgUploadProtocol
      (\ s a -> s{_ccwssgUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwssgCourseId :: Lens' CoursesCourseWorkStudentSubmissionsGet Text
ccwssgCourseId
  = lens _ccwssgCourseId
      (\ s a -> s{_ccwssgCourseId = a})

-- | OAuth access token.
ccwssgAccessToken :: Lens' CoursesCourseWorkStudentSubmissionsGet (Maybe Text)
ccwssgAccessToken
  = lens _ccwssgAccessToken
      (\ s a -> s{_ccwssgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwssgUploadType :: Lens' CoursesCourseWorkStudentSubmissionsGet (Maybe Text)
ccwssgUploadType
  = lens _ccwssgUploadType
      (\ s a -> s{_ccwssgUploadType = a})

-- | Identifier of the student submission.
ccwssgId :: Lens' CoursesCourseWorkStudentSubmissionsGet Text
ccwssgId = lens _ccwssgId (\ s a -> s{_ccwssgId = a})

-- | JSONP
ccwssgCallback :: Lens' CoursesCourseWorkStudentSubmissionsGet (Maybe Text)
ccwssgCallback
  = lens _ccwssgCallback
      (\ s a -> s{_ccwssgCallback = a})

-- | Identifier of the course work.
ccwssgCourseWorkId :: Lens' CoursesCourseWorkStudentSubmissionsGet Text
ccwssgCourseWorkId
  = lens _ccwssgCourseWorkId
      (\ s a -> s{_ccwssgCourseWorkId = a})

instance GoogleRequest
           CoursesCourseWorkStudentSubmissionsGet
         where
        type Rs CoursesCourseWorkStudentSubmissionsGet =
             StudentSubmission
        type Scopes CoursesCourseWorkStudentSubmissionsGet =
             '["https://www.googleapis.com/auth/classroom.coursework.me",
               "https://www.googleapis.com/auth/classroom.coursework.me.readonly",
               "https://www.googleapis.com/auth/classroom.coursework.students",
               "https://www.googleapis.com/auth/classroom.coursework.students.readonly",
               "https://www.googleapis.com/auth/classroom.student-submissions.me.readonly",
               "https://www.googleapis.com/auth/classroom.student-submissions.students.readonly"]
        requestClient
          CoursesCourseWorkStudentSubmissionsGet'{..}
          = go _ccwssgCourseId _ccwssgCourseWorkId _ccwssgId
              _ccwssgXgafv
              _ccwssgUploadProtocol
              _ccwssgAccessToken
              _ccwssgUploadType
              _ccwssgCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CoursesCourseWorkStudentSubmissionsGetResource)
                      mempty
