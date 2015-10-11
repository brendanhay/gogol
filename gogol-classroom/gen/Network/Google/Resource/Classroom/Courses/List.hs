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
-- Module      : Network.Google.Resource.Classroom.Courses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of courses that the requesting user is permitted to view,
-- restricted to those that match the request. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` for [general user
-- permission errors][User Permission Errors]. * \`INVALID_ARGUMENT\` if
-- the query argument is malformed. * \`NOT_FOUND\` if any users specified
-- in the query arguments do not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesList@.
module Network.Google.Resource.Classroom.Courses.List
    (
    -- * REST Resource
      CoursesListResource

    -- * Creating a Request
    , coursesList'
    , CoursesList'

    -- * Request Lenses
    , clStudentId
    , clXgafv
    , clQuotaUser
    , clPrettyPrint
    , clUploadProtocol
    , clPp
    , clAccessToken
    , clUploadType
    , clTeacherId
    , clBearerToken
    , clKey
    , clPageToken
    , clOAuthToken
    , clPageSize
    , clFields
    , clCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesList@ method which the
-- 'CoursesList'' request conforms to.
type CoursesListResource =
     "v1" :>
       "courses" :>
         QueryParam "studentId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "teacherId" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" Int32 :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       Header "Authorization" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ListCoursesResponse

-- | Returns a list of courses that the requesting user is permitted to view,
-- restricted to those that match the request. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` for [general user
-- permission errors][User Permission Errors]. * \`INVALID_ARGUMENT\` if
-- the query argument is malformed. * \`NOT_FOUND\` if any users specified
-- in the query arguments do not exist.
--
-- /See:/ 'coursesList'' smart constructor.
data CoursesList' = CoursesList'
    { _clStudentId      :: !(Maybe Text)
    , _clXgafv          :: !(Maybe Text)
    , _clQuotaUser      :: !(Maybe Text)
    , _clPrettyPrint    :: !Bool
    , _clUploadProtocol :: !(Maybe Text)
    , _clPp             :: !Bool
    , _clAccessToken    :: !(Maybe Text)
    , _clUploadType     :: !(Maybe Text)
    , _clTeacherId      :: !(Maybe Text)
    , _clBearerToken    :: !(Maybe Text)
    , _clKey            :: !(Maybe AuthKey)
    , _clPageToken      :: !(Maybe Text)
    , _clOAuthToken     :: !(Maybe OAuthToken)
    , _clPageSize       :: !(Maybe Int32)
    , _clFields         :: !(Maybe Text)
    , _clCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clStudentId'
--
-- * 'clXgafv'
--
-- * 'clQuotaUser'
--
-- * 'clPrettyPrint'
--
-- * 'clUploadProtocol'
--
-- * 'clPp'
--
-- * 'clAccessToken'
--
-- * 'clUploadType'
--
-- * 'clTeacherId'
--
-- * 'clBearerToken'
--
-- * 'clKey'
--
-- * 'clPageToken'
--
-- * 'clOAuthToken'
--
-- * 'clPageSize'
--
-- * 'clFields'
--
-- * 'clCallback'
coursesList'
    :: CoursesList'
coursesList' =
    CoursesList'
    { _clStudentId = Nothing
    , _clXgafv = Nothing
    , _clQuotaUser = Nothing
    , _clPrettyPrint = True
    , _clUploadProtocol = Nothing
    , _clPp = True
    , _clAccessToken = Nothing
    , _clUploadType = Nothing
    , _clTeacherId = Nothing
    , _clBearerToken = Nothing
    , _clKey = Nothing
    , _clPageToken = Nothing
    , _clOAuthToken = Nothing
    , _clPageSize = Nothing
    , _clFields = Nothing
    , _clCallback = Nothing
    }

-- | Restricts returned courses to those having a student with the specified
-- identifier. The identifier can be one of the following: * the numeric
-- identifier for the user * the email address of the user * the string
-- literal \`\"me\"\`, indicating the requesting user
clStudentId :: Lens' CoursesList' (Maybe Text)
clStudentId
  = lens _clStudentId (\ s a -> s{_clStudentId = a})

-- | V1 error format.
clXgafv :: Lens' CoursesList' (Maybe Text)
clXgafv = lens _clXgafv (\ s a -> s{_clXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
clQuotaUser :: Lens' CoursesList' (Maybe Text)
clQuotaUser
  = lens _clQuotaUser (\ s a -> s{_clQuotaUser = a})

-- | Returns response with indentations and line breaks.
clPrettyPrint :: Lens' CoursesList' Bool
clPrettyPrint
  = lens _clPrettyPrint
      (\ s a -> s{_clPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
clUploadProtocol :: Lens' CoursesList' (Maybe Text)
clUploadProtocol
  = lens _clUploadProtocol
      (\ s a -> s{_clUploadProtocol = a})

-- | Pretty-print response.
clPp :: Lens' CoursesList' Bool
clPp = lens _clPp (\ s a -> s{_clPp = a})

-- | OAuth access token.
clAccessToken :: Lens' CoursesList' (Maybe Text)
clAccessToken
  = lens _clAccessToken
      (\ s a -> s{_clAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
clUploadType :: Lens' CoursesList' (Maybe Text)
clUploadType
  = lens _clUploadType (\ s a -> s{_clUploadType = a})

-- | Restricts returned courses to those having a teacher with the specified
-- identifier. The identifier can be one of the following: * the numeric
-- identifier for the user * the email address of the user * the string
-- literal \`\"me\"\`, indicating the requesting user
clTeacherId :: Lens' CoursesList' (Maybe Text)
clTeacherId
  = lens _clTeacherId (\ s a -> s{_clTeacherId = a})

-- | OAuth bearer token.
clBearerToken :: Lens' CoursesList' (Maybe Text)
clBearerToken
  = lens _clBearerToken
      (\ s a -> s{_clBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clKey :: Lens' CoursesList' (Maybe AuthKey)
clKey = lens _clKey (\ s a -> s{_clKey = a})

-- | [nextPageToken][google.classroom.v1.ListCoursesResponse.next_page_token]
-- value returned from a previous
-- [list][google.classroom.v1.Courses.ListCourses] call, indicating that
-- the subsequent page of results should be returned. The
-- [list][google.classroom.v1.Courses.ListCourses] request must be
-- otherwise identical to the one that resulted in this token.
clPageToken :: Lens' CoursesList' (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | OAuth 2.0 token for the current user.
clOAuthToken :: Lens' CoursesList' (Maybe OAuthToken)
clOAuthToken
  = lens _clOAuthToken (\ s a -> s{_clOAuthToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
clPageSize :: Lens' CoursesList' (Maybe Int32)
clPageSize
  = lens _clPageSize (\ s a -> s{_clPageSize = a})

-- | Selector specifying which fields to include in a partial response.
clFields :: Lens' CoursesList' (Maybe Text)
clFields = lens _clFields (\ s a -> s{_clFields = a})

-- | JSONP
clCallback :: Lens' CoursesList' (Maybe Text)
clCallback
  = lens _clCallback (\ s a -> s{_clCallback = a})

instance GoogleAuth CoursesList' where
        _AuthKey = clKey . _Just
        _AuthToken = clOAuthToken . _Just

instance GoogleRequest CoursesList' where
        type Rs CoursesList' = ListCoursesResponse
        request = requestWith classroomRequest
        requestWith rq CoursesList'{..}
          = go _clStudentId _clXgafv _clUploadProtocol
              (Just _clPp)
              _clAccessToken
              _clUploadType
              _clTeacherId
              _clBearerToken
              _clPageToken
              _clPageSize
              _clCallback
              _clQuotaUser
              (Just _clPrettyPrint)
              _clFields
              _clKey
              _clOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy CoursesListResource) rq
