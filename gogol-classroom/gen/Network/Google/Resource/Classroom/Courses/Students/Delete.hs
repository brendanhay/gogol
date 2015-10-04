{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Classroom.Courses.Students.Delete
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
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesStudentsDelete@.
module Network.Google.Resource.Classroom.Courses.Students.Delete
    (
    -- * REST Resource
      CoursesStudentsDeleteResource

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
    , csdOAuthToken
    , csdFields
    , csdCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesStudentsDelete@ which the
-- 'CoursesStudentsDelete'' request conforms to.
type CoursesStudentsDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             Capture "userId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
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
    , _csdKey            :: !(Maybe Key)
    , _csdOAuthToken     :: !(Maybe OAuthToken)
    , _csdFields         :: !(Maybe Text)
    , _csdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'csdOAuthToken'
--
-- * 'csdFields'
--
-- * 'csdCallback'
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
    , _csdOAuthToken = Nothing
    , _csdFields = Nothing
    , _csdCallback = Nothing
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
csdKey :: Lens' CoursesStudentsDelete' (Maybe Key)
csdKey = lens _csdKey (\ s a -> s{_csdKey = a})

-- | OAuth 2.0 token for the current user.
csdOAuthToken :: Lens' CoursesStudentsDelete' (Maybe OAuthToken)
csdOAuthToken
  = lens _csdOAuthToken
      (\ s a -> s{_csdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
csdFields :: Lens' CoursesStudentsDelete' (Maybe Text)
csdFields
  = lens _csdFields (\ s a -> s{_csdFields = a})

-- | JSONP
csdCallback :: Lens' CoursesStudentsDelete' (Maybe Text)
csdCallback
  = lens _csdCallback (\ s a -> s{_csdCallback = a})

instance GoogleAuth CoursesStudentsDelete' where
        authKey = csdKey . _Just
        authToken = csdOAuthToken . _Just

instance GoogleRequest CoursesStudentsDelete' where
        type Rs CoursesStudentsDelete' = Empty
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesStudentsDelete'{..}
          = go _csdCourseId _csdUserId _csdXgafv
              _csdUploadProtocol
              (Just _csdPp)
              _csdAccessToken
              _csdUploadType
              _csdBearerToken
              _csdCallback
              _csdQuotaUser
              (Just _csdPrettyPrint)
              _csdFields
              _csdKey
              _csdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesStudentsDeleteResource)
                      r
                      u
