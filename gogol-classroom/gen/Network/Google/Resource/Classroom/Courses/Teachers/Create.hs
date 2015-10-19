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
-- Module      : Network.Google.Resource.Classroom.Courses.Teachers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create teachers in this course or for access errors. * \`NOT_FOUND\`
-- if the requested course ID does not exist. * \`FAILED_PRECONDITION\` if
-- the requested user\'s account is disabled, for the following request
-- errors: * CourseMemberLimitReached * CourseNotModifiable *
-- CourseTeacherLimitReached * UserGroupsMembershipLimitReached *
-- \`ALREADY_EXISTS\` if the user is already a teacher or student in the
-- course.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesTeachersCreate@.
module Network.Google.Resource.Classroom.Courses.Teachers.Create
    (
    -- * REST Resource
      CoursesTeachersCreateResource

    -- * Creating a Request
    , coursesTeachersCreate'
    , CoursesTeachersCreate'

    -- * Request Lenses
    , ctcXgafv
    , ctcUploadProtocol
    , ctcPp
    , ctcCourseId
    , ctcAccessToken
    , ctcUploadType
    , ctcPayload
    , ctcBearerToken
    , ctcCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesTeachersCreate@ method which the
-- 'CoursesTeachersCreate'' request conforms to.
type CoursesTeachersCreateResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Teacher :> Post '[JSON] Teacher

-- | Creates a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create teachers in this course or for access errors. * \`NOT_FOUND\`
-- if the requested course ID does not exist. * \`FAILED_PRECONDITION\` if
-- the requested user\'s account is disabled, for the following request
-- errors: * CourseMemberLimitReached * CourseNotModifiable *
-- CourseTeacherLimitReached * UserGroupsMembershipLimitReached *
-- \`ALREADY_EXISTS\` if the user is already a teacher or student in the
-- course.
--
-- /See:/ 'coursesTeachersCreate'' smart constructor.
data CoursesTeachersCreate' = CoursesTeachersCreate'
    { _ctcXgafv          :: !(Maybe Text)
    , _ctcUploadProtocol :: !(Maybe Text)
    , _ctcPp             :: !Bool
    , _ctcCourseId       :: !Text
    , _ctcAccessToken    :: !(Maybe Text)
    , _ctcUploadType     :: !(Maybe Text)
    , _ctcPayload        :: !Teacher
    , _ctcBearerToken    :: !(Maybe Text)
    , _ctcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesTeachersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctcXgafv'
--
-- * 'ctcUploadProtocol'
--
-- * 'ctcPp'
--
-- * 'ctcCourseId'
--
-- * 'ctcAccessToken'
--
-- * 'ctcUploadType'
--
-- * 'ctcPayload'
--
-- * 'ctcBearerToken'
--
-- * 'ctcCallback'
coursesTeachersCreate'
    :: Text -- ^ 'courseId'
    -> Teacher -- ^ 'payload'
    -> CoursesTeachersCreate'
coursesTeachersCreate' pCtcCourseId_ pCtcPayload_ =
    CoursesTeachersCreate'
    { _ctcXgafv = Nothing
    , _ctcUploadProtocol = Nothing
    , _ctcPp = True
    , _ctcCourseId = pCtcCourseId_
    , _ctcAccessToken = Nothing
    , _ctcUploadType = Nothing
    , _ctcPayload = pCtcPayload_
    , _ctcBearerToken = Nothing
    , _ctcCallback = Nothing
    }

-- | V1 error format.
ctcXgafv :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcXgafv = lens _ctcXgafv (\ s a -> s{_ctcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctcUploadProtocol :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcUploadProtocol
  = lens _ctcUploadProtocol
      (\ s a -> s{_ctcUploadProtocol = a})

-- | Pretty-print response.
ctcPp :: Lens' CoursesTeachersCreate' Bool
ctcPp = lens _ctcPp (\ s a -> s{_ctcPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctcCourseId :: Lens' CoursesTeachersCreate' Text
ctcCourseId
  = lens _ctcCourseId (\ s a -> s{_ctcCourseId = a})

-- | OAuth access token.
ctcAccessToken :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcAccessToken
  = lens _ctcAccessToken
      (\ s a -> s{_ctcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctcUploadType :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcUploadType
  = lens _ctcUploadType
      (\ s a -> s{_ctcUploadType = a})

-- | Multipart request metadata.
ctcPayload :: Lens' CoursesTeachersCreate' Teacher
ctcPayload
  = lens _ctcPayload (\ s a -> s{_ctcPayload = a})

-- | OAuth bearer token.
ctcBearerToken :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcBearerToken
  = lens _ctcBearerToken
      (\ s a -> s{_ctcBearerToken = a})

-- | JSONP
ctcCallback :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcCallback
  = lens _ctcCallback (\ s a -> s{_ctcCallback = a})

instance GoogleRequest CoursesTeachersCreate' where
        type Rs CoursesTeachersCreate' = Teacher
        requestClient CoursesTeachersCreate'{..}
          = go _ctcCourseId _ctcXgafv _ctcUploadProtocol
              (Just _ctcPp)
              _ctcAccessToken
              _ctcUploadType
              _ctcBearerToken
              _ctcCallback
              (Just AltJSON)
              _ctcPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTeachersCreateResource)
                      mempty
