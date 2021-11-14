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
-- Module      : Network.Google.Resource.Classroom.Courses.Students.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete students of this course or for access errors. * \`NOT_FOUND\`
-- if no student of this course has the requested ID or if the course does
-- not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.students.delete@.
module Network.Google.Resource.Classroom.Courses.Students.Delete
    (
    -- * REST Resource
      CoursesStudentsDeleteResource

    -- * Creating a Request
    , coursesStudentsDelete
    , CoursesStudentsDelete

    -- * Request Lenses
    , csdXgafv
    , csdUploadProtocol
    , csdCourseId
    , csdAccessToken
    , csdUploadType
    , csdUserId
    , csdCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.students.delete@ method which the
-- 'CoursesStudentsDelete' request conforms to.
type CoursesStudentsDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             Capture "userId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a student of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to delete students of this course or for access errors. * \`NOT_FOUND\`
-- if no student of this course has the requested ID or if the course does
-- not exist.
--
-- /See:/ 'coursesStudentsDelete' smart constructor.
data CoursesStudentsDelete =
  CoursesStudentsDelete'
    { _csdXgafv :: !(Maybe Xgafv)
    , _csdUploadProtocol :: !(Maybe Text)
    , _csdCourseId :: !Text
    , _csdAccessToken :: !(Maybe Text)
    , _csdUploadType :: !(Maybe Text)
    , _csdUserId :: !Text
    , _csdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesStudentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdXgafv'
--
-- * 'csdUploadProtocol'
--
-- * 'csdCourseId'
--
-- * 'csdAccessToken'
--
-- * 'csdUploadType'
--
-- * 'csdUserId'
--
-- * 'csdCallback'
coursesStudentsDelete
    :: Text -- ^ 'csdCourseId'
    -> Text -- ^ 'csdUserId'
    -> CoursesStudentsDelete
coursesStudentsDelete pCsdCourseId_ pCsdUserId_ =
  CoursesStudentsDelete'
    { _csdXgafv = Nothing
    , _csdUploadProtocol = Nothing
    , _csdCourseId = pCsdCourseId_
    , _csdAccessToken = Nothing
    , _csdUploadType = Nothing
    , _csdUserId = pCsdUserId_
    , _csdCallback = Nothing
    }


-- | V1 error format.
csdXgafv :: Lens' CoursesStudentsDelete (Maybe Xgafv)
csdXgafv = lens _csdXgafv (\ s a -> s{_csdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
csdUploadProtocol :: Lens' CoursesStudentsDelete (Maybe Text)
csdUploadProtocol
  = lens _csdUploadProtocol
      (\ s a -> s{_csdUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
csdCourseId :: Lens' CoursesStudentsDelete Text
csdCourseId
  = lens _csdCourseId (\ s a -> s{_csdCourseId = a})

-- | OAuth access token.
csdAccessToken :: Lens' CoursesStudentsDelete (Maybe Text)
csdAccessToken
  = lens _csdAccessToken
      (\ s a -> s{_csdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
csdUploadType :: Lens' CoursesStudentsDelete (Maybe Text)
csdUploadType
  = lens _csdUploadType
      (\ s a -> s{_csdUploadType = a})

-- | Identifier of the student to delete. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
csdUserId :: Lens' CoursesStudentsDelete Text
csdUserId
  = lens _csdUserId (\ s a -> s{_csdUserId = a})

-- | JSONP
csdCallback :: Lens' CoursesStudentsDelete (Maybe Text)
csdCallback
  = lens _csdCallback (\ s a -> s{_csdCallback = a})

instance GoogleRequest CoursesStudentsDelete where
        type Rs CoursesStudentsDelete = Empty
        type Scopes CoursesStudentsDelete =
             '["https://www.googleapis.com/auth/classroom.rosters"]
        requestClient CoursesStudentsDelete'{..}
          = go _csdCourseId _csdUserId _csdXgafv
              _csdUploadProtocol
              _csdAccessToken
              _csdUploadType
              _csdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesStudentsDeleteResource)
                      mempty
