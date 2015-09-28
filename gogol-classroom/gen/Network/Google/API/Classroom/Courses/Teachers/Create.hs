{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Classroom.Courses.Teachers.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create teachers in this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if the requested course
-- ID does not exist. * \`FAILED_PRECONDITION\` if the requested user\'s
-- account is disabled. * \`ALREADY_EXISTS\` if the user is already a
-- teacher or student in the course.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.teachers.create@.
module Network.Google.API.Classroom.Courses.Teachers.Create
    (
    -- * REST Resource
      CoursesTeachersCreateAPI

    -- * Creating a Request
    , coursesTeachersCreate'
    , CoursesTeachersCreate'

    -- * Request Lenses
    , ctcXgafv
    , ctcQuotaUser
    , ctcPrettyPrint
    , ctcUploadProtocol
    , ctcPp
    , ctcCourseId
    , ctcAccessToken
    , ctcUploadType
    , ctcBearerToken
    , ctcKey
    , ctcOauthToken
    , ctcFields
    , ctcCallback
    , ctcAlt
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for classroom.courses.teachers.create which the
-- 'CoursesTeachersCreate'' request conforms to.
type CoursesTeachersCreateAPI =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] Teacher

-- | Creates a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create teachers in this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if the requested course
-- ID does not exist. * \`FAILED_PRECONDITION\` if the requested user\'s
-- account is disabled. * \`ALREADY_EXISTS\` if the user is already a
-- teacher or student in the course.
--
-- /See:/ 'coursesTeachersCreate'' smart constructor.
data CoursesTeachersCreate' = CoursesTeachersCreate'
    { _ctcXgafv          :: !(Maybe Text)
    , _ctcQuotaUser      :: !(Maybe Text)
    , _ctcPrettyPrint    :: !Bool
    , _ctcUploadProtocol :: !(Maybe Text)
    , _ctcPp             :: !Bool
    , _ctcCourseId       :: !Text
    , _ctcAccessToken    :: !(Maybe Text)
    , _ctcUploadType     :: !(Maybe Text)
    , _ctcBearerToken    :: !(Maybe Text)
    , _ctcKey            :: !(Maybe Text)
    , _ctcOauthToken     :: !(Maybe Text)
    , _ctcFields         :: !(Maybe Text)
    , _ctcCallback       :: !(Maybe Text)
    , _ctcAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesTeachersCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctcXgafv'
--
-- * 'ctcQuotaUser'
--
-- * 'ctcPrettyPrint'
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
-- * 'ctcBearerToken'
--
-- * 'ctcKey'
--
-- * 'ctcOauthToken'
--
-- * 'ctcFields'
--
-- * 'ctcCallback'
--
-- * 'ctcAlt'
coursesTeachersCreate'
    :: Text -- ^ 'courseId'
    -> CoursesTeachersCreate'
coursesTeachersCreate' pCtcCourseId_ =
    CoursesTeachersCreate'
    { _ctcXgafv = Nothing
    , _ctcQuotaUser = Nothing
    , _ctcPrettyPrint = True
    , _ctcUploadProtocol = Nothing
    , _ctcPp = True
    , _ctcCourseId = pCtcCourseId_
    , _ctcAccessToken = Nothing
    , _ctcUploadType = Nothing
    , _ctcBearerToken = Nothing
    , _ctcKey = Nothing
    , _ctcOauthToken = Nothing
    , _ctcFields = Nothing
    , _ctcCallback = Nothing
    , _ctcAlt = "json"
    }

-- | V1 error format.
ctcXgafv :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcXgafv = lens _ctcXgafv (\ s a -> s{_ctcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ctcQuotaUser :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcQuotaUser
  = lens _ctcQuotaUser (\ s a -> s{_ctcQuotaUser = a})

-- | Returns response with indentations and line breaks.
ctcPrettyPrint :: Lens' CoursesTeachersCreate' Bool
ctcPrettyPrint
  = lens _ctcPrettyPrint
      (\ s a -> s{_ctcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctcUploadProtocol :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcUploadProtocol
  = lens _ctcUploadProtocol
      (\ s a -> s{_ctcUploadProtocol = a})

-- | Pretty-print response.
ctcPp :: Lens' CoursesTeachersCreate' Bool
ctcPp = lens _ctcPp (\ s a -> s{_ctcPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
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

-- | OAuth bearer token.
ctcBearerToken :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcBearerToken
  = lens _ctcBearerToken
      (\ s a -> s{_ctcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctcKey :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcKey = lens _ctcKey (\ s a -> s{_ctcKey = a})

-- | OAuth 2.0 token for the current user.
ctcOauthToken :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcOauthToken
  = lens _ctcOauthToken
      (\ s a -> s{_ctcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctcFields :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcFields
  = lens _ctcFields (\ s a -> s{_ctcFields = a})

-- | JSONP
ctcCallback :: Lens' CoursesTeachersCreate' (Maybe Text)
ctcCallback
  = lens _ctcCallback (\ s a -> s{_ctcCallback = a})

-- | Data format for response.
ctcAlt :: Lens' CoursesTeachersCreate' Text
ctcAlt = lens _ctcAlt (\ s a -> s{_ctcAlt = a})

instance GoogleRequest CoursesTeachersCreate' where
        type Rs CoursesTeachersCreate' = Teacher
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesTeachersCreate'{..}
          = go _ctcXgafv _ctcQuotaUser (Just _ctcPrettyPrint)
              _ctcUploadProtocol
              (Just _ctcPp)
              _ctcCourseId
              _ctcAccessToken
              _ctcUploadType
              _ctcBearerToken
              _ctcKey
              _ctcOauthToken
              _ctcFields
              _ctcCallback
              (Just _ctcAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesTeachersCreateAPI)
                      r
                      u
