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
-- Module      : Network.Google.Resource.Classroom.Courses.Teachers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view teachers of this course or for access errors. * \`NOT_FOUND\` if
-- no teacher of this course has the requested ID or if the course does not
-- exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesTeachersGet@.
module Network.Google.Resource.Classroom.Courses.Teachers.Get
    (
    -- * REST Resource
      CoursesTeachersGetResource

    -- * Creating a Request
    , coursesTeachersGet'
    , CoursesTeachersGet'

    -- * Request Lenses
    , ctgXgafv
    , ctgUploadProtocol
    , ctgPp
    , ctgCourseId
    , ctgAccessToken
    , ctgUploadType
    , ctgUserId
    , ctgBearerToken
    , ctgCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesTeachersGet@ method which the
-- 'CoursesTeachersGet'' request conforms to.
type CoursesTeachersGetResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             Capture "userId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Teacher

-- | Returns a teacher of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to view teachers of this course or for access errors. * \`NOT_FOUND\` if
-- no teacher of this course has the requested ID or if the course does not
-- exist.
--
-- /See:/ 'coursesTeachersGet'' smart constructor.
data CoursesTeachersGet' = CoursesTeachersGet'
    { _ctgXgafv          :: !(Maybe Text)
    , _ctgUploadProtocol :: !(Maybe Text)
    , _ctgPp             :: !Bool
    , _ctgCourseId       :: !Text
    , _ctgAccessToken    :: !(Maybe Text)
    , _ctgUploadType     :: !(Maybe Text)
    , _ctgUserId         :: !Text
    , _ctgBearerToken    :: !(Maybe Text)
    , _ctgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesTeachersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgXgafv'
--
-- * 'ctgUploadProtocol'
--
-- * 'ctgPp'
--
-- * 'ctgCourseId'
--
-- * 'ctgAccessToken'
--
-- * 'ctgUploadType'
--
-- * 'ctgUserId'
--
-- * 'ctgBearerToken'
--
-- * 'ctgCallback'
coursesTeachersGet'
    :: Text -- ^ 'courseId'
    -> Text -- ^ 'userId'
    -> CoursesTeachersGet'
coursesTeachersGet' pCtgCourseId_ pCtgUserId_ =
    CoursesTeachersGet'
    { _ctgXgafv = Nothing
    , _ctgUploadProtocol = Nothing
    , _ctgPp = True
    , _ctgCourseId = pCtgCourseId_
    , _ctgAccessToken = Nothing
    , _ctgUploadType = Nothing
    , _ctgUserId = pCtgUserId_
    , _ctgBearerToken = Nothing
    , _ctgCallback = Nothing
    }

-- | V1 error format.
ctgXgafv :: Lens' CoursesTeachersGet' (Maybe Text)
ctgXgafv = lens _ctgXgafv (\ s a -> s{_ctgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctgUploadProtocol :: Lens' CoursesTeachersGet' (Maybe Text)
ctgUploadProtocol
  = lens _ctgUploadProtocol
      (\ s a -> s{_ctgUploadProtocol = a})

-- | Pretty-print response.
ctgPp :: Lens' CoursesTeachersGet' Bool
ctgPp = lens _ctgPp (\ s a -> s{_ctgPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctgCourseId :: Lens' CoursesTeachersGet' Text
ctgCourseId
  = lens _ctgCourseId (\ s a -> s{_ctgCourseId = a})

-- | OAuth access token.
ctgAccessToken :: Lens' CoursesTeachersGet' (Maybe Text)
ctgAccessToken
  = lens _ctgAccessToken
      (\ s a -> s{_ctgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctgUploadType :: Lens' CoursesTeachersGet' (Maybe Text)
ctgUploadType
  = lens _ctgUploadType
      (\ s a -> s{_ctgUploadType = a})

-- | Identifier of the teacher to return. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
ctgUserId :: Lens' CoursesTeachersGet' Text
ctgUserId
  = lens _ctgUserId (\ s a -> s{_ctgUserId = a})

-- | OAuth bearer token.
ctgBearerToken :: Lens' CoursesTeachersGet' (Maybe Text)
ctgBearerToken
  = lens _ctgBearerToken
      (\ s a -> s{_ctgBearerToken = a})

-- | JSONP
ctgCallback :: Lens' CoursesTeachersGet' (Maybe Text)
ctgCallback
  = lens _ctgCallback (\ s a -> s{_ctgCallback = a})

instance GoogleRequest CoursesTeachersGet' where
        type Rs CoursesTeachersGet' = Teacher
        requestClient CoursesTeachersGet'{..}
          = go _ctgCourseId _ctgUserId _ctgXgafv
              _ctgUploadProtocol
              (Just _ctgPp)
              _ctgAccessToken
              _ctgUploadType
              _ctgBearerToken
              _ctgCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTeachersGetResource)
                      mempty
