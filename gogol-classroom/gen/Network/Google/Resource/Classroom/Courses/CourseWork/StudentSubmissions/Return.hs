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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Return
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a student submission. Returning a student submission transfers
-- ownership of attached Drive files to the student and may also update the
-- submission state. Unlike the Classroom application, returning a student
-- submission does not set assignedGrade to the draftGrade value. Only a
-- teacher of the course that contains the requested student submission may
-- call this method. This request must be made by the Developer Console
-- project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to access the requested course or course work, return the
-- requested student submission, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course, course work, or student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.return@.
module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Return
    (
    -- * REST Resource
      CoursesCourseWorkStudentSubmissionsReturnResource

    -- * Creating a Request
    , coursesCourseWorkStudentSubmissionsReturn
    , CoursesCourseWorkStudentSubmissionsReturn

    -- * Request Lenses
    , ccwssrXgafv
    , ccwssrUploadProtocol
    , ccwssrCourseId
    , ccwssrAccessToken
    , ccwssrUploadType
    , ccwssrPayload
    , ccwssrId
    , ccwssrCallback
    , ccwssrCourseWorkId
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.return@ method which the
-- 'CoursesCourseWorkStudentSubmissionsReturn' request conforms to.
type CoursesCourseWorkStudentSubmissionsReturnResource
     =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "courseWorkId" Text :>
               "studentSubmissions" :>
                 CaptureMode "id" "return" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ReturnStudentSubmissionRequest :>
                                 Post '[JSON] Empty

-- | Returns a student submission. Returning a student submission transfers
-- ownership of attached Drive files to the student and may also update the
-- submission state. Unlike the Classroom application, returning a student
-- submission does not set assignedGrade to the draftGrade value. Only a
-- teacher of the course that contains the requested student submission may
-- call this method. This request must be made by the Developer Console
-- project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to access the requested course or course work, return the
-- requested student submission, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course, course work, or student submission does not exist.
--
-- /See:/ 'coursesCourseWorkStudentSubmissionsReturn' smart constructor.
data CoursesCourseWorkStudentSubmissionsReturn =
  CoursesCourseWorkStudentSubmissionsReturn'
    { _ccwssrXgafv          :: !(Maybe Xgafv)
    , _ccwssrUploadProtocol :: !(Maybe Text)
    , _ccwssrCourseId       :: !Text
    , _ccwssrAccessToken    :: !(Maybe Text)
    , _ccwssrUploadType     :: !(Maybe Text)
    , _ccwssrPayload        :: !ReturnStudentSubmissionRequest
    , _ccwssrId             :: !Text
    , _ccwssrCallback       :: !(Maybe Text)
    , _ccwssrCourseWorkId   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CoursesCourseWorkStudentSubmissionsReturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwssrXgafv'
--
-- * 'ccwssrUploadProtocol'
--
-- * 'ccwssrCourseId'
--
-- * 'ccwssrAccessToken'
--
-- * 'ccwssrUploadType'
--
-- * 'ccwssrPayload'
--
-- * 'ccwssrId'
--
-- * 'ccwssrCallback'
--
-- * 'ccwssrCourseWorkId'
coursesCourseWorkStudentSubmissionsReturn
    :: Text -- ^ 'ccwssrCourseId'
    -> ReturnStudentSubmissionRequest -- ^ 'ccwssrPayload'
    -> Text -- ^ 'ccwssrId'
    -> Text -- ^ 'ccwssrCourseWorkId'
    -> CoursesCourseWorkStudentSubmissionsReturn
coursesCourseWorkStudentSubmissionsReturn pCcwssrCourseId_ pCcwssrPayload_ pCcwssrId_ pCcwssrCourseWorkId_ =
  CoursesCourseWorkStudentSubmissionsReturn'
    { _ccwssrXgafv = Nothing
    , _ccwssrUploadProtocol = Nothing
    , _ccwssrCourseId = pCcwssrCourseId_
    , _ccwssrAccessToken = Nothing
    , _ccwssrUploadType = Nothing
    , _ccwssrPayload = pCcwssrPayload_
    , _ccwssrId = pCcwssrId_
    , _ccwssrCallback = Nothing
    , _ccwssrCourseWorkId = pCcwssrCourseWorkId_
    }

-- | V1 error format.
ccwssrXgafv :: Lens' CoursesCourseWorkStudentSubmissionsReturn (Maybe Xgafv)
ccwssrXgafv
  = lens _ccwssrXgafv (\ s a -> s{_ccwssrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwssrUploadProtocol :: Lens' CoursesCourseWorkStudentSubmissionsReturn (Maybe Text)
ccwssrUploadProtocol
  = lens _ccwssrUploadProtocol
      (\ s a -> s{_ccwssrUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwssrCourseId :: Lens' CoursesCourseWorkStudentSubmissionsReturn Text
ccwssrCourseId
  = lens _ccwssrCourseId
      (\ s a -> s{_ccwssrCourseId = a})

-- | OAuth access token.
ccwssrAccessToken :: Lens' CoursesCourseWorkStudentSubmissionsReturn (Maybe Text)
ccwssrAccessToken
  = lens _ccwssrAccessToken
      (\ s a -> s{_ccwssrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwssrUploadType :: Lens' CoursesCourseWorkStudentSubmissionsReturn (Maybe Text)
ccwssrUploadType
  = lens _ccwssrUploadType
      (\ s a -> s{_ccwssrUploadType = a})

-- | Multipart request metadata.
ccwssrPayload :: Lens' CoursesCourseWorkStudentSubmissionsReturn ReturnStudentSubmissionRequest
ccwssrPayload
  = lens _ccwssrPayload
      (\ s a -> s{_ccwssrPayload = a})

-- | Identifier of the student submission.
ccwssrId :: Lens' CoursesCourseWorkStudentSubmissionsReturn Text
ccwssrId = lens _ccwssrId (\ s a -> s{_ccwssrId = a})

-- | JSONP
ccwssrCallback :: Lens' CoursesCourseWorkStudentSubmissionsReturn (Maybe Text)
ccwssrCallback
  = lens _ccwssrCallback
      (\ s a -> s{_ccwssrCallback = a})

-- | Identifier of the course work.
ccwssrCourseWorkId :: Lens' CoursesCourseWorkStudentSubmissionsReturn Text
ccwssrCourseWorkId
  = lens _ccwssrCourseWorkId
      (\ s a -> s{_ccwssrCourseWorkId = a})

instance GoogleRequest
           CoursesCourseWorkStudentSubmissionsReturn
         where
        type Rs CoursesCourseWorkStudentSubmissionsReturn =
             Empty
        type Scopes CoursesCourseWorkStudentSubmissionsReturn
             =
             '["https://www.googleapis.com/auth/classroom.coursework.students"]
        requestClient
          CoursesCourseWorkStudentSubmissionsReturn'{..}
          = go _ccwssrCourseId _ccwssrCourseWorkId _ccwssrId
              _ccwssrXgafv
              _ccwssrUploadProtocol
              _ccwssrAccessToken
              _ccwssrUploadType
              _ccwssrCallback
              (Just AltJSON)
              _ccwssrPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CoursesCourseWorkStudentSubmissionsReturnResource)
                      mempty
