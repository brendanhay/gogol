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
-- Module      : Network.Google.Resource.Classroom.Courses.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested course or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no course exists with the
-- requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesDelete@.
module Network.Google.Resource.Classroom.Courses.Delete
    (
    -- * REST Resource
      CoursesDeleteResource

    -- * Creating a Request
    , coursesDelete'
    , CoursesDelete'

    -- * Request Lenses
    , cdXgafv
    , cdQuotaUser
    , cdPrettyPrint
    , cdUploadProtocol
    , cdPp
    , cdAccessToken
    , cdUploadType
    , cdBearerToken
    , cdKey
    , cdId
    , cdOAuthToken
    , cdFields
    , cdCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesDelete@ which the
-- 'CoursesDelete'' request conforms to.
type CoursesDeleteResource =
     "v1" :>
       "courses" :>
         Capture "id" Text :>
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

-- | Deletes a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested course or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no course exists with the
-- requested ID.
--
-- /See:/ 'coursesDelete'' smart constructor.
data CoursesDelete' = CoursesDelete'
    { _cdXgafv          :: !(Maybe Text)
    , _cdQuotaUser      :: !(Maybe Text)
    , _cdPrettyPrint    :: !Bool
    , _cdUploadProtocol :: !(Maybe Text)
    , _cdPp             :: !Bool
    , _cdAccessToken    :: !(Maybe Text)
    , _cdUploadType     :: !(Maybe Text)
    , _cdBearerToken    :: !(Maybe Text)
    , _cdKey            :: !(Maybe Key)
    , _cdId             :: !Text
    , _cdOAuthToken     :: !(Maybe OAuthToken)
    , _cdFields         :: !(Maybe Text)
    , _cdCallback       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdXgafv'
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdUploadProtocol'
--
-- * 'cdPp'
--
-- * 'cdAccessToken'
--
-- * 'cdUploadType'
--
-- * 'cdBearerToken'
--
-- * 'cdKey'
--
-- * 'cdId'
--
-- * 'cdOAuthToken'
--
-- * 'cdFields'
--
-- * 'cdCallback'
coursesDelete'
    :: Text -- ^ 'id'
    -> CoursesDelete'
coursesDelete' pCdId_ =
    CoursesDelete'
    { _cdXgafv = Nothing
    , _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdUploadProtocol = Nothing
    , _cdPp = True
    , _cdAccessToken = Nothing
    , _cdUploadType = Nothing
    , _cdBearerToken = Nothing
    , _cdKey = Nothing
    , _cdId = pCdId_
    , _cdOAuthToken = Nothing
    , _cdFields = Nothing
    , _cdCallback = Nothing
    }

-- | V1 error format.
cdXgafv :: Lens' CoursesDelete' (Maybe Text)
cdXgafv = lens _cdXgafv (\ s a -> s{_cdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cdQuotaUser :: Lens' CoursesDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CoursesDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdUploadProtocol :: Lens' CoursesDelete' (Maybe Text)
cdUploadProtocol
  = lens _cdUploadProtocol
      (\ s a -> s{_cdUploadProtocol = a})

-- | Pretty-print response.
cdPp :: Lens' CoursesDelete' Bool
cdPp = lens _cdPp (\ s a -> s{_cdPp = a})

-- | OAuth access token.
cdAccessToken :: Lens' CoursesDelete' (Maybe Text)
cdAccessToken
  = lens _cdAccessToken
      (\ s a -> s{_cdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdUploadType :: Lens' CoursesDelete' (Maybe Text)
cdUploadType
  = lens _cdUploadType (\ s a -> s{_cdUploadType = a})

-- | OAuth bearer token.
cdBearerToken :: Lens' CoursesDelete' (Maybe Text)
cdBearerToken
  = lens _cdBearerToken
      (\ s a -> s{_cdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CoursesDelete' (Maybe Key)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | Identifier of the course to delete. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
cdId :: Lens' CoursesDelete' Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

-- | OAuth 2.0 token for the current user.
cdOAuthToken :: Lens' CoursesDelete' (Maybe OAuthToken)
cdOAuthToken
  = lens _cdOAuthToken (\ s a -> s{_cdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CoursesDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | JSONP
cdCallback :: Lens' CoursesDelete' (Maybe Text)
cdCallback
  = lens _cdCallback (\ s a -> s{_cdCallback = a})

instance GoogleAuth CoursesDelete' where
        authKey = cdKey . _Just
        authToken = cdOAuthToken . _Just

instance GoogleRequest CoursesDelete' where
        type Rs CoursesDelete' = Empty
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesDelete'{..}
          = go _cdXgafv _cdQuotaUser (Just _cdPrettyPrint)
              _cdUploadProtocol
              (Just _cdPp)
              _cdAccessToken
              _cdUploadType
              _cdBearerToken
              _cdKey
              _cdId
              _cdOAuthToken
              _cdFields
              _cdCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesDeleteResource)
                      r
                      u
