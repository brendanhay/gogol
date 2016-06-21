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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies attachments of student submission. Attachments may only be
-- added to student submissions whose type is \`ASSIGNMENT\`. This request
-- must be made by the Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to access the requested course or course work, if the user is
-- not permitted to modify attachments on the requested student submission,
-- or for access errors. * \`INVALID_ARGUMENT\` if the request is
-- malformed. * \`NOT_FOUND\` if the requested course, course work, or
-- student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.studentSubmissions.modifyAttachments@.
module Network.Google.Resource.Classroom.Courses.CourseWork.StudentSubmissions.ModifyAttachments
    (
    -- * REST Resource
      CoursesCourseWorkStudentSubmissionsModifyAttachmentsResource

    -- * Creating a Request
    , coursesCourseWorkStudentSubmissionsModifyAttachments
    , CoursesCourseWorkStudentSubmissionsModifyAttachments

    -- * Request Lenses
    , ccwssmaXgafv
    , ccwssmaUploadProtocol
    , ccwssmaPp
    , ccwssmaCourseId
    , ccwssmaAccessToken
    , ccwssmaUploadType
    , ccwssmaPayload
    , ccwssmaBearerToken
    , ccwssmaId
    , ccwssmaCallback
    , ccwssmaCourseWorkId
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.studentSubmissions.modifyAttachments@ method which the
-- 'CoursesCourseWorkStudentSubmissionsModifyAttachments' request conforms to.
type CoursesCourseWorkStudentSubmissionsModifyAttachmentsResource
     =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "courseWorkId" Text :>
               "studentSubmissions" :>
                 CaptureMode "id" "modifyAttachments" Text :>
                   QueryParam "$.xgafv" Text :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ModifyAttachmentsRequest :>
                                     Post '[JSON] StudentSubmission

-- | Modifies attachments of student submission. Attachments may only be
-- added to student submissions whose type is \`ASSIGNMENT\`. This request
-- must be made by the Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to access the requested course or course work, if the user is
-- not permitted to modify attachments on the requested student submission,
-- or for access errors. * \`INVALID_ARGUMENT\` if the request is
-- malformed. * \`NOT_FOUND\` if the requested course, course work, or
-- student submission does not exist.
--
-- /See:/ 'coursesCourseWorkStudentSubmissionsModifyAttachments' smart constructor.
data CoursesCourseWorkStudentSubmissionsModifyAttachments = CoursesCourseWorkStudentSubmissionsModifyAttachments'
    { _ccwssmaXgafv          :: !(Maybe Text)
    , _ccwssmaUploadProtocol :: !(Maybe Text)
    , _ccwssmaPp             :: !Bool
    , _ccwssmaCourseId       :: !Text
    , _ccwssmaAccessToken    :: !(Maybe Text)
    , _ccwssmaUploadType     :: !(Maybe Text)
    , _ccwssmaPayload        :: !ModifyAttachmentsRequest
    , _ccwssmaBearerToken    :: !(Maybe Text)
    , _ccwssmaId             :: !Text
    , _ccwssmaCallback       :: !(Maybe Text)
    , _ccwssmaCourseWorkId   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesCourseWorkStudentSubmissionsModifyAttachments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwssmaXgafv'
--
-- * 'ccwssmaUploadProtocol'
--
-- * 'ccwssmaPp'
--
-- * 'ccwssmaCourseId'
--
-- * 'ccwssmaAccessToken'
--
-- * 'ccwssmaUploadType'
--
-- * 'ccwssmaPayload'
--
-- * 'ccwssmaBearerToken'
--
-- * 'ccwssmaId'
--
-- * 'ccwssmaCallback'
--
-- * 'ccwssmaCourseWorkId'
coursesCourseWorkStudentSubmissionsModifyAttachments
    :: Text -- ^ 'ccwssmaCourseId'
    -> ModifyAttachmentsRequest -- ^ 'ccwssmaPayload'
    -> Text -- ^ 'ccwssmaId'
    -> Text -- ^ 'ccwssmaCourseWorkId'
    -> CoursesCourseWorkStudentSubmissionsModifyAttachments
coursesCourseWorkStudentSubmissionsModifyAttachments pCcwssmaCourseId_ pCcwssmaPayload_ pCcwssmaId_ pCcwssmaCourseWorkId_ =
    CoursesCourseWorkStudentSubmissionsModifyAttachments'
    { _ccwssmaXgafv = Nothing
    , _ccwssmaUploadProtocol = Nothing
    , _ccwssmaPp = True
    , _ccwssmaCourseId = pCcwssmaCourseId_
    , _ccwssmaAccessToken = Nothing
    , _ccwssmaUploadType = Nothing
    , _ccwssmaPayload = pCcwssmaPayload_
    , _ccwssmaBearerToken = Nothing
    , _ccwssmaId = pCcwssmaId_
    , _ccwssmaCallback = Nothing
    , _ccwssmaCourseWorkId = pCcwssmaCourseWorkId_
    }

-- | V1 error format.
ccwssmaXgafv :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments (Maybe Text)
ccwssmaXgafv
  = lens _ccwssmaXgafv (\ s a -> s{_ccwssmaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwssmaUploadProtocol :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments (Maybe Text)
ccwssmaUploadProtocol
  = lens _ccwssmaUploadProtocol
      (\ s a -> s{_ccwssmaUploadProtocol = a})

-- | Pretty-print response.
ccwssmaPp :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments Bool
ccwssmaPp
  = lens _ccwssmaPp (\ s a -> s{_ccwssmaPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwssmaCourseId :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments Text
ccwssmaCourseId
  = lens _ccwssmaCourseId
      (\ s a -> s{_ccwssmaCourseId = a})

-- | OAuth access token.
ccwssmaAccessToken :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments (Maybe Text)
ccwssmaAccessToken
  = lens _ccwssmaAccessToken
      (\ s a -> s{_ccwssmaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwssmaUploadType :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments (Maybe Text)
ccwssmaUploadType
  = lens _ccwssmaUploadType
      (\ s a -> s{_ccwssmaUploadType = a})

-- | Multipart request metadata.
ccwssmaPayload :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments ModifyAttachmentsRequest
ccwssmaPayload
  = lens _ccwssmaPayload
      (\ s a -> s{_ccwssmaPayload = a})

-- | OAuth bearer token.
ccwssmaBearerToken :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments (Maybe Text)
ccwssmaBearerToken
  = lens _ccwssmaBearerToken
      (\ s a -> s{_ccwssmaBearerToken = a})

-- | Identifier of the student submission.
ccwssmaId :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments Text
ccwssmaId
  = lens _ccwssmaId (\ s a -> s{_ccwssmaId = a})

-- | JSONP
ccwssmaCallback :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments (Maybe Text)
ccwssmaCallback
  = lens _ccwssmaCallback
      (\ s a -> s{_ccwssmaCallback = a})

-- | Identifier of the course work.
ccwssmaCourseWorkId :: Lens' CoursesCourseWorkStudentSubmissionsModifyAttachments Text
ccwssmaCourseWorkId
  = lens _ccwssmaCourseWorkId
      (\ s a -> s{_ccwssmaCourseWorkId = a})

instance GoogleRequest
         CoursesCourseWorkStudentSubmissionsModifyAttachments
         where
        type Rs
               CoursesCourseWorkStudentSubmissionsModifyAttachments
             = StudentSubmission
        type Scopes
               CoursesCourseWorkStudentSubmissionsModifyAttachments
             =
             '["https://www.googleapis.com/auth/classroom.coursework.me",
               "https://www.googleapis.com/auth/classroom.coursework.students"]
        requestClient
          CoursesCourseWorkStudentSubmissionsModifyAttachments'{..}
          = go _ccwssmaCourseId _ccwssmaCourseWorkId _ccwssmaId
              _ccwssmaXgafv
              _ccwssmaUploadProtocol
              (Just _ccwssmaPp)
              _ccwssmaAccessToken
              _ccwssmaUploadType
              _ccwssmaBearerToken
              _ccwssmaCallback
              (Just AltJSON)
              _ccwssmaPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           CoursesCourseWorkStudentSubmissionsModifyAttachmentsResource)
                      mempty
