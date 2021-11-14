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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reclaims a student submission on behalf of the student that owns it.
-- Reclaiming a student submission transfers ownership of attached Drive
-- files to the student and updates the submission state. Only the student
-- that owns the requested student submission may call this method, and
-- only for a student submission that has been turned in. This request must
-- be made by the Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to access the requested course or course work, unsubmit the
-- requested student submission, or for access errors. *
-- \`FAILED_PRECONDITION\` if the student submission has not been turned
-- in. * \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\`
-- if the requested course, course work, or student submission does not
-- exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.reclaim@.
module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Reclaim
    (
    -- * REST Resource
      CoursesCourseWorkStudentSubmissionsReclaimResource

    -- * Creating a Request
    , coursesCourseWorkStudentSubmissionsReclaim
    , CoursesCourseWorkStudentSubmissionsReclaim

    -- * Request Lenses
    , ccwssrcXgafv
    , ccwssrcUploadProtocol
    , ccwssrcCourseId
    , ccwssrcAccessToken
    , ccwssrcUploadType
    , ccwssrcPayload
    , ccwssrcId
    , ccwssrcCallback
    , ccwssrcCourseWorkId
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.reclaim@ method which the
-- 'CoursesCourseWorkStudentSubmissionsReclaim' request conforms to.
type CoursesCourseWorkStudentSubmissionsReclaimResource
     =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "courseWorkId" Text :>
               "studentSubmissions" :>
                 CaptureMode "id" "reclaim" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] ReclaimStudentSubmissionRequest
                                 :> Post '[JSON] Empty

-- | Reclaims a student submission on behalf of the student that owns it.
-- Reclaiming a student submission transfers ownership of attached Drive
-- files to the student and updates the submission state. Only the student
-- that owns the requested student submission may call this method, and
-- only for a student submission that has been turned in. This request must
-- be made by the Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to access the requested course or course work, unsubmit the
-- requested student submission, or for access errors. *
-- \`FAILED_PRECONDITION\` if the student submission has not been turned
-- in. * \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\`
-- if the requested course, course work, or student submission does not
-- exist.
--
-- /See:/ 'coursesCourseWorkStudentSubmissionsReclaim' smart constructor.
data CoursesCourseWorkStudentSubmissionsReclaim =
  CoursesCourseWorkStudentSubmissionsReclaim'
    { _ccwssrcXgafv :: !(Maybe Xgafv)
    , _ccwssrcUploadProtocol :: !(Maybe Text)
    , _ccwssrcCourseId :: !Text
    , _ccwssrcAccessToken :: !(Maybe Text)
    , _ccwssrcUploadType :: !(Maybe Text)
    , _ccwssrcPayload :: !ReclaimStudentSubmissionRequest
    , _ccwssrcId :: !Text
    , _ccwssrcCallback :: !(Maybe Text)
    , _ccwssrcCourseWorkId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkStudentSubmissionsReclaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwssrcXgafv'
--
-- * 'ccwssrcUploadProtocol'
--
-- * 'ccwssrcCourseId'
--
-- * 'ccwssrcAccessToken'
--
-- * 'ccwssrcUploadType'
--
-- * 'ccwssrcPayload'
--
-- * 'ccwssrcId'
--
-- * 'ccwssrcCallback'
--
-- * 'ccwssrcCourseWorkId'
coursesCourseWorkStudentSubmissionsReclaim
    :: Text -- ^ 'ccwssrcCourseId'
    -> ReclaimStudentSubmissionRequest -- ^ 'ccwssrcPayload'
    -> Text -- ^ 'ccwssrcId'
    -> Text -- ^ 'ccwssrcCourseWorkId'
    -> CoursesCourseWorkStudentSubmissionsReclaim
coursesCourseWorkStudentSubmissionsReclaim pCcwssrcCourseId_ pCcwssrcPayload_ pCcwssrcId_ pCcwssrcCourseWorkId_ =
  CoursesCourseWorkStudentSubmissionsReclaim'
    { _ccwssrcXgafv = Nothing
    , _ccwssrcUploadProtocol = Nothing
    , _ccwssrcCourseId = pCcwssrcCourseId_
    , _ccwssrcAccessToken = Nothing
    , _ccwssrcUploadType = Nothing
    , _ccwssrcPayload = pCcwssrcPayload_
    , _ccwssrcId = pCcwssrcId_
    , _ccwssrcCallback = Nothing
    , _ccwssrcCourseWorkId = pCcwssrcCourseWorkId_
    }


-- | V1 error format.
ccwssrcXgafv :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Xgafv)
ccwssrcXgafv
  = lens _ccwssrcXgafv (\ s a -> s{_ccwssrcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwssrcUploadProtocol :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
ccwssrcUploadProtocol
  = lens _ccwssrcUploadProtocol
      (\ s a -> s{_ccwssrcUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwssrcCourseId :: Lens' CoursesCourseWorkStudentSubmissionsReclaim Text
ccwssrcCourseId
  = lens _ccwssrcCourseId
      (\ s a -> s{_ccwssrcCourseId = a})

-- | OAuth access token.
ccwssrcAccessToken :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
ccwssrcAccessToken
  = lens _ccwssrcAccessToken
      (\ s a -> s{_ccwssrcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwssrcUploadType :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
ccwssrcUploadType
  = lens _ccwssrcUploadType
      (\ s a -> s{_ccwssrcUploadType = a})

-- | Multipart request metadata.
ccwssrcPayload :: Lens' CoursesCourseWorkStudentSubmissionsReclaim ReclaimStudentSubmissionRequest
ccwssrcPayload
  = lens _ccwssrcPayload
      (\ s a -> s{_ccwssrcPayload = a})

-- | Identifier of the student submission.
ccwssrcId :: Lens' CoursesCourseWorkStudentSubmissionsReclaim Text
ccwssrcId
  = lens _ccwssrcId (\ s a -> s{_ccwssrcId = a})

-- | JSONP
ccwssrcCallback :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
ccwssrcCallback
  = lens _ccwssrcCallback
      (\ s a -> s{_ccwssrcCallback = a})

-- | Identifier of the course work.
ccwssrcCourseWorkId :: Lens' CoursesCourseWorkStudentSubmissionsReclaim Text
ccwssrcCourseWorkId
  = lens _ccwssrcCourseWorkId
      (\ s a -> s{_ccwssrcCourseWorkId = a})

instance GoogleRequest
           CoursesCourseWorkStudentSubmissionsReclaim
         where
        type Rs CoursesCourseWorkStudentSubmissionsReclaim =
             Empty
        type Scopes
               CoursesCourseWorkStudentSubmissionsReclaim
             =
             '["https://www.googleapis.com/auth/classroom.coursework.me"]
        requestClient
          CoursesCourseWorkStudentSubmissionsReclaim'{..}
          = go _ccwssrcCourseId _ccwssrcCourseWorkId _ccwssrcId
              _ccwssrcXgafv
              _ccwssrcUploadProtocol
              _ccwssrcAccessToken
              _ccwssrcUploadType
              _ccwssrcCallback
              (Just AltJSON)
              _ccwssrcPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CoursesCourseWorkStudentSubmissionsReclaimResource)
                      mempty
