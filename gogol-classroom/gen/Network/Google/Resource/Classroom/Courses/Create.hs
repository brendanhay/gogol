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
-- Module      : Network.Google.Resource.Classroom.Courses.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a course. The user specified in \`ownerId\` is the owner of the
-- created course and added as a teacher. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to create courses or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the primary teacher is not a
-- valid user. * \`FAILED_PRECONDITION\` if the course owner\'s account is
-- disabled. * \`ALREADY_EXISTS\` if an alias was specified in the \`id\`
-- and already exists.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesCreate@.
module Network.Google.Resource.Classroom.Courses.Create
    (
    -- * REST Resource
      CoursesCreateResource

    -- * Creating a Request
    , coursesCreate'
    , CoursesCreate'

    -- * Request Lenses
    , ccXgafv
    , ccQuotaUser
    , ccPrettyPrint
    , ccUploadProtocol
    , ccPp
    , ccAccessToken
    , ccUploadType
    , ccPayload
    , ccBearerToken
    , ccKey
    , ccOAuthToken
    , ccFields
    , ccCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesCreate@ which the
-- 'CoursesCreate'' request conforms to.
type CoursesCreateResource =
     "v1" :>
       "courses" :>
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
                                   ReqBody '[JSON] Course :> Post '[JSON] Course

-- | Creates a course. The user specified in \`ownerId\` is the owner of the
-- created course and added as a teacher. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to create courses or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the primary teacher is not a
-- valid user. * \`FAILED_PRECONDITION\` if the course owner\'s account is
-- disabled. * \`ALREADY_EXISTS\` if an alias was specified in the \`id\`
-- and already exists.
--
-- /See:/ 'coursesCreate'' smart constructor.
data CoursesCreate' = CoursesCreate'
    { _ccXgafv          :: !(Maybe Text)
    , _ccQuotaUser      :: !(Maybe Text)
    , _ccPrettyPrint    :: !Bool
    , _ccUploadProtocol :: !(Maybe Text)
    , _ccPp             :: !Bool
    , _ccAccessToken    :: !(Maybe Text)
    , _ccUploadType     :: !(Maybe Text)
    , _ccPayload        :: !Course
    , _ccBearerToken    :: !(Maybe Text)
    , _ccKey            :: !(Maybe Key)
    , _ccOAuthToken     :: !(Maybe OAuthToken)
    , _ccFields         :: !(Maybe Text)
    , _ccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccXgafv'
--
-- * 'ccQuotaUser'
--
-- * 'ccPrettyPrint'
--
-- * 'ccUploadProtocol'
--
-- * 'ccPp'
--
-- * 'ccAccessToken'
--
-- * 'ccUploadType'
--
-- * 'ccPayload'
--
-- * 'ccBearerToken'
--
-- * 'ccKey'
--
-- * 'ccOAuthToken'
--
-- * 'ccFields'
--
-- * 'ccCallback'
coursesCreate'
    :: Course -- ^ 'payload'
    -> CoursesCreate'
coursesCreate' pCcPayload_ =
    CoursesCreate'
    { _ccXgafv = Nothing
    , _ccQuotaUser = Nothing
    , _ccPrettyPrint = True
    , _ccUploadProtocol = Nothing
    , _ccPp = True
    , _ccAccessToken = Nothing
    , _ccUploadType = Nothing
    , _ccPayload = pCcPayload_
    , _ccBearerToken = Nothing
    , _ccKey = Nothing
    , _ccOAuthToken = Nothing
    , _ccFields = Nothing
    , _ccCallback = Nothing
    }

-- | V1 error format.
ccXgafv :: Lens' CoursesCreate' (Maybe Text)
ccXgafv = lens _ccXgafv (\ s a -> s{_ccXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ccQuotaUser :: Lens' CoursesCreate' (Maybe Text)
ccQuotaUser
  = lens _ccQuotaUser (\ s a -> s{_ccQuotaUser = a})

-- | Returns response with indentations and line breaks.
ccPrettyPrint :: Lens' CoursesCreate' Bool
ccPrettyPrint
  = lens _ccPrettyPrint
      (\ s a -> s{_ccPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccUploadProtocol :: Lens' CoursesCreate' (Maybe Text)
ccUploadProtocol
  = lens _ccUploadProtocol
      (\ s a -> s{_ccUploadProtocol = a})

-- | Pretty-print response.
ccPp :: Lens' CoursesCreate' Bool
ccPp = lens _ccPp (\ s a -> s{_ccPp = a})

-- | OAuth access token.
ccAccessToken :: Lens' CoursesCreate' (Maybe Text)
ccAccessToken
  = lens _ccAccessToken
      (\ s a -> s{_ccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccUploadType :: Lens' CoursesCreate' (Maybe Text)
ccUploadType
  = lens _ccUploadType (\ s a -> s{_ccUploadType = a})

-- | Multipart request metadata.
ccPayload :: Lens' CoursesCreate' Course
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | OAuth bearer token.
ccBearerToken :: Lens' CoursesCreate' (Maybe Text)
ccBearerToken
  = lens _ccBearerToken
      (\ s a -> s{_ccBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ccKey :: Lens' CoursesCreate' (Maybe Key)
ccKey = lens _ccKey (\ s a -> s{_ccKey = a})

-- | OAuth 2.0 token for the current user.
ccOAuthToken :: Lens' CoursesCreate' (Maybe OAuthToken)
ccOAuthToken
  = lens _ccOAuthToken (\ s a -> s{_ccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ccFields :: Lens' CoursesCreate' (Maybe Text)
ccFields = lens _ccFields (\ s a -> s{_ccFields = a})

-- | JSONP
ccCallback :: Lens' CoursesCreate' (Maybe Text)
ccCallback
  = lens _ccCallback (\ s a -> s{_ccCallback = a})

instance GoogleAuth CoursesCreate' where
        authKey = ccKey . _Just
        authToken = ccOAuthToken . _Just

instance GoogleRequest CoursesCreate' where
        type Rs CoursesCreate' = Course
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u CoursesCreate'{..}
          = go _ccXgafv _ccUploadProtocol (Just _ccPp)
              _ccAccessToken
              _ccUploadType
              _ccBearerToken
              _ccCallback
              _ccQuotaUser
              (Just _ccPrettyPrint)
              _ccFields
              _ccKey
              _ccOAuthToken
              (Just AltJSON)
              _ccPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CoursesCreateResource)
                      r
                      u
