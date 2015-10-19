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
-- Copyright   : (c) 2015 Brendan Hay
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
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesTeachersList@.
module Network.Google.Resource.Classroom.Courses.Teachers.List
    (
    -- * REST Resource
      CoursesTeachersListResource

    -- * Creating a Request
    , coursesTeachersList'
    , CoursesTeachersList'

    -- * Request Lenses
    , ctlXgafv
    , ctlUploadProtocol
    , ctlPp
    , ctlCourseId
    , ctlAccessToken
    , ctlUploadType
    , ctlBearerToken
    , ctlPageToken
    , ctlPageSize
    , ctlCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesTeachersList@ method which the
-- 'CoursesTeachersList'' request conforms to.
type CoursesTeachersListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "teachers" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" Int32 :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListTeachersResponse

-- | Returns a list of teachers of this course that the requester is
-- permitted to view. This method returns the following error codes: *
-- \`NOT_FOUND\` if the course does not exist. * \`PERMISSION_DENIED\` for
-- access errors.
--
-- /See:/ 'coursesTeachersList'' smart constructor.
data CoursesTeachersList' = CoursesTeachersList'
    { _ctlXgafv          :: !(Maybe Text)
    , _ctlUploadProtocol :: !(Maybe Text)
    , _ctlPp             :: !Bool
    , _ctlCourseId       :: !Text
    , _ctlAccessToken    :: !(Maybe Text)
    , _ctlUploadType     :: !(Maybe Text)
    , _ctlBearerToken    :: !(Maybe Text)
    , _ctlPageToken      :: !(Maybe Text)
    , _ctlPageSize       :: !(Maybe Int32)
    , _ctlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesTeachersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlXgafv'
--
-- * 'ctlUploadProtocol'
--
-- * 'ctlPp'
--
-- * 'ctlCourseId'
--
-- * 'ctlAccessToken'
--
-- * 'ctlUploadType'
--
-- * 'ctlBearerToken'
--
-- * 'ctlPageToken'
--
-- * 'ctlPageSize'
--
-- * 'ctlCallback'
coursesTeachersList'
    :: Text -- ^ 'courseId'
    -> CoursesTeachersList'
coursesTeachersList' pCtlCourseId_ =
    CoursesTeachersList'
    { _ctlXgafv = Nothing
    , _ctlUploadProtocol = Nothing
    , _ctlPp = True
    , _ctlCourseId = pCtlCourseId_
    , _ctlAccessToken = Nothing
    , _ctlUploadType = Nothing
    , _ctlBearerToken = Nothing
    , _ctlPageToken = Nothing
    , _ctlPageSize = Nothing
    , _ctlCallback = Nothing
    }

-- | V1 error format.
ctlXgafv :: Lens' CoursesTeachersList' (Maybe Text)
ctlXgafv = lens _ctlXgafv (\ s a -> s{_ctlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctlUploadProtocol :: Lens' CoursesTeachersList' (Maybe Text)
ctlUploadProtocol
  = lens _ctlUploadProtocol
      (\ s a -> s{_ctlUploadProtocol = a})

-- | Pretty-print response.
ctlPp :: Lens' CoursesTeachersList' Bool
ctlPp = lens _ctlPp (\ s a -> s{_ctlPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctlCourseId :: Lens' CoursesTeachersList' Text
ctlCourseId
  = lens _ctlCourseId (\ s a -> s{_ctlCourseId = a})

-- | OAuth access token.
ctlAccessToken :: Lens' CoursesTeachersList' (Maybe Text)
ctlAccessToken
  = lens _ctlAccessToken
      (\ s a -> s{_ctlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctlUploadType :: Lens' CoursesTeachersList' (Maybe Text)
ctlUploadType
  = lens _ctlUploadType
      (\ s a -> s{_ctlUploadType = a})

-- | OAuth bearer token.
ctlBearerToken :: Lens' CoursesTeachersList' (Maybe Text)
ctlBearerToken
  = lens _ctlBearerToken
      (\ s a -> s{_ctlBearerToken = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
ctlPageToken :: Lens' CoursesTeachersList' (Maybe Text)
ctlPageToken
  = lens _ctlPageToken (\ s a -> s{_ctlPageToken = a})

-- | Maximum number of items to return. Zero means no maximum. The server may
-- return fewer than the specified number of results.
ctlPageSize :: Lens' CoursesTeachersList' (Maybe Int32)
ctlPageSize
  = lens _ctlPageSize (\ s a -> s{_ctlPageSize = a})

-- | JSONP
ctlCallback :: Lens' CoursesTeachersList' (Maybe Text)
ctlCallback
  = lens _ctlCallback (\ s a -> s{_ctlCallback = a})

instance GoogleRequest CoursesTeachersList' where
        type Rs CoursesTeachersList' = ListTeachersResponse
        requestClient CoursesTeachersList'{..}
          = go _ctlCourseId _ctlXgafv _ctlUploadProtocol
              (Just _ctlPp)
              _ctlAccessToken
              _ctlUploadType
              _ctlBearerToken
              _ctlPageToken
              _ctlPageSize
              _ctlCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTeachersListResource)
                      mempty
