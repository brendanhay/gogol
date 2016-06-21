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
    , ctdXgafv
    , ctdUploadProtocol
    , ctdPp
    , ctdCourseId
    , ctdAccessToken
    , ctdUploadType
    , ctdUserId
    , ctdBearerToken
    , ctdCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.teachers.delete@ method which the
-- 'CoursesTeachersDelete' request conforms to.
type CoursesTeachersDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             Capture "userId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
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
data CoursesTeachersDelete = CoursesTeachersDelete'
    { _ctdXgafv          :: !(Maybe Text)
    , _ctdUploadProtocol :: !(Maybe Text)
    , _ctdPp             :: !Bool
    , _ctdCourseId       :: !Text
    , _ctdAccessToken    :: !(Maybe Text)
    , _ctdUploadType     :: !(Maybe Text)
    , _ctdUserId         :: !Text
    , _ctdBearerToken    :: !(Maybe Text)
    , _ctdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesTeachersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctdXgafv'
--
-- * 'ctdUploadProtocol'
--
-- * 'ctdPp'
--
-- * 'ctdCourseId'
--
-- * 'ctdAccessToken'
--
-- * 'ctdUploadType'
--
-- * 'ctdUserId'
--
-- * 'ctdBearerToken'
--
-- * 'ctdCallback'
coursesTeachersDelete
    :: Text -- ^ 'ctdCourseId'
    -> Text -- ^ 'ctdUserId'
    -> CoursesTeachersDelete
coursesTeachersDelete pCtdCourseId_ pCtdUserId_ =
    CoursesTeachersDelete'
    { _ctdXgafv = Nothing
    , _ctdUploadProtocol = Nothing
    , _ctdPp = True
    , _ctdCourseId = pCtdCourseId_
    , _ctdAccessToken = Nothing
    , _ctdUploadType = Nothing
    , _ctdUserId = pCtdUserId_
    , _ctdBearerToken = Nothing
    , _ctdCallback = Nothing
    }

-- | V1 error format.
ctdXgafv :: Lens' CoursesTeachersDelete (Maybe Text)
ctdXgafv = lens _ctdXgafv (\ s a -> s{_ctdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctdUploadProtocol :: Lens' CoursesTeachersDelete (Maybe Text)
ctdUploadProtocol
  = lens _ctdUploadProtocol
      (\ s a -> s{_ctdUploadProtocol = a})

-- | Pretty-print response.
ctdPp :: Lens' CoursesTeachersDelete Bool
ctdPp = lens _ctdPp (\ s a -> s{_ctdPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctdCourseId :: Lens' CoursesTeachersDelete Text
ctdCourseId
  = lens _ctdCourseId (\ s a -> s{_ctdCourseId = a})

-- | OAuth access token.
ctdAccessToken :: Lens' CoursesTeachersDelete (Maybe Text)
ctdAccessToken
  = lens _ctdAccessToken
      (\ s a -> s{_ctdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctdUploadType :: Lens' CoursesTeachersDelete (Maybe Text)
ctdUploadType
  = lens _ctdUploadType
      (\ s a -> s{_ctdUploadType = a})

-- | Identifier of the teacher to delete. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
ctdUserId :: Lens' CoursesTeachersDelete Text
ctdUserId
  = lens _ctdUserId (\ s a -> s{_ctdUserId = a})

-- | OAuth bearer token.
ctdBearerToken :: Lens' CoursesTeachersDelete (Maybe Text)
ctdBearerToken
  = lens _ctdBearerToken
      (\ s a -> s{_ctdBearerToken = a})

-- | JSONP
ctdCallback :: Lens' CoursesTeachersDelete (Maybe Text)
ctdCallback
  = lens _ctdCallback (\ s a -> s{_ctdCallback = a})

instance GoogleRequest CoursesTeachersDelete where
        type Rs CoursesTeachersDelete = Empty
        type Scopes CoursesTeachersDelete =
             '["https://www.googleapis.com/auth/classroom.rosters"]
        requestClient CoursesTeachersDelete'{..}
          = go _ctdCourseId _ctdUserId _ctdXgafv
              _ctdUploadProtocol
              (Just _ctdPp)
              _ctdAccessToken
              _ctdUploadType
              _ctdBearerToken
              _ctdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTeachersDeleteResource)
                      mempty
