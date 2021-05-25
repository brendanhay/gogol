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
-- Module      : Network.Google.Resource.Classroom.Courses.Teachers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete teachers of this course or for access errors. * \`NOT_FOUND\`
-- if no teacher of this course has the requested ID or if the course does
-- not exist. * \`FAILED_PRECONDITION\` if the requested ID belongs to the
-- primary teacher of this course.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.teachers.delete@.
module Network.Google.Resource.Classroom.Courses.Teachers.Delete
    (
    -- * REST Resource
      CoursesTeachersDeleteResource

    -- * Creating a Request
    , coursesTeachersDelete
    , CoursesTeachersDelete

    -- * Request Lenses
    , ctdtXgafv
    , ctdtUploadProtocol
    , ctdtCourseId
    , ctdtAccessToken
    , ctdtUploadType
    , ctdtUserId
    , ctdtCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.teachers.delete@ method which the
-- 'CoursesTeachersDelete' request conforms to.
type CoursesTeachersDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             Capture "userId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete teachers of this course or for access errors. * \`NOT_FOUND\`
-- if no teacher of this course has the requested ID or if the course does
-- not exist. * \`FAILED_PRECONDITION\` if the requested ID belongs to the
-- primary teacher of this course.
--
-- /See:/ 'coursesTeachersDelete' smart constructor.
data CoursesTeachersDelete =
  CoursesTeachersDelete'
    { _ctdtXgafv :: !(Maybe Xgafv)
    , _ctdtUploadProtocol :: !(Maybe Text)
    , _ctdtCourseId :: !Text
    , _ctdtAccessToken :: !(Maybe Text)
    , _ctdtUploadType :: !(Maybe Text)
    , _ctdtUserId :: !Text
    , _ctdtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesTeachersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctdtXgafv'
--
-- * 'ctdtUploadProtocol'
--
-- * 'ctdtCourseId'
--
-- * 'ctdtAccessToken'
--
-- * 'ctdtUploadType'
--
-- * 'ctdtUserId'
--
-- * 'ctdtCallback'
coursesTeachersDelete
    :: Text -- ^ 'ctdtCourseId'
    -> Text -- ^ 'ctdtUserId'
    -> CoursesTeachersDelete
coursesTeachersDelete pCtdtCourseId_ pCtdtUserId_ =
  CoursesTeachersDelete'
    { _ctdtXgafv = Nothing
    , _ctdtUploadProtocol = Nothing
    , _ctdtCourseId = pCtdtCourseId_
    , _ctdtAccessToken = Nothing
    , _ctdtUploadType = Nothing
    , _ctdtUserId = pCtdtUserId_
    , _ctdtCallback = Nothing
    }


-- | V1 error format.
ctdtXgafv :: Lens' CoursesTeachersDelete (Maybe Xgafv)
ctdtXgafv
  = lens _ctdtXgafv (\ s a -> s{_ctdtXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctdtUploadProtocol :: Lens' CoursesTeachersDelete (Maybe Text)
ctdtUploadProtocol
  = lens _ctdtUploadProtocol
      (\ s a -> s{_ctdtUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctdtCourseId :: Lens' CoursesTeachersDelete Text
ctdtCourseId
  = lens _ctdtCourseId (\ s a -> s{_ctdtCourseId = a})

-- | OAuth access token.
ctdtAccessToken :: Lens' CoursesTeachersDelete (Maybe Text)
ctdtAccessToken
  = lens _ctdtAccessToken
      (\ s a -> s{_ctdtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctdtUploadType :: Lens' CoursesTeachersDelete (Maybe Text)
ctdtUploadType
  = lens _ctdtUploadType
      (\ s a -> s{_ctdtUploadType = a})

-- | Identifier of the teacher to delete. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
ctdtUserId :: Lens' CoursesTeachersDelete Text
ctdtUserId
  = lens _ctdtUserId (\ s a -> s{_ctdtUserId = a})

-- | JSONP
ctdtCallback :: Lens' CoursesTeachersDelete (Maybe Text)
ctdtCallback
  = lens _ctdtCallback (\ s a -> s{_ctdtCallback = a})

instance GoogleRequest CoursesTeachersDelete where
        type Rs CoursesTeachersDelete = Empty
        type Scopes CoursesTeachersDelete =
             '["https://www.googleapis.com/auth/classroom.rosters"]
        requestClient CoursesTeachersDelete'{..}
          = go _ctdtCourseId _ctdtUserId _ctdtXgafv
              _ctdtUploadProtocol
              _ctdtAccessToken
              _ctdtUploadType
              _ctdtCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTeachersDeleteResource)
                      mempty
