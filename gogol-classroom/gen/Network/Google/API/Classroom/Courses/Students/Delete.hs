{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Classroom.Courses.Students.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete students of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no student of this
-- course has the requested ID or if the course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.students.delete@.
module Network.Google.API.Classroom.Courses.Students.Delete
    (
    -- * REST Resource
      CoursesStudentsDeleteAPI

    -- * Creating a Request
    , coursesStudentsDelete'
    , CoursesStudentsDelete'

    -- * Request Lenses
    , csdXgafv
    , csdQuotaUser
    , csdPrettyPrint
    , csdUploadProtocol
    , csdPp
    , csdCourseId
    , csdAccessToken
    , csdUploadType
    , csdUserId
    , csdBearerToken
    , csdKey
    , csdOauthToken
    , csdFields
    , csdCallback
    , csdAlt
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for classroom.courses.students.delete which the
-- 'CoursesStudentsDelete'' request conforms to.
type CoursesStudentsDeleteAPI =
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
                                         Delete '[JSON] Empty

-- | Deletes a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete students of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no student of this
-- course has the requested ID or if the course does not exist.
--
-- /See:/ 'coursesStudentsDelete'' smart constructor.
data CoursesStudentsDelete' = CoursesStudentsDelete'
    { _csdXgafv          :: !(Maybe Text)
    , _csdQuotaUser      :: !(Maybe Text)
    , _csdPrettyPrint    :: !Bool
    , _csdUploadProtocol :: !(Maybe Text)
    , _csdPp             :: !Bool
    , _csdCourseId       :: !Text
    , _csdAccessToken    :: !(Maybe Text)
    , _csdUploadType     :: !(Maybe Text)
    , _csdUserId         :: !Text
    , _csdBearerToken    :: !(Maybe Text)
    , _csdKey            :: !(Maybe Text)
    , _csdOauthToken     :: !(Maybe Text)
    , _csdFields         :: !(Maybe Text)
    , _csdCallback       :: !(Maybe Text)
    , _csdAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesStudentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdXgafv'
--
-- * 'csdQuotaUser'
--
-- * 'csdPrettyPrint'
--
-- * 'csdUploadProtocol'
--
-- * 'csdPp'
--
-- * 'csdCourseId'
--
-- * 'csdAccessToken'
--
-- * 'csdUploadType'
--
-- * 'csdUserId'
--
-- * 'csdBearerToken'
--
-- * 'csdKey'
--
-- * 'csdOauthToken'
--
-- * 'csdFields'
--
-- * 'csdCallback'
--
-- * 'csdAlt'
coursesStudentsDelete'
    :: Text -- ^ 'courseId'
    -> Text -- ^ 'userId'
    -> CoursesStudentsDelete'
coursesStudentsDelete' pCsdCourseId_ pCsdUserId_ =
    CoursesStudentsDelete'
    { _csdXgafv = Nothing
    , _csdQuotaUser = Nothing
    , _csdPrettyPrint = True
    , _csdUploadProtocol = Nothing
    , _csdPp = True
    , _csdCourseId = pCsdCourseId_
    , _csdAccessToken = Nothing
    , _csdUploadType = Nothing
    , _csdUserId = pCsdUserId_
    , _csdBearerToken = Nothing
    , _csdKey = Nothing
    , _csdOauthToken = Nothing
    , _csdFields = Nothing
    , _csdCallback = Nothing
    , _csdAlt = "json"
    }

-- | V1 error format.
csdXgafv :: Lens' CoursesStudentsDelete' (Maybe Text)
csdXgafv = lens _csdXgafv (\ s a -> s{_csdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
csdQuotaUser :: Lens' CoursesStudentsDelete' (Maybe Text)
csdQuotaUser
  = lens _csdQuotaUser (\ s a -> s{_csdQuotaUser = a})

-- | Returns response with indentations and line breaks.
csdPrettyPrint :: Lens' CoursesStudentsDelete' Bool
csdPrettyPrint
  = lens _csdPrettyPrint
      (\ s a -> s{_csdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csdUploadProtocol :: Lens' CoursesStudentsDelete' (Maybe Text)
csdUploadProtocol
  = lens _csdUploadProtocol
      (\ s a -> s{_csdUploadProtocol = a})

-- | Pretty-print response.
csdPp :: Lens' CoursesStudentsDelete' Bool
csdPp = lens _csdPp (\ s a -> s{_csdPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
csdCourseId :: Lens' CoursesStudentsDelete' Text
csdCourseId
  = lens _csdCourseId (\ s a -> s{_csdCourseId = a})

-- | OAuth access token.
csdAccessToken :: Lens' CoursesStudentsDelete' (Maybe Text)
csdAccessToken
  = lens _csdAccessToken
      (\ s a -> s{_csdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csdUploadType :: Lens' CoursesStudentsDelete' (Maybe Text)
csdUploadType
  = lens _csdUploadType
      (\ s a -> s{_csdUploadType = a})

-- | Identifier of the student to delete. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
csdUserId :: Lens' CoursesStudentsDelete' Text
csdUserId
  = lens _csdUserId (\ s a -> s{_csdUserId = a})

-- | OAuth bearer token.
csdBearerToken :: Lens' CoursesStudentsDelete' (Maybe Text)
csdBearerToken
  = lens _csdBearerToken
      (\ s a -> s{_csdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
csdKey :: Lens' CoursesStudentsDelete' (Maybe Text)
csdKey = lens _csdKey (\ s a -> s{_csdKey = a})

-- | OAuth 2.0 token for the current user.
csdOauthToken :: Lens' CoursesStudentsDelete' (Maybe Text)
csdOauthToken
  = lens _csdOauthToken
      (\ s a -> s{_csdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
csdFields :: Lens' CoursesStudentsDelete' (Maybe Text)
csdFields
  = lens _csdFields (\ s a -> s{_csdFields = a})

-- | JSONP
csdCallback :: Lens' CoursesStudentsDelete' (Maybe Text)
csdCallback
  = lens _csdCallback (\ s a -> s{_csdCallback = a})

-- | Data format for response.
csdAlt :: Lens' CoursesStudentsDelete' Text
csdAlt = lens _csdAlt (\ s a -> s{_csdAlt = a})

instance GoogleRequest CoursesStudentsDelete' where
        type Rs CoursesStudentsDelete' = Empty
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesStudentsDelete'{..}
          = go _csdXgafv _csdQuotaUser (Just _csdPrettyPrint)
              _csdUploadProtocol
              (Just _csdPp)
              _csdCourseId
              _csdAccessToken
              _csdUploadType
              _csdUserId
              _csdBearerToken
              _csdKey
              _csdOauthToken
              _csdFields
              _csdCallback
              (Just _csdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesStudentsDeleteAPI)
                      r
                      u
