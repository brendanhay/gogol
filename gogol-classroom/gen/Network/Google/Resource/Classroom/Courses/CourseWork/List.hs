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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of course work that the requester is permitted to view.
-- Course students may only view \`PUBLISHED\` course work. Course teachers
-- and domain administrators may view all course work. This method returns
-- the following error codes: * \`PERMISSION_DENIED\` if the requesting
-- user is not permitted to access the requested course or for access
-- errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.list@.
module Network.Google.Resource.Classroom.Courses.CourseWork.List
    (
    -- * REST Resource
      CoursesCourseWorkListResource

    -- * Creating a Request
    , coursesCourseWorkList
    , CoursesCourseWorkList

    -- * Request Lenses
    , ccwlXgafv
    , ccwlUploadProtocol
    , ccwlOrderBy
    , ccwlCourseId
    , ccwlAccessToken
    , ccwlCourseWorkStates
    , ccwlUploadType
    , ccwlPageToken
    , ccwlPageSize
    , ccwlCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.list@ method which the
-- 'CoursesCourseWorkList' request conforms to.
type CoursesCourseWorkListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "orderBy" Text :>
                   QueryParam "access_token" Text :>
                     QueryParams "courseWorkStates"
                       CoursesCourseWorkListCourseWorkStates
                       :>
                       QueryParam "uploadType" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListCourseWorkResponse

-- | Returns a list of course work that the requester is permitted to view.
-- Course students may only view \`PUBLISHED\` course work. Course teachers
-- and domain administrators may view all course work. This method returns
-- the following error codes: * \`PERMISSION_DENIED\` if the requesting
-- user is not permitted to access the requested course or for access
-- errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course does not exist.
--
-- /See:/ 'coursesCourseWorkList' smart constructor.
data CoursesCourseWorkList =
  CoursesCourseWorkList'
    { _ccwlXgafv :: !(Maybe Xgafv)
    , _ccwlUploadProtocol :: !(Maybe Text)
    , _ccwlOrderBy :: !(Maybe Text)
    , _ccwlCourseId :: !Text
    , _ccwlAccessToken :: !(Maybe Text)
    , _ccwlCourseWorkStates :: !(Maybe [CoursesCourseWorkListCourseWorkStates])
    , _ccwlUploadType :: !(Maybe Text)
    , _ccwlPageToken :: !(Maybe Text)
    , _ccwlPageSize :: !(Maybe (Textual Int32))
    , _ccwlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwlXgafv'
--
-- * 'ccwlUploadProtocol'
--
-- * 'ccwlOrderBy'
--
-- * 'ccwlCourseId'
--
-- * 'ccwlAccessToken'
--
-- * 'ccwlCourseWorkStates'
--
-- * 'ccwlUploadType'
--
-- * 'ccwlPageToken'
--
-- * 'ccwlPageSize'
--
-- * 'ccwlCallback'
coursesCourseWorkList
    :: Text -- ^ 'ccwlCourseId'
    -> CoursesCourseWorkList
coursesCourseWorkList pCcwlCourseId_ =
  CoursesCourseWorkList'
    { _ccwlXgafv = Nothing
    , _ccwlUploadProtocol = Nothing
    , _ccwlOrderBy = Nothing
    , _ccwlCourseId = pCcwlCourseId_
    , _ccwlAccessToken = Nothing
    , _ccwlCourseWorkStates = Nothing
    , _ccwlUploadType = Nothing
    , _ccwlPageToken = Nothing
    , _ccwlPageSize = Nothing
    , _ccwlCallback = Nothing
    }


-- | V1 error format.
ccwlXgafv :: Lens' CoursesCourseWorkList (Maybe Xgafv)
ccwlXgafv
  = lens _ccwlXgafv (\ s a -> s{_ccwlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwlUploadProtocol :: Lens' CoursesCourseWorkList (Maybe Text)
ccwlUploadProtocol
  = lens _ccwlUploadProtocol
      (\ s a -> s{_ccwlUploadProtocol = a})

-- | Optional sort ordering for results. A comma-separated list of fields
-- with an optional sort direction keyword. Supported fields are
-- \`updateTime\` and \`dueDate\`. Supported direction keywords are \`asc\`
-- and \`desc\`. If not specified, \`updateTime desc\` is the default
-- behavior. Examples: \`dueDate asc,updateTime desc\`,
-- \`updateTime,dueDate desc\`
ccwlOrderBy :: Lens' CoursesCourseWorkList (Maybe Text)
ccwlOrderBy
  = lens _ccwlOrderBy (\ s a -> s{_ccwlOrderBy = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwlCourseId :: Lens' CoursesCourseWorkList Text
ccwlCourseId
  = lens _ccwlCourseId (\ s a -> s{_ccwlCourseId = a})

-- | OAuth access token.
ccwlAccessToken :: Lens' CoursesCourseWorkList (Maybe Text)
ccwlAccessToken
  = lens _ccwlAccessToken
      (\ s a -> s{_ccwlAccessToken = a})

-- | Restriction on the work status to return. Only courseWork that matches
-- is returned. If unspecified, items with a work status of \`PUBLISHED\`
-- is returned.
ccwlCourseWorkStates :: Lens' CoursesCourseWorkList [CoursesCourseWorkListCourseWorkStates]
ccwlCourseWorkStates
  = lens _ccwlCourseWorkStates
      (\ s a -> s{_ccwlCourseWorkStates = a})
      . _Default
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwlUploadType :: Lens' CoursesCourseWorkList (Maybe Text)
ccwlUploadType
  = lens _ccwlUploadType
      (\ s a -> s{_ccwlUploadType = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
ccwlPageToken :: Lens' CoursesCourseWorkList (Maybe Text)
ccwlPageToken
  = lens _ccwlPageToken
      (\ s a -> s{_ccwlPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
ccwlPageSize :: Lens' CoursesCourseWorkList (Maybe Int32)
ccwlPageSize
  = lens _ccwlPageSize (\ s a -> s{_ccwlPageSize = a})
      . mapping _Coerce

-- | JSONP
ccwlCallback :: Lens' CoursesCourseWorkList (Maybe Text)
ccwlCallback
  = lens _ccwlCallback (\ s a -> s{_ccwlCallback = a})

instance GoogleRequest CoursesCourseWorkList where
        type Rs CoursesCourseWorkList =
             ListCourseWorkResponse
        type Scopes CoursesCourseWorkList =
             '["https://www.googleapis.com/auth/classroom.coursework.me",
               "https://www.googleapis.com/auth/classroom.coursework.me.readonly",
               "https://www.googleapis.com/auth/classroom.coursework.students",
               "https://www.googleapis.com/auth/classroom.coursework.students.readonly"]
        requestClient CoursesCourseWorkList'{..}
          = go _ccwlCourseId _ccwlXgafv _ccwlUploadProtocol
              _ccwlOrderBy
              _ccwlAccessToken
              (_ccwlCourseWorkStates ^. _Default)
              _ccwlUploadType
              _ccwlPageToken
              _ccwlPageSize
              _ccwlCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesCourseWorkListResource)
                      mempty
