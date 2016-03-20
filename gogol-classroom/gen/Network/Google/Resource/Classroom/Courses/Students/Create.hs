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
-- Module      : Network.Google.Resource.Classroom.Courses.Students.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a user as a student of a course. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to create students in this course or for access errors. *
-- \`NOT_FOUND\` if the requested course ID does not exist. *
-- \`FAILED_PRECONDITION\` if the requested user\'s account is disabled,
-- for the following request errors: * CourseMemberLimitReached *
-- CourseNotModifiable * UserGroupsMembershipLimitReached *
-- \`ALREADY_EXISTS\` if the user is already a student or teacher in the
-- course.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.students.create@.
module Network.Google.Resource.Classroom.Courses.Students.Create
    (
    -- * REST Resource
      CoursesStudentsCreateResource

    -- * Creating a Request
    , coursesStudentsCreate
    , CoursesStudentsCreate

    -- * Request Lenses
    , cscXgafv
    , cscUploadProtocol
    , cscPp
    , cscCourseId
    , cscAccessToken
    , cscUploadType
    , cscPayload
    , cscEnrollmentCode
    , cscBearerToken
    , cscCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.students.create@ method which the
-- 'CoursesStudentsCreate' request conforms to.
type CoursesStudentsCreateResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "enrollmentCode" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Student :> Post '[JSON] Student

-- | Adds a user as a student of a course. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to create students in this course or for access errors. *
-- \`NOT_FOUND\` if the requested course ID does not exist. *
-- \`FAILED_PRECONDITION\` if the requested user\'s account is disabled,
-- for the following request errors: * CourseMemberLimitReached *
-- CourseNotModifiable * UserGroupsMembershipLimitReached *
-- \`ALREADY_EXISTS\` if the user is already a student or teacher in the
-- course.
--
-- /See:/ 'coursesStudentsCreate' smart constructor.
data CoursesStudentsCreate = CoursesStudentsCreate
    { _cscXgafv          :: !(Maybe Text)
    , _cscUploadProtocol :: !(Maybe Text)
    , _cscPp             :: !Bool
    , _cscCourseId       :: !Text
    , _cscAccessToken    :: !(Maybe Text)
    , _cscUploadType     :: !(Maybe Text)
    , _cscPayload        :: !Student
    , _cscEnrollmentCode :: !(Maybe Text)
    , _cscBearerToken    :: !(Maybe Text)
    , _cscCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesStudentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cscXgafv'
--
-- * 'cscUploadProtocol'
--
-- * 'cscPp'
--
-- * 'cscCourseId'
--
-- * 'cscAccessToken'
--
-- * 'cscUploadType'
--
-- * 'cscPayload'
--
-- * 'cscEnrollmentCode'
--
-- * 'cscBearerToken'
--
-- * 'cscCallback'
coursesStudentsCreate
    :: Text -- ^ 'cscCourseId'
    -> Student -- ^ 'cscPayload'
    -> CoursesStudentsCreate
coursesStudentsCreate pCscCourseId_ pCscPayload_ =
    CoursesStudentsCreate
    { _cscXgafv = Nothing
    , _cscUploadProtocol = Nothing
    , _cscPp = True
    , _cscCourseId = pCscCourseId_
    , _cscAccessToken = Nothing
    , _cscUploadType = Nothing
    , _cscPayload = pCscPayload_
    , _cscEnrollmentCode = Nothing
    , _cscBearerToken = Nothing
    , _cscCallback = Nothing
    }

-- | V1 error format.
cscXgafv :: Lens' CoursesStudentsCreate (Maybe Text)
cscXgafv = lens _cscXgafv (\ s a -> s{_cscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cscUploadProtocol :: Lens' CoursesStudentsCreate (Maybe Text)
cscUploadProtocol
  = lens _cscUploadProtocol
      (\ s a -> s{_cscUploadProtocol = a})

-- | Pretty-print response.
cscPp :: Lens' CoursesStudentsCreate Bool
cscPp = lens _cscPp (\ s a -> s{_cscPp = a})

-- | Identifier of the course to create the student in. This identifier can
-- be either the Classroom-assigned identifier or an alias.
cscCourseId :: Lens' CoursesStudentsCreate Text
cscCourseId
  = lens _cscCourseId (\ s a -> s{_cscCourseId = a})

-- | OAuth access token.
cscAccessToken :: Lens' CoursesStudentsCreate (Maybe Text)
cscAccessToken
  = lens _cscAccessToken
      (\ s a -> s{_cscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cscUploadType :: Lens' CoursesStudentsCreate (Maybe Text)
cscUploadType
  = lens _cscUploadType
      (\ s a -> s{_cscUploadType = a})

-- | Multipart request metadata.
cscPayload :: Lens' CoursesStudentsCreate Student
cscPayload
  = lens _cscPayload (\ s a -> s{_cscPayload = a})

-- | Enrollment code of the course to create the student in. This code is
-- required if userId corresponds to the requesting user; it may be omitted
-- if the requesting user has administrative permissions to create students
-- for any user.
cscEnrollmentCode :: Lens' CoursesStudentsCreate (Maybe Text)
cscEnrollmentCode
  = lens _cscEnrollmentCode
      (\ s a -> s{_cscEnrollmentCode = a})

-- | OAuth bearer token.
cscBearerToken :: Lens' CoursesStudentsCreate (Maybe Text)
cscBearerToken
  = lens _cscBearerToken
      (\ s a -> s{_cscBearerToken = a})

-- | JSONP
cscCallback :: Lens' CoursesStudentsCreate (Maybe Text)
cscCallback
  = lens _cscCallback (\ s a -> s{_cscCallback = a})

instance GoogleRequest CoursesStudentsCreate where
        type Rs CoursesStudentsCreate = Student
        requestClient CoursesStudentsCreate{..}
          = go _cscCourseId _cscXgafv _cscUploadProtocol
              (Just _cscPp)
              _cscAccessToken
              _cscUploadType
              _cscEnrollmentCode
              _cscBearerToken
              _cscCallback
              (Just AltJSON)
              _cscPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesStudentsCreateResource)
                      mempty
