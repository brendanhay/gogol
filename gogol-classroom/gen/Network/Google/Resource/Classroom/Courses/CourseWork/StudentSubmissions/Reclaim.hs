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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reclaims a student submission on behalf of the student that owns it.
-- Reclaiming a student submission transfers ownership of attached Drive
-- files to the student and update the submission state. Only the student
-- that ownes the requested student submission may call this method, and
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
    , couXgafv
    , couUploadProtocol
    , couPp
    , couCourseId
    , couAccessToken
    , couUploadType
    , couPayload
    , couBearerToken
    , couId
    , couCallback
    , couCourseWorkId
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

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
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON]
                                     ReclaimStudentSubmissionRequest
                                     :> Post '[JSON] Empty

-- | Reclaims a student submission on behalf of the student that owns it.
-- Reclaiming a student submission transfers ownership of attached Drive
-- files to the student and update the submission state. Only the student
-- that ownes the requested student submission may call this method, and
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
data CoursesCourseWorkStudentSubmissionsReclaim = CoursesCourseWorkStudentSubmissionsReclaim'
    { _couXgafv          :: !(Maybe Text)
    , _couUploadProtocol :: !(Maybe Text)
    , _couPp             :: !Bool
    , _couCourseId       :: !Text
    , _couAccessToken    :: !(Maybe Text)
    , _couUploadType     :: !(Maybe Text)
    , _couPayload        :: !ReclaimStudentSubmissionRequest
    , _couBearerToken    :: !(Maybe Text)
    , _couId             :: !Text
    , _couCallback       :: !(Maybe Text)
    , _couCourseWorkId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesCourseWorkStudentSubmissionsReclaim' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couXgafv'
--
-- * 'couUploadProtocol'
--
-- * 'couPp'
--
-- * 'couCourseId'
--
-- * 'couAccessToken'
--
-- * 'couUploadType'
--
-- * 'couPayload'
--
-- * 'couBearerToken'
--
-- * 'couId'
--
-- * 'couCallback'
--
-- * 'couCourseWorkId'
coursesCourseWorkStudentSubmissionsReclaim
    :: Text -- ^ 'couCourseId'
    -> ReclaimStudentSubmissionRequest -- ^ 'couPayload'
    -> Text -- ^ 'couId'
    -> Text -- ^ 'couCourseWorkId'
    -> CoursesCourseWorkStudentSubmissionsReclaim
coursesCourseWorkStudentSubmissionsReclaim pCouCourseId_ pCouPayload_ pCouId_ pCouCourseWorkId_ =
    CoursesCourseWorkStudentSubmissionsReclaim'
    { _couXgafv = Nothing
    , _couUploadProtocol = Nothing
    , _couPp = True
    , _couCourseId = pCouCourseId_
    , _couAccessToken = Nothing
    , _couUploadType = Nothing
    , _couPayload = pCouPayload_
    , _couBearerToken = Nothing
    , _couId = pCouId_
    , _couCallback = Nothing
    , _couCourseWorkId = pCouCourseWorkId_
    }

-- | V1 error format.
couXgafv :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
couXgafv = lens _couXgafv (\ s a -> s{_couXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
couUploadProtocol :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
couUploadProtocol
  = lens _couUploadProtocol
      (\ s a -> s{_couUploadProtocol = a})

-- | Pretty-print response.
couPp :: Lens' CoursesCourseWorkStudentSubmissionsReclaim Bool
couPp = lens _couPp (\ s a -> s{_couPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
couCourseId :: Lens' CoursesCourseWorkStudentSubmissionsReclaim Text
couCourseId
  = lens _couCourseId (\ s a -> s{_couCourseId = a})

-- | OAuth access token.
couAccessToken :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
couAccessToken
  = lens _couAccessToken
      (\ s a -> s{_couAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
couUploadType :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
couUploadType
  = lens _couUploadType
      (\ s a -> s{_couUploadType = a})

-- | Multipart request metadata.
couPayload :: Lens' CoursesCourseWorkStudentSubmissionsReclaim ReclaimStudentSubmissionRequest
couPayload
  = lens _couPayload (\ s a -> s{_couPayload = a})

-- | OAuth bearer token.
couBearerToken :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
couBearerToken
  = lens _couBearerToken
      (\ s a -> s{_couBearerToken = a})

-- | Identifier of the student submission.
couId :: Lens' CoursesCourseWorkStudentSubmissionsReclaim Text
couId = lens _couId (\ s a -> s{_couId = a})

-- | JSONP
couCallback :: Lens' CoursesCourseWorkStudentSubmissionsReclaim (Maybe Text)
couCallback
  = lens _couCallback (\ s a -> s{_couCallback = a})

-- | Identifier of the course work.
couCourseWorkId :: Lens' CoursesCourseWorkStudentSubmissionsReclaim Text
couCourseWorkId
  = lens _couCourseWorkId
      (\ s a -> s{_couCourseWorkId = a})

instance GoogleRequest
         CoursesCourseWorkStudentSubmissionsReclaim where
        type Rs CoursesCourseWorkStudentSubmissionsReclaim =
             Empty
        type Scopes
               CoursesCourseWorkStudentSubmissionsReclaim
             =
             '["https://www.googleapis.com/auth/classroom.coursework.me"]
        requestClient
          CoursesCourseWorkStudentSubmissionsReclaim'{..}
          = go _couCourseId _couCourseWorkId _couId _couXgafv
              _couUploadProtocol
              (Just _couPp)
              _couAccessToken
              _couUploadType
              _couBearerToken
              _couCallback
              (Just AltJSON)
              _couPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CoursesCourseWorkStudentSubmissionsReclaimResource)
                      mempty
