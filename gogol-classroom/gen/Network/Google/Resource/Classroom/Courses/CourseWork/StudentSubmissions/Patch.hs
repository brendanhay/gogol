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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields of a student submission. See
-- google.classroom.v1.StudentSubmission for details of which fields may be
-- updated and who may change them. This request must be made by the
-- Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding course work, if the user is not
-- permitted to make the requested modification to the student submission,
-- or for access errors. * \`INVALID_ARGUMENT\` if the request is
-- malformed. * \`NOT_FOUND\` if the requested course, course work, or
-- student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.patch@.
module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.Patch
    (
    -- * REST Resource
      CoursesCourseWorkStudentSubmissionsPatchResource

    -- * Creating a Request
    , coursesCourseWorkStudentSubmissionsPatch
    , CoursesCourseWorkStudentSubmissionsPatch

    -- * Request Lenses
    , ccwsspXgafv
    , ccwsspUploadProtocol
    , ccwsspUpdateMask
    , ccwsspCourseId
    , ccwsspAccessToken
    , ccwsspUploadType
    , ccwsspPayload
    , ccwsspId
    , ccwsspCallback
    , ccwsspCourseWorkId
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.patch@ method which the
-- 'CoursesCourseWorkStudentSubmissionsPatch' request conforms to.
type CoursesCourseWorkStudentSubmissionsPatchResource
     =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "courseWorkId" Text :>
               "studentSubmissions" :>
                 Capture "id" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "updateMask" GFieldMask :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] StudentSubmission :>
                                   Patch '[JSON] StudentSubmission

-- | Updates one or more fields of a student submission. See
-- google.classroom.v1.StudentSubmission for details of which fields may be
-- updated and who may change them. This request must be made by the
-- Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding course work, if the user is not
-- permitted to make the requested modification to the student submission,
-- or for access errors. * \`INVALID_ARGUMENT\` if the request is
-- malformed. * \`NOT_FOUND\` if the requested course, course work, or
-- student submission does not exist.
--
-- /See:/ 'coursesCourseWorkStudentSubmissionsPatch' smart constructor.
data CoursesCourseWorkStudentSubmissionsPatch =
  CoursesCourseWorkStudentSubmissionsPatch'
    { _ccwsspXgafv :: !(Maybe Xgafv)
    , _ccwsspUploadProtocol :: !(Maybe Text)
    , _ccwsspUpdateMask :: !(Maybe GFieldMask)
    , _ccwsspCourseId :: !Text
    , _ccwsspAccessToken :: !(Maybe Text)
    , _ccwsspUploadType :: !(Maybe Text)
    , _ccwsspPayload :: !StudentSubmission
    , _ccwsspId :: !Text
    , _ccwsspCallback :: !(Maybe Text)
    , _ccwsspCourseWorkId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkStudentSubmissionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwsspXgafv'
--
-- * 'ccwsspUploadProtocol'
--
-- * 'ccwsspUpdateMask'
--
-- * 'ccwsspCourseId'
--
-- * 'ccwsspAccessToken'
--
-- * 'ccwsspUploadType'
--
-- * 'ccwsspPayload'
--
-- * 'ccwsspId'
--
-- * 'ccwsspCallback'
--
-- * 'ccwsspCourseWorkId'
coursesCourseWorkStudentSubmissionsPatch
    :: Text -- ^ 'ccwsspCourseId'
    -> StudentSubmission -- ^ 'ccwsspPayload'
    -> Text -- ^ 'ccwsspId'
    -> Text -- ^ 'ccwsspCourseWorkId'
    -> CoursesCourseWorkStudentSubmissionsPatch
coursesCourseWorkStudentSubmissionsPatch pCcwsspCourseId_ pCcwsspPayload_ pCcwsspId_ pCcwsspCourseWorkId_ =
  CoursesCourseWorkStudentSubmissionsPatch'
    { _ccwsspXgafv = Nothing
    , _ccwsspUploadProtocol = Nothing
    , _ccwsspUpdateMask = Nothing
    , _ccwsspCourseId = pCcwsspCourseId_
    , _ccwsspAccessToken = Nothing
    , _ccwsspUploadType = Nothing
    , _ccwsspPayload = pCcwsspPayload_
    , _ccwsspId = pCcwsspId_
    , _ccwsspCallback = Nothing
    , _ccwsspCourseWorkId = pCcwsspCourseWorkId_
    }


-- | V1 error format.
ccwsspXgafv :: Lens' CoursesCourseWorkStudentSubmissionsPatch (Maybe Xgafv)
ccwsspXgafv
  = lens _ccwsspXgafv (\ s a -> s{_ccwsspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwsspUploadProtocol :: Lens' CoursesCourseWorkStudentSubmissionsPatch (Maybe Text)
ccwsspUploadProtocol
  = lens _ccwsspUploadProtocol
      (\ s a -> s{_ccwsspUploadProtocol = a})

-- | Mask that identifies which fields on the student submission to update.
-- This field is required to do an update. The update fails if invalid
-- fields are specified. The following fields may be specified by teachers:
-- * \`draft_grade\` * \`assigned_grade\`
ccwsspUpdateMask :: Lens' CoursesCourseWorkStudentSubmissionsPatch (Maybe GFieldMask)
ccwsspUpdateMask
  = lens _ccwsspUpdateMask
      (\ s a -> s{_ccwsspUpdateMask = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwsspCourseId :: Lens' CoursesCourseWorkStudentSubmissionsPatch Text
ccwsspCourseId
  = lens _ccwsspCourseId
      (\ s a -> s{_ccwsspCourseId = a})

-- | OAuth access token.
ccwsspAccessToken :: Lens' CoursesCourseWorkStudentSubmissionsPatch (Maybe Text)
ccwsspAccessToken
  = lens _ccwsspAccessToken
      (\ s a -> s{_ccwsspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwsspUploadType :: Lens' CoursesCourseWorkStudentSubmissionsPatch (Maybe Text)
ccwsspUploadType
  = lens _ccwsspUploadType
      (\ s a -> s{_ccwsspUploadType = a})

-- | Multipart request metadata.
ccwsspPayload :: Lens' CoursesCourseWorkStudentSubmissionsPatch StudentSubmission
ccwsspPayload
  = lens _ccwsspPayload
      (\ s a -> s{_ccwsspPayload = a})

-- | Identifier of the student submission.
ccwsspId :: Lens' CoursesCourseWorkStudentSubmissionsPatch Text
ccwsspId = lens _ccwsspId (\ s a -> s{_ccwsspId = a})

-- | JSONP
ccwsspCallback :: Lens' CoursesCourseWorkStudentSubmissionsPatch (Maybe Text)
ccwsspCallback
  = lens _ccwsspCallback
      (\ s a -> s{_ccwsspCallback = a})

-- | Identifier of the course work.
ccwsspCourseWorkId :: Lens' CoursesCourseWorkStudentSubmissionsPatch Text
ccwsspCourseWorkId
  = lens _ccwsspCourseWorkId
      (\ s a -> s{_ccwsspCourseWorkId = a})

instance GoogleRequest
           CoursesCourseWorkStudentSubmissionsPatch
         where
        type Rs CoursesCourseWorkStudentSubmissionsPatch =
             StudentSubmission
        type Scopes CoursesCourseWorkStudentSubmissionsPatch
             =
             '["https://www.googleapis.com/auth/classroom.coursework.me",
               "https://www.googleapis.com/auth/classroom.coursework.students"]
        requestClient
          CoursesCourseWorkStudentSubmissionsPatch'{..}
          = go _ccwsspCourseId _ccwsspCourseWorkId _ccwsspId
              _ccwsspXgafv
              _ccwsspUploadProtocol
              _ccwsspUpdateMask
              _ccwsspAccessToken
              _ccwsspUploadType
              _ccwsspCallback
              (Just AltJSON)
              _ccwsspPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CoursesCourseWorkStudentSubmissionsPatchResource)
                      mempty
