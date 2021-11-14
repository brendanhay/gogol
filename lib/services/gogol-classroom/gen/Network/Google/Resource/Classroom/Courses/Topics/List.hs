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
-- Module      : Network.Google.Resource.Classroom.Courses.Topics.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of topics that the requester is permitted to view. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting user is not permitted to access the requested course or for
-- access errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.topics.list@.
module Network.Google.Resource.Classroom.Courses.Topics.List
    (
    -- * REST Resource
      CoursesTopicsListResource

    -- * Creating a Request
    , coursesTopicsList
    , CoursesTopicsList

    -- * Request Lenses
    , ctlXgafv
    , ctlUploadProtocol
    , ctlCourseId
    , ctlAccessToken
    , ctlUploadType
    , ctlPageToken
    , ctlPageSize
    , ctlCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.topics.list@ method which the
-- 'CoursesTopicsList' request conforms to.
type CoursesTopicsListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "topics" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListTopicResponse

-- | Returns the list of topics that the requester is permitted to view. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting user is not permitted to access the requested course or for
-- access errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course does not exist.
--
-- /See:/ 'coursesTopicsList' smart constructor.
data CoursesTopicsList =
  CoursesTopicsList'
    { _ctlXgafv :: !(Maybe Xgafv)
    , _ctlUploadProtocol :: !(Maybe Text)
    , _ctlCourseId :: !Text
    , _ctlAccessToken :: !(Maybe Text)
    , _ctlUploadType :: !(Maybe Text)
    , _ctlPageToken :: !(Maybe Text)
    , _ctlPageSize :: !(Maybe (Textual Int32))
    , _ctlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesTopicsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctlXgafv'
--
-- * 'ctlUploadProtocol'
--
-- * 'ctlCourseId'
--
-- * 'ctlAccessToken'
--
-- * 'ctlUploadType'
--
-- * 'ctlPageToken'
--
-- * 'ctlPageSize'
--
-- * 'ctlCallback'
coursesTopicsList
    :: Text -- ^ 'ctlCourseId'
    -> CoursesTopicsList
coursesTopicsList pCtlCourseId_ =
  CoursesTopicsList'
    { _ctlXgafv = Nothing
    , _ctlUploadProtocol = Nothing
    , _ctlCourseId = pCtlCourseId_
    , _ctlAccessToken = Nothing
    , _ctlUploadType = Nothing
    , _ctlPageToken = Nothing
    , _ctlPageSize = Nothing
    , _ctlCallback = Nothing
    }


-- | V1 error format.
ctlXgafv :: Lens' CoursesTopicsList (Maybe Xgafv)
ctlXgafv = lens _ctlXgafv (\ s a -> s{_ctlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctlUploadProtocol :: Lens' CoursesTopicsList (Maybe Text)
ctlUploadProtocol
  = lens _ctlUploadProtocol
      (\ s a -> s{_ctlUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctlCourseId :: Lens' CoursesTopicsList Text
ctlCourseId
  = lens _ctlCourseId (\ s a -> s{_ctlCourseId = a})

-- | OAuth access token.
ctlAccessToken :: Lens' CoursesTopicsList (Maybe Text)
ctlAccessToken
  = lens _ctlAccessToken
      (\ s a -> s{_ctlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctlUploadType :: Lens' CoursesTopicsList (Maybe Text)
ctlUploadType
  = lens _ctlUploadType
      (\ s a -> s{_ctlUploadType = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
ctlPageToken :: Lens' CoursesTopicsList (Maybe Text)
ctlPageToken
  = lens _ctlPageToken (\ s a -> s{_ctlPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
ctlPageSize :: Lens' CoursesTopicsList (Maybe Int32)
ctlPageSize
  = lens _ctlPageSize (\ s a -> s{_ctlPageSize = a}) .
      mapping _Coerce

-- | JSONP
ctlCallback :: Lens' CoursesTopicsList (Maybe Text)
ctlCallback
  = lens _ctlCallback (\ s a -> s{_ctlCallback = a})

instance GoogleRequest CoursesTopicsList where
        type Rs CoursesTopicsList = ListTopicResponse
        type Scopes CoursesTopicsList =
             '["https://www.googleapis.com/auth/classroom.topics",
               "https://www.googleapis.com/auth/classroom.topics.readonly"]
        requestClient CoursesTopicsList'{..}
          = go _ctlCourseId _ctlXgafv _ctlUploadProtocol
              _ctlAccessToken
              _ctlUploadType
              _ctlPageToken
              _ctlPageSize
              _ctlCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTopicsListResource)
                      mempty
