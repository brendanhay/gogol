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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to modify
-- the requested course or for access errors. * \`NOT_FOUND\` if no course
-- exists with the requested ID. * \`FAILED_PRECONDITION\` for the
-- following request errors: * CourseNotModifiable
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.update@.
module Network.Google.Resource.Classroom.Courses.Update
    (
    -- * REST Resource
      CoursesUpdateResource

    -- * Creating a Request
    , coursesUpdate
    , CoursesUpdate

    -- * Request Lenses
    , cuXgafv
    , cuUploadProtocol
    , cuPp
    , cuAccessToken
    , cuUploadType
    , cuPayload
    , cuBearerToken
    , cuId
    , cuCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.update@ method which the
-- 'CoursesUpdate' request conforms to.
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Course :> Put '[JSON] Course

-- | Updates a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to modify
-- the requested course or for access errors. * \`NOT_FOUND\` if no course
-- exists with the requested ID. * \`FAILED_PRECONDITION\` for the
-- following request errors: * CourseNotModifiable
--
-- /See:/ 'coursesUpdate' smart constructor.
data CoursesUpdate = CoursesUpdate
    { _cuXgafv          :: !(Maybe Text)
    , _cuUploadProtocol :: !(Maybe Text)
    , _cuPp             :: !Bool
    , _cuAccessToken    :: !(Maybe Text)
    , _cuUploadType     :: !(Maybe Text)
    , _cuPayload        :: !Course
    , _cuBearerToken    :: !(Maybe Text)
    , _cuId             :: !Text
    , _cuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuXgafv'
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
-- * 'cuId'
--
-- * 'cuCallback'
coursesUpdate
    :: Course -- ^ 'cuPayload'
    -> Text -- ^ 'cuId'
    -> CoursesUpdate
coursesUpdate pCuPayload_ pCuId_ =
    CoursesUpdate
    { _cuXgafv = Nothing
    , _cuUploadProtocol = Nothing
    , _cuPp = True
    , _cuAccessToken = Nothing
    , _cuUploadType = Nothing
    , _cuPayload = pCuPayload_
    , _cuBearerToken = Nothing
    , _cuId = pCuId_
    , _cuCallback = Nothing
    }

-- | V1 error format.
cuXgafv :: Lens' CoursesUpdate (Maybe Text)
cuXgafv = lens _cuXgafv (\ s a -> s{_cuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuUploadProtocol :: Lens' CoursesUpdate (Maybe Text)
cuUploadProtocol
  = lens _cuUploadProtocol
      (\ s a -> s{_cuUploadProtocol = a})

-- | Pretty-print response.
cuPp :: Lens' CoursesUpdate Bool
cuPp = lens _cuPp (\ s a -> s{_cuPp = a})

-- | OAuth access token.
cuAccessToken :: Lens' CoursesUpdate (Maybe Text)
cuAccessToken
  = lens _cuAccessToken
      (\ s a -> s{_cuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuUploadType :: Lens' CoursesUpdate (Maybe Text)
cuUploadType
  = lens _cuUploadType (\ s a -> s{_cuUploadType = a})

-- | Multipart request metadata.
cuPayload :: Lens' CoursesUpdate Course
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | OAuth bearer token.
cuBearerToken :: Lens' CoursesUpdate (Maybe Text)
cuBearerToken
  = lens _cuBearerToken
      (\ s a -> s{_cuBearerToken = a})

-- | Identifier of the course to update. This identifier can be either the
-- Classroom-assigned identifier or an alias.
cuId :: Lens' CoursesUpdate Text
cuId = lens _cuId (\ s a -> s{_cuId = a})

-- | JSONP
cuCallback :: Lens' CoursesUpdate (Maybe Text)
cuCallback
  = lens _cuCallback (\ s a -> s{_cuCallback = a})

instance GoogleRequest CoursesUpdate where
        type Rs CoursesUpdate = Course
        type Scopes CoursesUpdate =
             '["https://www.googleapis.com/auth/classroom.courses"]
        requestClient CoursesUpdate{..}
          = go _cuId _cuXgafv _cuUploadProtocol (Just _cuPp)
              _cuAccessToken
              _cuUploadType
              _cuBearerToken
              _cuCallback
              (Just AltJSON)
              _cuPayload
              classroomService
          where go
                  = buildClient (Proxy :: Proxy CoursesUpdateResource)
                      mempty
