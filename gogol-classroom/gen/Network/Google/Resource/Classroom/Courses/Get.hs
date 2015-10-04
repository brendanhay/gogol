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
-- Module      : Network.Google.Resource.Classroom.Courses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no course exists with the
-- requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesGet@.
module Network.Google.Resource.Classroom.Courses.Get
    (
    -- * REST Resource
      CoursesGetResource

    -- * Creating a Request
    , coursesGet'
    , CoursesGet'

    -- * Request Lenses
    , cgXgafv
    , cgQuotaUser
    , cgPrettyPrint
    , cgUploadProtocol
    , cgPp
    , cgAccessToken
    , cgUploadType
    , cgBearerToken
    , cgKey
    , cgId
    , cgOAuthToken
    , cgFields
    , cgCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesGet@ which the
-- 'CoursesGet'' request conforms to.
type CoursesGetResource =
     "v1" :>
       "courses" :>
         Capture "id" Text :>
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
                                     Get '[JSON] Course

-- | Returns a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no course exists with the
-- requested ID.
--
-- /See:/ 'coursesGet'' smart constructor.
data CoursesGet' = CoursesGet'
    { _cgXgafv          :: !(Maybe Text)
    , _cgQuotaUser      :: !(Maybe Text)
    , _cgPrettyPrint    :: !Bool
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgPp             :: !Bool
    , _cgAccessToken    :: !(Maybe Text)
    , _cgUploadType     :: !(Maybe Text)
    , _cgBearerToken    :: !(Maybe Text)
    , _cgKey            :: !(Maybe Key)
    , _cgId             :: !Text
    , _cgOAuthToken     :: !(Maybe OAuthToken)
    , _cgFields         :: !(Maybe Text)
    , _cgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgQuotaUser'
--
-- * 'cgPrettyPrint'
--
-- * 'cgUploadProtocol'
--
-- * 'cgPp'
--
-- * 'cgAccessToken'
--
-- * 'cgUploadType'
--
-- * 'cgBearerToken'
--
-- * 'cgKey'
--
-- * 'cgId'
--
-- * 'cgOAuthToken'
--
-- * 'cgFields'
--
-- * 'cgCallback'
coursesGet'
    :: Text -- ^ 'id'
    -> CoursesGet'
coursesGet' pCgId_ =
    CoursesGet'
    { _cgXgafv = Nothing
    , _cgQuotaUser = Nothing
    , _cgPrettyPrint = True
    , _cgUploadProtocol = Nothing
    , _cgPp = True
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgBearerToken = Nothing
    , _cgKey = Nothing
    , _cgId = pCgId_
    , _cgOAuthToken = Nothing
    , _cgFields = Nothing
    , _cgCallback = Nothing
    }

-- | V1 error format.
cgXgafv :: Lens' CoursesGet' (Maybe Text)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cgQuotaUser :: Lens' CoursesGet' (Maybe Text)
cgQuotaUser
  = lens _cgQuotaUser (\ s a -> s{_cgQuotaUser = a})

-- | Returns response with indentations and line breaks.
cgPrettyPrint :: Lens' CoursesGet' Bool
cgPrettyPrint
  = lens _cgPrettyPrint
      (\ s a -> s{_cgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CoursesGet' (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | Pretty-print response.
cgPp :: Lens' CoursesGet' Bool
cgPp = lens _cgPp (\ s a -> s{_cgPp = a})

-- | OAuth access token.
cgAccessToken :: Lens' CoursesGet' (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CoursesGet' (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | OAuth bearer token.
cgBearerToken :: Lens' CoursesGet' (Maybe Text)
cgBearerToken
  = lens _cgBearerToken
      (\ s a -> s{_cgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cgKey :: Lens' CoursesGet' (Maybe Key)
cgKey = lens _cgKey (\ s a -> s{_cgKey = a})

-- | Identifier of the course to return. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
cgId :: Lens' CoursesGet' Text
cgId = lens _cgId (\ s a -> s{_cgId = a})

-- | OAuth 2.0 token for the current user.
cgOAuthToken :: Lens' CoursesGet' (Maybe OAuthToken)
cgOAuthToken
  = lens _cgOAuthToken (\ s a -> s{_cgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cgFields :: Lens' CoursesGet' (Maybe Text)
cgFields = lens _cgFields (\ s a -> s{_cgFields = a})

-- | JSONP
cgCallback :: Lens' CoursesGet' (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleAuth CoursesGet' where
        authKey = cgKey . _Just
        authToken = cgOAuthToken . _Just

instance GoogleRequest CoursesGet' where
        type Rs CoursesGet' = Course
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesGet'{..}
          = go _cgId _cgXgafv _cgUploadProtocol (Just _cgPp)
              _cgAccessToken
              _cgUploadType
              _cgBearerToken
              _cgCallback
              _cgQuotaUser
              (Just _cgPrettyPrint)
              _cgFields
              _cgKey
              _cgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy CoursesGetResource)
                      r
                      u
