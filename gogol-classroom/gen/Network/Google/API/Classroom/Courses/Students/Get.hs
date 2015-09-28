{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Classroom.Courses.Students.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view students of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no student of this
-- course has the requested ID or if the course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.students.get@.
module Network.Google.API.Classroom.Courses.Students.Get
    (
    -- * REST Resource
      CoursesStudentsGetAPI

    -- * Creating a Request
    , coursesStudentsGet'
    , CoursesStudentsGet'

    -- * Request Lenses
    , csgXgafv
    , csgQuotaUser
    , csgPrettyPrint
    , csgUploadProtocol
    , csgPp
    , csgCourseId
    , csgAccessToken
    , csgUploadType
    , csgUserId
    , csgBearerToken
    , csgKey
    , csgOauthToken
    , csgFields
    , csgCallback
    , csgAlt
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for classroom.courses.students.get which the
-- 'CoursesStudentsGet'' request conforms to.
type CoursesStudentsGetAPI =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             Capture "userId" Text :>
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
                                         Get '[JSON] Student

-- | Returns a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view students of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no student of this
-- course has the requested ID or if the course does not exist.
--
-- /See:/ 'coursesStudentsGet'' smart constructor.
data CoursesStudentsGet' = CoursesStudentsGet'
    { _csgXgafv          :: !(Maybe Text)
    , _csgQuotaUser      :: !(Maybe Text)
    , _csgPrettyPrint    :: !Bool
    , _csgUploadProtocol :: !(Maybe Text)
    , _csgPp             :: !Bool
    , _csgCourseId       :: !Text
    , _csgAccessToken    :: !(Maybe Text)
    , _csgUploadType     :: !(Maybe Text)
    , _csgUserId         :: !Text
    , _csgBearerToken    :: !(Maybe Text)
    , _csgKey            :: !(Maybe Text)
    , _csgOauthToken     :: !(Maybe Text)
    , _csgFields         :: !(Maybe Text)
    , _csgCallback       :: !(Maybe Text)
    , _csgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesStudentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csgXgafv'
--
-- * 'csgQuotaUser'
--
-- * 'csgPrettyPrint'
--
-- * 'csgUploadProtocol'
--
-- * 'csgPp'
--
-- * 'csgCourseId'
--
-- * 'csgAccessToken'
--
-- * 'csgUploadType'
--
-- * 'csgUserId'
--
-- * 'csgBearerToken'
--
-- * 'csgKey'
--
-- * 'csgOauthToken'
--
-- * 'csgFields'
--
-- * 'csgCallback'
--
-- * 'csgAlt'
coursesStudentsGet'
    :: Text -- ^ 'courseId'
    -> Text -- ^ 'userId'
    -> CoursesStudentsGet'
coursesStudentsGet' pCsgCourseId_ pCsgUserId_ =
    CoursesStudentsGet'
    { _csgXgafv = Nothing
    , _csgQuotaUser = Nothing
    , _csgPrettyPrint = True
    , _csgUploadProtocol = Nothing
    , _csgPp = True
    , _csgCourseId = pCsgCourseId_
    , _csgAccessToken = Nothing
    , _csgUploadType = Nothing
    , _csgUserId = pCsgUserId_
    , _csgBearerToken = Nothing
    , _csgKey = Nothing
    , _csgOauthToken = Nothing
    , _csgFields = Nothing
    , _csgCallback = Nothing
    , _csgAlt = "json"
    }

-- | V1 error format.
csgXgafv :: Lens' CoursesStudentsGet' (Maybe Text)
csgXgafv = lens _csgXgafv (\ s a -> s{_csgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
csgQuotaUser :: Lens' CoursesStudentsGet' (Maybe Text)
csgQuotaUser
  = lens _csgQuotaUser (\ s a -> s{_csgQuotaUser = a})

-- | Returns response with indentations and line breaks.
csgPrettyPrint :: Lens' CoursesStudentsGet' Bool
csgPrettyPrint
  = lens _csgPrettyPrint
      (\ s a -> s{_csgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csgUploadProtocol :: Lens' CoursesStudentsGet' (Maybe Text)
csgUploadProtocol
  = lens _csgUploadProtocol
      (\ s a -> s{_csgUploadProtocol = a})

-- | Pretty-print response.
csgPp :: Lens' CoursesStudentsGet' Bool
csgPp = lens _csgPp (\ s a -> s{_csgPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
csgCourseId :: Lens' CoursesStudentsGet' Text
csgCourseId
  = lens _csgCourseId (\ s a -> s{_csgCourseId = a})

-- | OAuth access token.
csgAccessToken :: Lens' CoursesStudentsGet' (Maybe Text)
csgAccessToken
  = lens _csgAccessToken
      (\ s a -> s{_csgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csgUploadType :: Lens' CoursesStudentsGet' (Maybe Text)
csgUploadType
  = lens _csgUploadType
      (\ s a -> s{_csgUploadType = a})

-- | Identifier of the student to return. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
csgUserId :: Lens' CoursesStudentsGet' Text
csgUserId
  = lens _csgUserId (\ s a -> s{_csgUserId = a})

-- | OAuth bearer token.
csgBearerToken :: Lens' CoursesStudentsGet' (Maybe Text)
csgBearerToken
  = lens _csgBearerToken
      (\ s a -> s{_csgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csgKey :: Lens' CoursesStudentsGet' (Maybe Text)
csgKey = lens _csgKey (\ s a -> s{_csgKey = a})

-- | OAuth 2.0 token for the current user.
csgOauthToken :: Lens' CoursesStudentsGet' (Maybe Text)
csgOauthToken
  = lens _csgOauthToken
      (\ s a -> s{_csgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
csgFields :: Lens' CoursesStudentsGet' (Maybe Text)
csgFields
  = lens _csgFields (\ s a -> s{_csgFields = a})

-- | JSONP
csgCallback :: Lens' CoursesStudentsGet' (Maybe Text)
csgCallback
  = lens _csgCallback (\ s a -> s{_csgCallback = a})

-- | Data format for response.
csgAlt :: Lens' CoursesStudentsGet' Text
csgAlt = lens _csgAlt (\ s a -> s{_csgAlt = a})

instance GoogleRequest CoursesStudentsGet' where
        type Rs CoursesStudentsGet' = Student
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesStudentsGet'{..}
          = go _csgXgafv _csgQuotaUser (Just _csgPrettyPrint)
              _csgUploadProtocol
              (Just _csgPp)
              _csgCourseId
              _csgAccessToken
              _csgUploadType
              _csgUserId
              _csgBearerToken
              _csgKey
              _csgOauthToken
              _csgFields
              _csgCallback
              (Just _csgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesStudentsGetAPI)
                      r
                      u
