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
-- Module      : Network.Google.Resource.Classroom.Courses.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates one or more fields in a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to modify the requested course or for [general user
-- permission errors][User Permission Errors]. * \`NOT_FOUND\` if no course
-- exists with the requested ID. * \`INVALID_ARGUMENT\` if invalid fields
-- are specified in the update mask or if no update mask is supplied.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesPatch@.
module Network.Google.Resource.Classroom.Courses.Patch
    (
    -- * REST Resource
      CoursesPatchResource

    -- * Creating a Request
    , coursesPatch'
    , CoursesPatch'

    -- * Request Lenses
    , cpXgafv
    , cpQuotaUser
    , cpPrettyPrint
    , cpUploadProtocol
    , cpUpdateMask
    , cpPp
    , cpAccessToken
    , cpUploadType
    , cpPayload
    , cpBearerToken
    , cpKey
    , cpId
    , cpOAuthToken
    , cpFields
    , cpCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesPatch@ which the
-- 'CoursesPatch'' request conforms to.
type CoursesPatchResource =
     "v1" :>
       "courses" :>
         Capture "id" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "alt" AltJSON :>
                                       ReqBody '[JSON] Course :>
                                         Patch '[JSON] Course

-- | Updates one or more fields in a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to modify the requested course or for [general user
-- permission errors][User Permission Errors]. * \`NOT_FOUND\` if no course
-- exists with the requested ID. * \`INVALID_ARGUMENT\` if invalid fields
-- are specified in the update mask or if no update mask is supplied.
--
-- /See:/ 'coursesPatch'' smart constructor.
data CoursesPatch' = CoursesPatch'
    { _cpXgafv          :: !(Maybe Text)
    , _cpQuotaUser      :: !(Maybe Text)
    , _cpPrettyPrint    :: !Bool
    , _cpUploadProtocol :: !(Maybe Text)
    , _cpUpdateMask     :: !(Maybe Text)
    , _cpPp             :: !Bool
    , _cpAccessToken    :: !(Maybe Text)
    , _cpUploadType     :: !(Maybe Text)
    , _cpPayload        :: !Course
    , _cpBearerToken    :: !(Maybe Text)
    , _cpKey            :: !(Maybe AuthKey)
    , _cpId             :: !Text
    , _cpOAuthToken     :: !(Maybe OAuthToken)
    , _cpFields         :: !(Maybe Text)
    , _cpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpXgafv'
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpUploadProtocol'
--
-- * 'cpUpdateMask'
--
-- * 'cpPp'
--
-- * 'cpAccessToken'
--
-- * 'cpUploadType'
--
-- * 'cpPayload'
--
-- * 'cpBearerToken'
--
-- * 'cpKey'
--
-- * 'cpId'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
--
-- * 'cpCallback'
coursesPatch'
    :: Course -- ^ 'payload'
    -> Text -- ^ 'id'
    -> CoursesPatch'
coursesPatch' pCpPayload_ pCpId_ =
    CoursesPatch'
    { _cpXgafv = Nothing
    , _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpUploadProtocol = Nothing
    , _cpUpdateMask = Nothing
    , _cpPp = True
    , _cpAccessToken = Nothing
    , _cpUploadType = Nothing
    , _cpPayload = pCpPayload_
    , _cpBearerToken = Nothing
    , _cpKey = Nothing
    , _cpId = pCpId_
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
    , _cpCallback = Nothing
    }

-- | V1 error format.
cpXgafv :: Lens' CoursesPatch' (Maybe Text)
cpXgafv = lens _cpXgafv (\ s a -> s{_cpXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
cpQuotaUser :: Lens' CoursesPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CoursesPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpUploadProtocol :: Lens' CoursesPatch' (Maybe Text)
cpUploadProtocol
  = lens _cpUploadProtocol
      (\ s a -> s{_cpUploadProtocol = a})

-- | Mask that identifies which fields on the course to update. This field is
-- required to do an update. The update will fail if invalid fields are
-- specified. The following fields are valid: * \`name\` * \`section\` *
-- \`descriptionHeading\` * \`description\` * \`room\` * \`courseState\`
-- When set in a query parameter, this field should be specified as
-- \`updateMask=,,...\`
cpUpdateMask :: Lens' CoursesPatch' (Maybe Text)
cpUpdateMask
  = lens _cpUpdateMask (\ s a -> s{_cpUpdateMask = a})

-- | Pretty-print response.
cpPp :: Lens' CoursesPatch' Bool
cpPp = lens _cpPp (\ s a -> s{_cpPp = a})

-- | OAuth access token.
cpAccessToken :: Lens' CoursesPatch' (Maybe Text)
cpAccessToken
  = lens _cpAccessToken
      (\ s a -> s{_cpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpUploadType :: Lens' CoursesPatch' (Maybe Text)
cpUploadType
  = lens _cpUploadType (\ s a -> s{_cpUploadType = a})

-- | Multipart request metadata.
cpPayload :: Lens' CoursesPatch' Course
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | OAuth bearer token.
cpBearerToken :: Lens' CoursesPatch' (Maybe Text)
cpBearerToken
  = lens _cpBearerToken
      (\ s a -> s{_cpBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CoursesPatch' (Maybe AuthKey)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | Identifier of the course to update. This identifier can be either the
-- Classroom-assigned identifier or an
-- [alias][google.classroom.v1.CourseAlias].
cpId :: Lens' CoursesPatch' Text
cpId = lens _cpId (\ s a -> s{_cpId = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CoursesPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CoursesPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | JSONP
cpCallback :: Lens' CoursesPatch' (Maybe Text)
cpCallback
  = lens _cpCallback (\ s a -> s{_cpCallback = a})

instance GoogleAuth CoursesPatch' where
        _AuthKey = cpKey . _Just
        _AuthToken = cpOAuthToken . _Just

instance GoogleRequest CoursesPatch' where
        type Rs CoursesPatch' = Course
        request = requestWith classroomRequest
        requestWith rq CoursesPatch'{..}
          = go _cpId _cpXgafv _cpUploadProtocol _cpUpdateMask
              (Just _cpPp)
              _cpAccessToken
              _cpUploadType
              _cpBearerToken
              _cpCallback
              _cpQuotaUser
              (Just _cpPrettyPrint)
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientBuild (Proxy :: Proxy CoursesPatchResource)
                      rq
