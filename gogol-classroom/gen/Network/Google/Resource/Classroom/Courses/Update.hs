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
-- Module      : Network.Google.Resource.Classroom.Courses.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to modify
-- the requested course or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no course exists with the
-- requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesUpdate@.
module Network.Google.Resource.Classroom.Courses.Update
    (
    -- * REST Resource
      CoursesUpdateResource

    -- * Creating a Request
    , coursesUpdate'
    , CoursesUpdate'

    -- * Request Lenses
    , cuXgafv
    , cuQuotaUser
    , cuPrettyPrint
    , cuUploadProtocol
    , cuPp
    , cuAccessToken
    , cuUploadType
    , cuPayload
    , cuBearerToken
    , cuKey
    , cuId
    , cuOAuthToken
    , cuFields
    , cuCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesUpdate@ method which the
-- 'CoursesUpdate'' request conforms to.
type CoursesUpdateResource =
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
                               QueryParam "key" AuthKey :>
                                 Header "Authorization" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Course :>
                                       Put '[JSON] Course

-- | Updates a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to modify
-- the requested course or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no course exists with the
-- requested ID.
--
-- /See:/ 'coursesUpdate'' smart constructor.
data CoursesUpdate' = CoursesUpdate'
    { _cuXgafv          :: !(Maybe Text)
    , _cuQuotaUser      :: !(Maybe Text)
    , _cuPrettyPrint    :: !Bool
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuPp             :: !Bool
    , _cuAccessToken    :: !(Maybe Text)
    , _cuUploadType     :: !(Maybe Text)
    , _cuPayload        :: !Course
    , _cuBearerToken    :: !(Maybe Text)
    , _cuKey            :: !(Maybe AuthKey)
    , _cuId             :: !Text
    , _cuOAuthToken     :: !(Maybe OAuthToken)
    , _cuFields         :: !(Maybe Text)
    , _cuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuXgafv'
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUploadProtocol'
--
-- * 'cuPp'
--
-- * 'cuAccessToken'
--
-- * 'cuUploadType'
--
-- * 'cuPayload'
--
-- * 'cuBearerToken'
--
-- * 'cuKey'
--
-- * 'cuId'
--
-- * 'cuOAuthToken'
--
-- * 'cuFields'
--
-- * 'cuCallback'
coursesUpdate'
    :: Course -- ^ 'payload'
    -> Text -- ^ 'id'
    -> CoursesUpdate'
coursesUpdate' pCuPayload_ pCuId_ =
    CoursesUpdate'
    { _cuXgafv = Nothing
    , _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUploadProtocol = Nothing
    , _cuPp = True
    , _cuAccessToken = Nothing
    , _cuUploadType = Nothing
    , _cuPayload = pCuPayload_
    , _cuBearerToken = Nothing
    , _cuKey = Nothing
    , _cuId = pCuId_
    , _cuOAuthToken = Nothing
    , _cuFields = Nothing
    , _cuCallback = Nothing
    }

-- | V1 error format.
cuXgafv :: Lens' CoursesUpdate' (Maybe Text)
cuXgafv = lens _cuXgafv (\ s a -> s{_cuXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cuQuotaUser :: Lens' CoursesUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' CoursesUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuUploadProtocol :: Lens' CoursesUpdate' (Maybe Text)
cuUploadProtocol
  = lens _cuUploadProtocol
      (\ s a -> s{_cuUploadProtocol = a})

-- | Pretty-print response.
cuPp :: Lens' CoursesUpdate' Bool
cuPp = lens _cuPp (\ s a -> s{_cuPp = a})

-- | OAuth access token.
cuAccessToken :: Lens' CoursesUpdate' (Maybe Text)
cuAccessToken
  = lens _cuAccessToken
      (\ s a -> s{_cuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' CoursesUpdate' (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | Multipart request metadata.
cuPayload :: Lens' CoursesUpdate' Course
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | OAuth bearer token.
cuBearerToken :: Lens' CoursesUpdate' (Maybe Text)
cuBearerToken
  = lens _cuBearerToken
      (\ s a -> s{_cuBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' CoursesUpdate' (Maybe AuthKey)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | Identifier of the course to update. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
cuId :: Lens' CoursesUpdate' Text
cuId = lens _cuId (\ s a -> s{_cuId = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' CoursesUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' CoursesUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

-- | JSONP
cuCallback :: Lens' CoursesUpdate' (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleAuth CoursesUpdate' where
        _AuthKey = cuKey . _Just
        _AuthToken = cuOAuthToken . _Just

instance GoogleRequest CoursesUpdate' where
        type Rs CoursesUpdate' = Course
        request = requestWith classroomRequest
        requestWith rq CoursesUpdate'{..}
          = go _cuId _cuXgafv _cuUploadProtocol (Just _cuPp)
              _cuAccessToken
              _cuUploadType
              _cuBearerToken
              _cuCallback
              _cuQuotaUser
              (Just _cuPrettyPrint)
              _cuFields
              _cuKey
              _cuOAuthToken
              (Just AltJSON)
              _cuPayload
          where go
                  = clientBuild (Proxy :: Proxy CoursesUpdateResource)
                      rq
