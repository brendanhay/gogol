{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Classroom.Courses.Teachers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete teachers of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no teacher of this
-- course has the requested ID or if the course does not exist. *
-- \`FAILED_PRECONDITION\` if the requested ID belongs to the primary
-- teacher of this course.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesTeachersDelete@.
module Network.Google.Resource.Classroom.Courses.Teachers.Delete
    (
    -- * REST Resource
      CoursesTeachersDeleteResource

    -- * Creating a Request
    , coursesTeachersDelete'
    , CoursesTeachersDelete'

    -- * Request Lenses
    , ctdXgafv
    , ctdQuotaUser
    , ctdPrettyPrint
    , ctdUploadProtocol
    , ctdPp
    , ctdCourseId
    , ctdAccessToken
    , ctdUploadType
    , ctdUserId
    , ctdBearerToken
    , ctdKey
    , ctdOAuthToken
    , ctdFields
    , ctdCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesTeachersDelete@ which the
-- 'CoursesTeachersDelete'' request conforms to.
type CoursesTeachersDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             Capture "userId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "fields" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Delete '[JSON] Empty

-- | Deletes a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete teachers of this course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if no teacher of this
-- course has the requested ID or if the course does not exist. *
-- \`FAILED_PRECONDITION\` if the requested ID belongs to the primary
-- teacher of this course.
--
-- /See:/ 'coursesTeachersDelete'' smart constructor.
data CoursesTeachersDelete' = CoursesTeachersDelete'
    { _ctdXgafv          :: !(Maybe Text)
    , _ctdQuotaUser      :: !(Maybe Text)
    , _ctdPrettyPrint    :: !Bool
    , _ctdUploadProtocol :: !(Maybe Text)
    , _ctdPp             :: !Bool
    , _ctdCourseId       :: !Text
    , _ctdAccessToken    :: !(Maybe Text)
    , _ctdUploadType     :: !(Maybe Text)
    , _ctdUserId         :: !Text
    , _ctdBearerToken    :: !(Maybe Text)
    , _ctdKey            :: !(Maybe Key)
    , _ctdOAuthToken     :: !(Maybe OAuthToken)
    , _ctdFields         :: !(Maybe Text)
    , _ctdCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesTeachersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctdXgafv'
--
-- * 'ctdQuotaUser'
--
-- * 'ctdPrettyPrint'
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
-- * 'ctdKey'
--
-- * 'ctdOAuthToken'
--
-- * 'ctdFields'
--
-- * 'ctdCallback'
coursesTeachersDelete'
    :: Text -- ^ 'courseId'
    -> Text -- ^ 'userId'
    -> CoursesTeachersDelete'
coursesTeachersDelete' pCtdCourseId_ pCtdUserId_ =
    CoursesTeachersDelete'
    { _ctdXgafv = Nothing
    , _ctdQuotaUser = Nothing
    , _ctdPrettyPrint = True
    , _ctdUploadProtocol = Nothing
    , _ctdPp = True
    , _ctdCourseId = pCtdCourseId_
    , _ctdAccessToken = Nothing
    , _ctdUploadType = Nothing
    , _ctdUserId = pCtdUserId_
    , _ctdBearerToken = Nothing
    , _ctdKey = Nothing
    , _ctdOAuthToken = Nothing
    , _ctdFields = Nothing
    , _ctdCallback = Nothing
    }

-- | V1 error format.
ctdXgafv :: Lens' CoursesTeachersDelete' (Maybe Text)
ctdXgafv = lens _ctdXgafv (\ s a -> s{_ctdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ctdQuotaUser :: Lens' CoursesTeachersDelete' (Maybe Text)
ctdQuotaUser
  = lens _ctdQuotaUser (\ s a -> s{_ctdQuotaUser = a})

-- | Returns response with indentations and line breaks.
ctdPrettyPrint :: Lens' CoursesTeachersDelete' Bool
ctdPrettyPrint
  = lens _ctdPrettyPrint
      (\ s a -> s{_ctdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctdUploadProtocol :: Lens' CoursesTeachersDelete' (Maybe Text)
ctdUploadProtocol
  = lens _ctdUploadProtocol
      (\ s a -> s{_ctdUploadProtocol = a})

-- | Pretty-print response.
ctdPp :: Lens' CoursesTeachersDelete' Bool
ctdPp = lens _ctdPp (\ s a -> s{_ctdPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
ctdCourseId :: Lens' CoursesTeachersDelete' Text
ctdCourseId
  = lens _ctdCourseId (\ s a -> s{_ctdCourseId = a})

-- | OAuth access token.
ctdAccessToken :: Lens' CoursesTeachersDelete' (Maybe Text)
ctdAccessToken
  = lens _ctdAccessToken
      (\ s a -> s{_ctdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctdUploadType :: Lens' CoursesTeachersDelete' (Maybe Text)
ctdUploadType
  = lens _ctdUploadType
      (\ s a -> s{_ctdUploadType = a})

-- | Identifier of the teacher to delete. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
ctdUserId :: Lens' CoursesTeachersDelete' Text
ctdUserId
  = lens _ctdUserId (\ s a -> s{_ctdUserId = a})

-- | OAuth bearer token.
ctdBearerToken :: Lens' CoursesTeachersDelete' (Maybe Text)
ctdBearerToken
  = lens _ctdBearerToken
      (\ s a -> s{_ctdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ctdKey :: Lens' CoursesTeachersDelete' (Maybe Key)
ctdKey = lens _ctdKey (\ s a -> s{_ctdKey = a})

-- | OAuth 2.0 token for the current user.
ctdOAuthToken :: Lens' CoursesTeachersDelete' (Maybe OAuthToken)
ctdOAuthToken
  = lens _ctdOAuthToken
      (\ s a -> s{_ctdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ctdFields :: Lens' CoursesTeachersDelete' (Maybe Text)
ctdFields
  = lens _ctdFields (\ s a -> s{_ctdFields = a})

-- | JSONP
ctdCallback :: Lens' CoursesTeachersDelete' (Maybe Text)
ctdCallback
  = lens _ctdCallback (\ s a -> s{_ctdCallback = a})

instance GoogleAuth CoursesTeachersDelete' where
        authKey = ctdKey . _Just
        authToken = ctdOAuthToken . _Just

instance GoogleRequest CoursesTeachersDelete' where
        type Rs CoursesTeachersDelete' = Empty
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesTeachersDelete'{..}
          = go _ctdXgafv _ctdQuotaUser (Just _ctdPrettyPrint)
              _ctdUploadProtocol
              (Just _ctdPp)
              _ctdCourseId
              _ctdAccessToken
              _ctdUploadType
              _ctdUserId
              _ctdBearerToken
              _ctdKey
              _ctdOAuthToken
              _ctdFields
              _ctdCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesTeachersDeleteResource)
                      r
                      u
