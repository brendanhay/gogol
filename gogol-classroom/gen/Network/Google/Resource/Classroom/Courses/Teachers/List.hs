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
-- Module      : Network.Google.Resource.Classroom.Courses.Teachers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of teachers of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- access errors.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.teachers.list@.
module Network.Google.Resource.Classroom.Courses.Teachers.List
    (
    -- * REST Resource
      CoursesTeachersListResource

    -- * Creating a Request
    , coursesTeachersList
    , CoursesTeachersList

    -- * Request Lenses
    , ctltXgafv
    , ctltUploadProtocol
    , ctltCourseId
    , ctltAccessToken
    , ctltUploadType
    , ctltPageToken
    , ctltPageSize
    , ctltCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.teachers.list@ method which the
-- 'CoursesTeachersList' request conforms to.
type CoursesTeachersListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTeachersResponse

-- | Returns a list of teachers of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- access errors.
--
-- /See:/ 'coursesTeachersList' smart constructor.
data CoursesTeachersList =
  CoursesTeachersList'
    { _ctltXgafv          :: !(Maybe Xgafv)
    , _ctltUploadProtocol :: !(Maybe Text)
    , _ctltCourseId       :: !Text
    , _ctltAccessToken    :: !(Maybe Text)
    , _ctltUploadType     :: !(Maybe Text)
    , _ctltPageToken      :: !(Maybe Text)
    , _ctltPageSize       :: !(Maybe (Textual Int32))
    , _ctltCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesTeachersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctltXgafv'
--
-- * 'ctltUploadProtocol'
--
-- * 'ctltCourseId'
--
-- * 'ctltAccessToken'
--
-- * 'ctltUploadType'
--
-- * 'ctltPageToken'
--
-- * 'ctltPageSize'
--
-- * 'ctltCallback'
coursesTeachersList
    :: Text -- ^ 'ctltCourseId'
    -> CoursesTeachersList
coursesTeachersList pCtltCourseId_ =
  CoursesTeachersList'
    { _ctltXgafv = Nothing
    , _ctltUploadProtocol = Nothing
    , _ctltCourseId = pCtltCourseId_
    , _ctltAccessToken = Nothing
    , _ctltUploadType = Nothing
    , _ctltPageToken = Nothing
    , _ctltPageSize = Nothing
    , _ctltCallback = Nothing
    }


-- | V1 error format.
ctltXgafv :: Lens' CoursesTeachersList (Maybe Xgafv)
ctltXgafv
  = lens _ctltXgafv (\ s a -> s{_ctltXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctltUploadProtocol :: Lens' CoursesTeachersList (Maybe Text)
ctltUploadProtocol
  = lens _ctltUploadProtocol
      (\ s a -> s{_ctltUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctltCourseId :: Lens' CoursesTeachersList Text
ctltCourseId
  = lens _ctltCourseId (\ s a -> s{_ctltCourseId = a})

-- | OAuth access token.
ctltAccessToken :: Lens' CoursesTeachersList (Maybe Text)
ctltAccessToken
  = lens _ctltAccessToken
      (\ s a -> s{_ctltAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctltUploadType :: Lens' CoursesTeachersList (Maybe Text)
ctltUploadType
  = lens _ctltUploadType
      (\ s a -> s{_ctltUploadType = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
ctltPageToken :: Lens' CoursesTeachersList (Maybe Text)
ctltPageToken
  = lens _ctltPageToken
      (\ s a -> s{_ctltPageToken = a})

-- | Maximum number of items to return. Zero means no maximum. The server may
-- return fewer than the specified number of results.
ctltPageSize :: Lens' CoursesTeachersList (Maybe Int32)
ctltPageSize
  = lens _ctltPageSize (\ s a -> s{_ctltPageSize = a})
      . mapping _Coerce

-- | JSONP
ctltCallback :: Lens' CoursesTeachersList (Maybe Text)
ctltCallback
  = lens _ctltCallback (\ s a -> s{_ctltCallback = a})

instance GoogleRequest CoursesTeachersList where
        type Rs CoursesTeachersList = ListTeachersResponse
        type Scopes CoursesTeachersList =
             '["https://www.googleapis.com/auth/classroom.profile.emails",
               "https://www.googleapis.com/auth/classroom.profile.photos",
               "https://www.googleapis.com/auth/classroom.rosters",
               "https://www.googleapis.com/auth/classroom.rosters.readonly"]
        requestClient CoursesTeachersList'{..}
          = go _ctltCourseId _ctltXgafv _ctltUploadProtocol
              _ctltAccessToken
              _ctltUploadType
              _ctltPageToken
              _ctltPageSize
              _ctltCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTeachersListResource)
                      mempty
