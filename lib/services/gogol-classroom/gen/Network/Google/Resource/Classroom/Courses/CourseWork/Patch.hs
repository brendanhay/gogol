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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields of a course work. See
-- google.classroom.v1.CourseWork for details of which fields may be
-- updated and who may change them. This request must be made by the
-- Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding course work, if the user is not
-- permitted to make the requested modification to the student submission,
-- or for access errors. * \`INVALID_ARGUMENT\` if the request is
-- malformed. * \`FAILED_PRECONDITION\` if the requested course work has
-- already been deleted. * \`NOT_FOUND\` if the requested course, course
-- work, or student submission does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.patch@.
module Network.Google.Resource.Classroom.Courses.CourseWork.Patch
    (
    -- * REST Resource
      CoursesCourseWorkPatchResource

    -- * Creating a Request
    , coursesCourseWorkPatch
    , CoursesCourseWorkPatch

    -- * Request Lenses
    , ccwpXgafv
    , ccwpUploadProtocol
    , ccwpUpdateMask
    , ccwpCourseId
    , ccwpAccessToken
    , ccwpUploadType
    , ccwpPayload
    , ccwpId
    , ccwpCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.patch@ method which the
-- 'CoursesCourseWorkPatch' request conforms to.
type CoursesCourseWorkPatchResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "updateMask" GFieldMask :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CourseWork :>
                               Patch '[JSON] CourseWork

-- | Updates one or more fields of a course work. See
-- google.classroom.v1.CourseWork for details of which fields may be
-- updated and who may change them. This request must be made by the
-- Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding course work, if the user is not
-- permitted to make the requested modification to the student submission,
-- or for access errors. * \`INVALID_ARGUMENT\` if the request is
-- malformed. * \`FAILED_PRECONDITION\` if the requested course work has
-- already been deleted. * \`NOT_FOUND\` if the requested course, course
-- work, or student submission does not exist.
--
-- /See:/ 'coursesCourseWorkPatch' smart constructor.
data CoursesCourseWorkPatch =
  CoursesCourseWorkPatch'
    { _ccwpXgafv :: !(Maybe Xgafv)
    , _ccwpUploadProtocol :: !(Maybe Text)
    , _ccwpUpdateMask :: !(Maybe GFieldMask)
    , _ccwpCourseId :: !Text
    , _ccwpAccessToken :: !(Maybe Text)
    , _ccwpUploadType :: !(Maybe Text)
    , _ccwpPayload :: !CourseWork
    , _ccwpId :: !Text
    , _ccwpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwpXgafv'
--
-- * 'ccwpUploadProtocol'
--
-- * 'ccwpUpdateMask'
--
-- * 'ccwpCourseId'
--
-- * 'ccwpAccessToken'
--
-- * 'ccwpUploadType'
--
-- * 'ccwpPayload'
--
-- * 'ccwpId'
--
-- * 'ccwpCallback'
coursesCourseWorkPatch
    :: Text -- ^ 'ccwpCourseId'
    -> CourseWork -- ^ 'ccwpPayload'
    -> Text -- ^ 'ccwpId'
    -> CoursesCourseWorkPatch
coursesCourseWorkPatch pCcwpCourseId_ pCcwpPayload_ pCcwpId_ =
  CoursesCourseWorkPatch'
    { _ccwpXgafv = Nothing
    , _ccwpUploadProtocol = Nothing
    , _ccwpUpdateMask = Nothing
    , _ccwpCourseId = pCcwpCourseId_
    , _ccwpAccessToken = Nothing
    , _ccwpUploadType = Nothing
    , _ccwpPayload = pCcwpPayload_
    , _ccwpId = pCcwpId_
    , _ccwpCallback = Nothing
    }


-- | V1 error format.
ccwpXgafv :: Lens' CoursesCourseWorkPatch (Maybe Xgafv)
ccwpXgafv
  = lens _ccwpXgafv (\ s a -> s{_ccwpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwpUploadProtocol :: Lens' CoursesCourseWorkPatch (Maybe Text)
ccwpUploadProtocol
  = lens _ccwpUploadProtocol
      (\ s a -> s{_ccwpUploadProtocol = a})

-- | Mask that identifies which fields on the course work to update. This
-- field is required to do an update. The update fails if invalid fields
-- are specified. If a field supports empty values, it can be cleared by
-- specifying it in the update mask and not in the CourseWork object. If a
-- field that does not support empty values is included in the update mask
-- and not set in the CourseWork object, an \`INVALID_ARGUMENT\` error is
-- returned. The following fields may be specified by teachers: * \`title\`
-- * \`description\` * \`state\` * \`due_date\` * \`due_time\` *
-- \`max_points\` * \`scheduled_time\` * \`submission_modification_mode\` *
-- \`topic_id\`
ccwpUpdateMask :: Lens' CoursesCourseWorkPatch (Maybe GFieldMask)
ccwpUpdateMask
  = lens _ccwpUpdateMask
      (\ s a -> s{_ccwpUpdateMask = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwpCourseId :: Lens' CoursesCourseWorkPatch Text
ccwpCourseId
  = lens _ccwpCourseId (\ s a -> s{_ccwpCourseId = a})

-- | OAuth access token.
ccwpAccessToken :: Lens' CoursesCourseWorkPatch (Maybe Text)
ccwpAccessToken
  = lens _ccwpAccessToken
      (\ s a -> s{_ccwpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwpUploadType :: Lens' CoursesCourseWorkPatch (Maybe Text)
ccwpUploadType
  = lens _ccwpUploadType
      (\ s a -> s{_ccwpUploadType = a})

-- | Multipart request metadata.
ccwpPayload :: Lens' CoursesCourseWorkPatch CourseWork
ccwpPayload
  = lens _ccwpPayload (\ s a -> s{_ccwpPayload = a})

-- | Identifier of the course work.
ccwpId :: Lens' CoursesCourseWorkPatch Text
ccwpId = lens _ccwpId (\ s a -> s{_ccwpId = a})

-- | JSONP
ccwpCallback :: Lens' CoursesCourseWorkPatch (Maybe Text)
ccwpCallback
  = lens _ccwpCallback (\ s a -> s{_ccwpCallback = a})

instance GoogleRequest CoursesCourseWorkPatch where
        type Rs CoursesCourseWorkPatch = CourseWork
        type Scopes CoursesCourseWorkPatch =
             '["https://www.googleapis.com/auth/classroom.coursework.students"]
        requestClient CoursesCourseWorkPatch'{..}
          = go _ccwpCourseId _ccwpId _ccwpXgafv
              _ccwpUploadProtocol
              _ccwpUpdateMask
              _ccwpAccessToken
              _ccwpUploadType
              _ccwpCallback
              (Just AltJSON)
              _ccwpPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesCourseWorkPatchResource)
                      mempty
