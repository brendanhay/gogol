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
-- Module      : Network.Google.Resource.Classroom.Courses.Teachers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view teachers of this course or for access errors. * \`NOT_FOUND\` if
-- no teacher of this course has the requested ID or if the course does not
-- exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.teachers.get@.
module Network.Google.Resource.Classroom.Courses.Teachers.Get
    (
    -- * REST Resource
      CoursesTeachersGetResource

    -- * Creating a Request
    , coursesTeachersGet
    , CoursesTeachersGet

    -- * Request Lenses
    , ctgtXgafv
    , ctgtUploadProtocol
    , ctgtCourseId
    , ctgtAccessToken
    , ctgtUploadType
    , ctgtUserId
    , ctgtCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.teachers.get@ method which the
-- 'CoursesTeachersGet' request conforms to.
type CoursesTeachersGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Teacher

-- | Returns a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view teachers of this course or for access errors. * \`NOT_FOUND\` if
-- no teacher of this course has the requested ID or if the course does not
-- exist.
--
-- /See:/ 'coursesTeachersGet' smart constructor.
data CoursesTeachersGet =
  CoursesTeachersGet'
    { _ctgtXgafv :: !(Maybe Xgafv)
    , _ctgtUploadProtocol :: !(Maybe Text)
    , _ctgtCourseId :: !Text
    , _ctgtAccessToken :: !(Maybe Text)
    , _ctgtUploadType :: !(Maybe Text)
    , _ctgtUserId :: !Text
    , _ctgtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesTeachersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgtXgafv'
--
-- * 'ctgtUploadProtocol'
--
-- * 'ctgtCourseId'
--
-- * 'ctgtAccessToken'
--
-- * 'ctgtUploadType'
--
-- * 'ctgtUserId'
--
-- * 'ctgtCallback'
coursesTeachersGet
    :: Text -- ^ 'ctgtCourseId'
    -> Text -- ^ 'ctgtUserId'
    -> CoursesTeachersGet
coursesTeachersGet pCtgtCourseId_ pCtgtUserId_ =
  CoursesTeachersGet'
    { _ctgtXgafv = Nothing
    , _ctgtUploadProtocol = Nothing
    , _ctgtCourseId = pCtgtCourseId_
    , _ctgtAccessToken = Nothing
    , _ctgtUploadType = Nothing
    , _ctgtUserId = pCtgtUserId_
    , _ctgtCallback = Nothing
    }


-- | V1 error format.
ctgtXgafv :: Lens' CoursesTeachersGet (Maybe Xgafv)
ctgtXgafv
  = lens _ctgtXgafv (\ s a -> s{_ctgtXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctgtUploadProtocol :: Lens' CoursesTeachersGet (Maybe Text)
ctgtUploadProtocol
  = lens _ctgtUploadProtocol
      (\ s a -> s{_ctgtUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctgtCourseId :: Lens' CoursesTeachersGet Text
ctgtCourseId
  = lens _ctgtCourseId (\ s a -> s{_ctgtCourseId = a})

-- | OAuth access token.
ctgtAccessToken :: Lens' CoursesTeachersGet (Maybe Text)
ctgtAccessToken
  = lens _ctgtAccessToken
      (\ s a -> s{_ctgtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctgtUploadType :: Lens' CoursesTeachersGet (Maybe Text)
ctgtUploadType
  = lens _ctgtUploadType
      (\ s a -> s{_ctgtUploadType = a})

-- | Identifier of the teacher to return. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
ctgtUserId :: Lens' CoursesTeachersGet Text
ctgtUserId
  = lens _ctgtUserId (\ s a -> s{_ctgtUserId = a})

-- | JSONP
ctgtCallback :: Lens' CoursesTeachersGet (Maybe Text)
ctgtCallback
  = lens _ctgtCallback (\ s a -> s{_ctgtCallback = a})

instance GoogleRequest CoursesTeachersGet where
        type Rs CoursesTeachersGet = Teacher
        type Scopes CoursesTeachersGet =
             '["https://www.googleapis.com/auth/classroom.profile.emails",
               "https://www.googleapis.com/auth/classroom.profile.photos",
               "https://www.googleapis.com/auth/classroom.rosters",
               "https://www.googleapis.com/auth/classroom.rosters.readonly"]
        requestClient CoursesTeachersGet'{..}
          = go _ctgtCourseId _ctgtUserId _ctgtXgafv
              _ctgtUploadProtocol
              _ctgtAccessToken
              _ctgtUploadType
              _ctgtCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTeachersGetResource)
                      mempty
