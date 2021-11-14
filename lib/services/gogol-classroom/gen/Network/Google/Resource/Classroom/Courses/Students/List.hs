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
-- Module      : Network.Google.Resource.Classroom.Courses.Students.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of students of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- access errors.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.students.list@.
module Network.Google.Resource.Classroom.Courses.Students.List
    (
    -- * REST Resource
      CoursesStudentsListResource

    -- * Creating a Request
    , coursesStudentsList
    , CoursesStudentsList

    -- * Request Lenses
    , cslXgafv
    , cslUploadProtocol
    , cslCourseId
    , cslAccessToken
    , cslUploadType
    , cslPageToken
    , cslPageSize
    , cslCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.students.list@ method which the
-- 'CoursesStudentsList' request conforms to.
type CoursesStudentsListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "students" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListStudentsResponse

-- | Returns a list of students of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- access errors.
--
-- /See:/ 'coursesStudentsList' smart constructor.
data CoursesStudentsList =
  CoursesStudentsList'
    { _cslXgafv :: !(Maybe Xgafv)
    , _cslUploadProtocol :: !(Maybe Text)
    , _cslCourseId :: !Text
    , _cslAccessToken :: !(Maybe Text)
    , _cslUploadType :: !(Maybe Text)
    , _cslPageToken :: !(Maybe Text)
    , _cslPageSize :: !(Maybe (Textual Int32))
    , _cslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesStudentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cslXgafv'
--
-- * 'cslUploadProtocol'
--
-- * 'cslCourseId'
--
-- * 'cslAccessToken'
--
-- * 'cslUploadType'
--
-- * 'cslPageToken'
--
-- * 'cslPageSize'
--
-- * 'cslCallback'
coursesStudentsList
    :: Text -- ^ 'cslCourseId'
    -> CoursesStudentsList
coursesStudentsList pCslCourseId_ =
  CoursesStudentsList'
    { _cslXgafv = Nothing
    , _cslUploadProtocol = Nothing
    , _cslCourseId = pCslCourseId_
    , _cslAccessToken = Nothing
    , _cslUploadType = Nothing
    , _cslPageToken = Nothing
    , _cslPageSize = Nothing
    , _cslCallback = Nothing
    }


-- | V1 error format.
cslXgafv :: Lens' CoursesStudentsList (Maybe Xgafv)
cslXgafv = lens _cslXgafv (\ s a -> s{_cslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cslUploadProtocol :: Lens' CoursesStudentsList (Maybe Text)
cslUploadProtocol
  = lens _cslUploadProtocol
      (\ s a -> s{_cslUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
cslCourseId :: Lens' CoursesStudentsList Text
cslCourseId
  = lens _cslCourseId (\ s a -> s{_cslCourseId = a})

-- | OAuth access token.
cslAccessToken :: Lens' CoursesStudentsList (Maybe Text)
cslAccessToken
  = lens _cslAccessToken
      (\ s a -> s{_cslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cslUploadType :: Lens' CoursesStudentsList (Maybe Text)
cslUploadType
  = lens _cslUploadType
      (\ s a -> s{_cslUploadType = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
cslPageToken :: Lens' CoursesStudentsList (Maybe Text)
cslPageToken
  = lens _cslPageToken (\ s a -> s{_cslPageToken = a})

-- | Maximum number of items to return. The default is 30 if unspecified or
-- \`0\`. The server may return fewer than the specified number of results.
cslPageSize :: Lens' CoursesStudentsList (Maybe Int32)
cslPageSize
  = lens _cslPageSize (\ s a -> s{_cslPageSize = a}) .
      mapping _Coerce

-- | JSONP
cslCallback :: Lens' CoursesStudentsList (Maybe Text)
cslCallback
  = lens _cslCallback (\ s a -> s{_cslCallback = a})

instance GoogleRequest CoursesStudentsList where
        type Rs CoursesStudentsList = ListStudentsResponse
        type Scopes CoursesStudentsList =
             '["https://www.googleapis.com/auth/classroom.profile.emails",
               "https://www.googleapis.com/auth/classroom.profile.photos",
               "https://www.googleapis.com/auth/classroom.rosters",
               "https://www.googleapis.com/auth/classroom.rosters.readonly"]
        requestClient CoursesStudentsList'{..}
          = go _cslCourseId _cslXgafv _cslUploadProtocol
              _cslAccessToken
              _cslUploadType
              _cslPageToken
              _cslPageSize
              _cslCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesStudentsListResource)
                      mempty
