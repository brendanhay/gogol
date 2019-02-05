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
-- Module      : Network.Google.Resource.Classroom.Courses.Students.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view students of this course or for access errors. * \`NOT_FOUND\` if
-- no student of this course has the requested ID or if the course does not
-- exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.students.get@.
module Network.Google.Resource.Classroom.Courses.Students.Get
    (
    -- * REST Resource
      CoursesStudentsGetResource

    -- * Creating a Request
    , coursesStudentsGet
    , CoursesStudentsGet

    -- * Request Lenses
    , csgXgafv
    , csgUploadProtocol
    , csgCourseId
    , csgAccessToken
    , csgUploadType
    , csgUserId
    , csgCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.students.get@ method which the
-- 'CoursesStudentsGet' request conforms to.
type CoursesStudentsGetResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             Capture "userId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Student

-- | Returns a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view students of this course or for access errors. * \`NOT_FOUND\` if
-- no student of this course has the requested ID or if the course does not
-- exist.
--
-- /See:/ 'coursesStudentsGet' smart constructor.
data CoursesStudentsGet = CoursesStudentsGet'
    { _csgXgafv          :: !(Maybe Xgafv)
    , _csgUploadProtocol :: !(Maybe Text)
    , _csgCourseId       :: !Text
    , _csgAccessToken    :: !(Maybe Text)
    , _csgUploadType     :: !(Maybe Text)
    , _csgUserId         :: !Text
    , _csgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesStudentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csgXgafv'
--
-- * 'csgUploadProtocol'
--
-- * 'csgCourseId'
--
-- * 'csgAccessToken'
--
-- * 'csgUploadType'
--
-- * 'csgUserId'
--
-- * 'csgCallback'
coursesStudentsGet
    :: Text -- ^ 'csgCourseId'
    -> Text -- ^ 'csgUserId'
    -> CoursesStudentsGet
coursesStudentsGet pCsgCourseId_ pCsgUserId_ =
    CoursesStudentsGet'
    { _csgXgafv = Nothing
    , _csgUploadProtocol = Nothing
    , _csgCourseId = pCsgCourseId_
    , _csgAccessToken = Nothing
    , _csgUploadType = Nothing
    , _csgUserId = pCsgUserId_
    , _csgCallback = Nothing
    }

-- | V1 error format.
csgXgafv :: Lens' CoursesStudentsGet (Maybe Xgafv)
csgXgafv = lens _csgXgafv (\ s a -> s{_csgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csgUploadProtocol :: Lens' CoursesStudentsGet (Maybe Text)
csgUploadProtocol
  = lens _csgUploadProtocol
      (\ s a -> s{_csgUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
csgCourseId :: Lens' CoursesStudentsGet Text
csgCourseId
  = lens _csgCourseId (\ s a -> s{_csgCourseId = a})

-- | OAuth access token.
csgAccessToken :: Lens' CoursesStudentsGet (Maybe Text)
csgAccessToken
  = lens _csgAccessToken
      (\ s a -> s{_csgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csgUploadType :: Lens' CoursesStudentsGet (Maybe Text)
csgUploadType
  = lens _csgUploadType
      (\ s a -> s{_csgUploadType = a})

-- | Identifier of the student to return. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
csgUserId :: Lens' CoursesStudentsGet Text
csgUserId
  = lens _csgUserId (\ s a -> s{_csgUserId = a})

-- | JSONP
csgCallback :: Lens' CoursesStudentsGet (Maybe Text)
csgCallback
  = lens _csgCallback (\ s a -> s{_csgCallback = a})

instance GoogleRequest CoursesStudentsGet where
        type Rs CoursesStudentsGet = Student
        type Scopes CoursesStudentsGet =
             '["https://www.googleapis.com/auth/classroom.profile.emails",
               "https://www.googleapis.com/auth/classroom.profile.photos",
               "https://www.googleapis.com/auth/classroom.rosters",
               "https://www.googleapis.com/auth/classroom.rosters.readonly"]
        requestClient CoursesStudentsGet'{..}
          = go _csgCourseId _csgUserId _csgXgafv
              _csgUploadProtocol
              _csgAccessToken
              _csgUploadType
              _csgCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesStudentsGetResource)
                      mempty
