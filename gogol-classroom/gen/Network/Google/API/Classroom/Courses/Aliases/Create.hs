{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Classroom.Courses.Aliases.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an alias for a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create the alias or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the course does not exist. *
-- \`ALREADY_EXISTS\` if the alias already exists.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.aliases.create@.
module Network.Google.API.Classroom.Courses.Aliases.Create
    (
    -- * REST Resource
      CoursesAliasesCreateAPI

    -- * Creating a Request
    , coursesAliasesCreate'
    , CoursesAliasesCreate'

    -- * Request Lenses
    , cacXgafv
    , cacQuotaUser
    , cacPrettyPrint
    , cacUploadProtocol
    , cacPp
    , cacCourseId
    , cacAccessToken
    , cacUploadType
    , cacBearerToken
    , cacKey
    , cacOauthToken
    , cacFields
    , cacCallback
    , cacAlt
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for classroom.courses.aliases.create which the
-- 'CoursesAliasesCreate'' request conforms to.
type CoursesAliasesCreateAPI =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
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
                                       Post '[JSON] CourseAlias

-- | Creates an alias for a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create the alias or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the course does not exist. *
-- \`ALREADY_EXISTS\` if the alias already exists.
--
-- /See:/ 'coursesAliasesCreate'' smart constructor.
data CoursesAliasesCreate' = CoursesAliasesCreate'
    { _cacXgafv          :: !(Maybe Text)
    , _cacQuotaUser      :: !(Maybe Text)
    , _cacPrettyPrint    :: !Bool
    , _cacUploadProtocol :: !(Maybe Text)
    , _cacPp             :: !Bool
    , _cacCourseId       :: !Text
    , _cacAccessToken    :: !(Maybe Text)
    , _cacUploadType     :: !(Maybe Text)
    , _cacBearerToken    :: !(Maybe Text)
    , _cacKey            :: !(Maybe Text)
    , _cacOauthToken     :: !(Maybe Text)
    , _cacFields         :: !(Maybe Text)
    , _cacCallback       :: !(Maybe Text)
    , _cacAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesAliasesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cacXgafv'
--
-- * 'cacQuotaUser'
--
-- * 'cacPrettyPrint'
--
-- * 'cacUploadProtocol'
--
-- * 'cacPp'
--
-- * 'cacCourseId'
--
-- * 'cacAccessToken'
--
-- * 'cacUploadType'
--
-- * 'cacBearerToken'
--
-- * 'cacKey'
--
-- * 'cacOauthToken'
--
-- * 'cacFields'
--
-- * 'cacCallback'
--
-- * 'cacAlt'
coursesAliasesCreate'
    :: Text -- ^ 'courseId'
    -> CoursesAliasesCreate'
coursesAliasesCreate' pCacCourseId_ =
    CoursesAliasesCreate'
    { _cacXgafv = Nothing
    , _cacQuotaUser = Nothing
    , _cacPrettyPrint = True
    , _cacUploadProtocol = Nothing
    , _cacPp = True
    , _cacCourseId = pCacCourseId_
    , _cacAccessToken = Nothing
    , _cacUploadType = Nothing
    , _cacBearerToken = Nothing
    , _cacKey = Nothing
    , _cacOauthToken = Nothing
    , _cacFields = Nothing
    , _cacCallback = Nothing
    , _cacAlt = "json"
    }

-- | V1 error format.
cacXgafv :: Lens' CoursesAliasesCreate' (Maybe Text)
cacXgafv = lens _cacXgafv (\ s a -> s{_cacXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cacQuotaUser :: Lens' CoursesAliasesCreate' (Maybe Text)
cacQuotaUser
  = lens _cacQuotaUser (\ s a -> s{_cacQuotaUser = a})

-- | Returns response with indentations and line breaks.
cacPrettyPrint :: Lens' CoursesAliasesCreate' Bool
cacPrettyPrint
  = lens _cacPrettyPrint
      (\ s a -> s{_cacPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cacUploadProtocol :: Lens' CoursesAliasesCreate' (Maybe Text)
cacUploadProtocol
  = lens _cacUploadProtocol
      (\ s a -> s{_cacUploadProtocol = a})

-- | Pretty-print response.
cacPp :: Lens' CoursesAliasesCreate' Bool
cacPp = lens _cacPp (\ s a -> s{_cacPp = a})

-- | Identifier of the course to alias. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
cacCourseId :: Lens' CoursesAliasesCreate' Text
cacCourseId
  = lens _cacCourseId (\ s a -> s{_cacCourseId = a})

-- | OAuth access token.
cacAccessToken :: Lens' CoursesAliasesCreate' (Maybe Text)
cacAccessToken
  = lens _cacAccessToken
      (\ s a -> s{_cacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cacUploadType :: Lens' CoursesAliasesCreate' (Maybe Text)
cacUploadType
  = lens _cacUploadType
      (\ s a -> s{_cacUploadType = a})

-- | OAuth bearer token.
cacBearerToken :: Lens' CoursesAliasesCreate' (Maybe Text)
cacBearerToken
  = lens _cacBearerToken
      (\ s a -> s{_cacBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cacKey :: Lens' CoursesAliasesCreate' (Maybe Text)
cacKey = lens _cacKey (\ s a -> s{_cacKey = a})

-- | OAuth 2.0 token for the current user.
cacOauthToken :: Lens' CoursesAliasesCreate' (Maybe Text)
cacOauthToken
  = lens _cacOauthToken
      (\ s a -> s{_cacOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cacFields :: Lens' CoursesAliasesCreate' (Maybe Text)
cacFields
  = lens _cacFields (\ s a -> s{_cacFields = a})

-- | JSONP
cacCallback :: Lens' CoursesAliasesCreate' (Maybe Text)
cacCallback
  = lens _cacCallback (\ s a -> s{_cacCallback = a})

-- | Data format for response.
cacAlt :: Lens' CoursesAliasesCreate' Text
cacAlt = lens _cacAlt (\ s a -> s{_cacAlt = a})

instance GoogleRequest CoursesAliasesCreate' where
        type Rs CoursesAliasesCreate' = CourseAlias
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesAliasesCreate'{..}
          = go _cacXgafv _cacQuotaUser (Just _cacPrettyPrint)
              _cacUploadProtocol
              (Just _cacPp)
              _cacCourseId
              _cacAccessToken
              _cacUploadType
              _cacBearerToken
              _cacKey
              _cacOauthToken
              _cacFields
              _cacCallback
              (Just _cacAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesAliasesCreateAPI)
                      r
                      u
