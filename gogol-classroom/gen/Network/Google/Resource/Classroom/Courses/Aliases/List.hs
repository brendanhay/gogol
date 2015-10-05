{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Classroom.Courses.Aliases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of aliases for a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to access the course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if the course does not
-- exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesAliasesList@.
module Network.Google.Resource.Classroom.Courses.Aliases.List
    (
    -- * REST Resource
      CoursesAliasesListResource

    -- * Creating a Request
    , coursesAliasesList'
    , CoursesAliasesList'

    -- * Request Lenses
    , calXgafv
    , calQuotaUser
    , calPrettyPrint
    , calUploadProtocol
    , calPp
    , calCourseId
    , calAccessToken
    , calUploadType
    , calBearerToken
    , calKey
    , calPageToken
    , calOAuthToken
    , calPageSize
    , calFields
    , calCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesAliasesList@ which the
-- 'CoursesAliasesList'' request conforms to.
type CoursesAliasesListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" Int32 :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" Key :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] ListCourseAliasesResponse

-- | Returns a list of aliases for a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to access the course or for [general user permission
-- errors][User Permission Errors]. * \`NOT_FOUND\` if the course does not
-- exist.
--
-- /See:/ 'coursesAliasesList'' smart constructor.
data CoursesAliasesList' = CoursesAliasesList'
    { _calXgafv          :: !(Maybe Text)
    , _calQuotaUser      :: !(Maybe Text)
    , _calPrettyPrint    :: !Bool
    , _calUploadProtocol :: !(Maybe Text)
    , _calPp             :: !Bool
    , _calCourseId       :: !Text
    , _calAccessToken    :: !(Maybe Text)
    , _calUploadType     :: !(Maybe Text)
    , _calBearerToken    :: !(Maybe Text)
    , _calKey            :: !(Maybe Key)
    , _calPageToken      :: !(Maybe Text)
    , _calOAuthToken     :: !(Maybe OAuthToken)
    , _calPageSize       :: !(Maybe Int32)
    , _calFields         :: !(Maybe Text)
    , _calCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesAliasesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calXgafv'
--
-- * 'calQuotaUser'
--
-- * 'calPrettyPrint'
--
-- * 'calUploadProtocol'
--
-- * 'calPp'
--
-- * 'calCourseId'
--
-- * 'calAccessToken'
--
-- * 'calUploadType'
--
-- * 'calBearerToken'
--
-- * 'calKey'
--
-- * 'calPageToken'
--
-- * 'calOAuthToken'
--
-- * 'calPageSize'
--
-- * 'calFields'
--
-- * 'calCallback'
coursesAliasesList'
    :: Text -- ^ 'courseId'
    -> CoursesAliasesList'
coursesAliasesList' pCalCourseId_ =
    CoursesAliasesList'
    { _calXgafv = Nothing
    , _calQuotaUser = Nothing
    , _calPrettyPrint = True
    , _calUploadProtocol = Nothing
    , _calPp = True
    , _calCourseId = pCalCourseId_
    , _calAccessToken = Nothing
    , _calUploadType = Nothing
    , _calBearerToken = Nothing
    , _calKey = Nothing
    , _calPageToken = Nothing
    , _calOAuthToken = Nothing
    , _calPageSize = Nothing
    , _calFields = Nothing
    , _calCallback = Nothing
    }

-- | V1 error format.
calXgafv :: Lens' CoursesAliasesList' (Maybe Text)
calXgafv = lens _calXgafv (\ s a -> s{_calXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
calQuotaUser :: Lens' CoursesAliasesList' (Maybe Text)
calQuotaUser
  = lens _calQuotaUser (\ s a -> s{_calQuotaUser = a})

-- | Returns response with indentations and line breaks.
calPrettyPrint :: Lens' CoursesAliasesList' Bool
calPrettyPrint
  = lens _calPrettyPrint
      (\ s a -> s{_calPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
calUploadProtocol :: Lens' CoursesAliasesList' (Maybe Text)
calUploadProtocol
  = lens _calUploadProtocol
      (\ s a -> s{_calUploadProtocol = a})

-- | Pretty-print response.
calPp :: Lens' CoursesAliasesList' Bool
calPp = lens _calPp (\ s a -> s{_calPp = a})

-- | The identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
calCourseId :: Lens' CoursesAliasesList' Text
calCourseId
  = lens _calCourseId (\ s a -> s{_calCourseId = a})

-- | OAuth access token.
calAccessToken :: Lens' CoursesAliasesList' (Maybe Text)
calAccessToken
  = lens _calAccessToken
      (\ s a -> s{_calAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
calUploadType :: Lens' CoursesAliasesList' (Maybe Text)
calUploadType
  = lens _calUploadType
      (\ s a -> s{_calUploadType = a})

-- | OAuth bearer token.
calBearerToken :: Lens' CoursesAliasesList' (Maybe Text)
calBearerToken
  = lens _calBearerToken
      (\ s a -> s{_calBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
calKey :: Lens' CoursesAliasesList' (Maybe Key)
calKey = lens _calKey (\ s a -> s{_calKey = a})

-- | [nextPageToken][google.classroom.v1.ListCourseAliasesResponse.next_page_token]
-- value returned from a previous
-- [list][google.classroom.v1.Courses.ListCourseAliases] call, indicating
-- that the subsequent page of results should be returned. The
-- [list][google.classroom.v1.Courses.ListCourseAliases] request must be
-- otherwise identical to the one that resulted in this token.
calPageToken :: Lens' CoursesAliasesList' (Maybe Text)
calPageToken
  = lens _calPageToken (\ s a -> s{_calPageToken = a})

-- | OAuth 2.0 token for the current user.
calOAuthToken :: Lens' CoursesAliasesList' (Maybe OAuthToken)
calOAuthToken
  = lens _calOAuthToken
      (\ s a -> s{_calOAuthToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
calPageSize :: Lens' CoursesAliasesList' (Maybe Int32)
calPageSize
  = lens _calPageSize (\ s a -> s{_calPageSize = a})

-- | Selector specifying which fields to include in a partial response.
calFields :: Lens' CoursesAliasesList' (Maybe Text)
calFields
  = lens _calFields (\ s a -> s{_calFields = a})

-- | JSONP
calCallback :: Lens' CoursesAliasesList' (Maybe Text)
calCallback
  = lens _calCallback (\ s a -> s{_calCallback = a})

instance GoogleAuth CoursesAliasesList' where
        authKey = calKey . _Just
        authToken = calOAuthToken . _Just

instance GoogleRequest CoursesAliasesList' where
        type Rs CoursesAliasesList' =
             ListCourseAliasesResponse
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesAliasesList'{..}
          = go _calCourseId _calXgafv _calUploadProtocol
              (Just _calPp)
              _calAccessToken
              _calUploadType
              _calBearerToken
              _calPageToken
              _calPageSize
              _calCallback
              _calQuotaUser
              (Just _calPrettyPrint)
              _calFields
              _calKey
              _calOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesAliasesListResource)
                      r
                      u
