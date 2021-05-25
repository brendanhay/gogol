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
-- Module      : Network.Google.Resource.Classroom.Courses.Topics.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a topic. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not allowed to delete
-- the requested topic or for access errors. * \`FAILED_PRECONDITION\` if
-- the requested topic has already been deleted. * \`NOT_FOUND\` if no
-- course or topic exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.topics.delete@.
module Network.Google.Resource.Classroom.Courses.Topics.Delete
    (
    -- * REST Resource
      CoursesTopicsDeleteResource

    -- * Creating a Request
    , coursesTopicsDelete
    , CoursesTopicsDelete

    -- * Request Lenses
    , ctdXgafv
    , ctdUploadProtocol
    , ctdCourseId
    , ctdAccessToken
    , ctdUploadType
    , ctdId
    , ctdCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.topics.delete@ method which the
-- 'CoursesTopicsDelete' request conforms to.
type CoursesTopicsDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "topics" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a topic. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not allowed to delete
-- the requested topic or for access errors. * \`FAILED_PRECONDITION\` if
-- the requested topic has already been deleted. * \`NOT_FOUND\` if no
-- course or topic exists with the requested ID.
--
-- /See:/ 'coursesTopicsDelete' smart constructor.
data CoursesTopicsDelete =
  CoursesTopicsDelete'
    { _ctdXgafv :: !(Maybe Xgafv)
    , _ctdUploadProtocol :: !(Maybe Text)
    , _ctdCourseId :: !Text
    , _ctdAccessToken :: !(Maybe Text)
    , _ctdUploadType :: !(Maybe Text)
    , _ctdId :: !Text
    , _ctdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesTopicsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctdXgafv'
--
-- * 'ctdUploadProtocol'
--
-- * 'ctdCourseId'
--
-- * 'ctdAccessToken'
--
-- * 'ctdUploadType'
--
-- * 'ctdId'
--
-- * 'ctdCallback'
coursesTopicsDelete
    :: Text -- ^ 'ctdCourseId'
    -> Text -- ^ 'ctdId'
    -> CoursesTopicsDelete
coursesTopicsDelete pCtdCourseId_ pCtdId_ =
  CoursesTopicsDelete'
    { _ctdXgafv = Nothing
    , _ctdUploadProtocol = Nothing
    , _ctdCourseId = pCtdCourseId_
    , _ctdAccessToken = Nothing
    , _ctdUploadType = Nothing
    , _ctdId = pCtdId_
    , _ctdCallback = Nothing
    }


-- | V1 error format.
ctdXgafv :: Lens' CoursesTopicsDelete (Maybe Xgafv)
ctdXgafv = lens _ctdXgafv (\ s a -> s{_ctdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctdUploadProtocol :: Lens' CoursesTopicsDelete (Maybe Text)
ctdUploadProtocol
  = lens _ctdUploadProtocol
      (\ s a -> s{_ctdUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctdCourseId :: Lens' CoursesTopicsDelete Text
ctdCourseId
  = lens _ctdCourseId (\ s a -> s{_ctdCourseId = a})

-- | OAuth access token.
ctdAccessToken :: Lens' CoursesTopicsDelete (Maybe Text)
ctdAccessToken
  = lens _ctdAccessToken
      (\ s a -> s{_ctdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctdUploadType :: Lens' CoursesTopicsDelete (Maybe Text)
ctdUploadType
  = lens _ctdUploadType
      (\ s a -> s{_ctdUploadType = a})

-- | Identifier of the topic to delete.
ctdId :: Lens' CoursesTopicsDelete Text
ctdId = lens _ctdId (\ s a -> s{_ctdId = a})

-- | JSONP
ctdCallback :: Lens' CoursesTopicsDelete (Maybe Text)
ctdCallback
  = lens _ctdCallback (\ s a -> s{_ctdCallback = a})

instance GoogleRequest CoursesTopicsDelete where
        type Rs CoursesTopicsDelete = Empty
        type Scopes CoursesTopicsDelete =
             '["https://www.googleapis.com/auth/classroom.topics"]
        requestClient CoursesTopicsDelete'{..}
          = go _ctdCourseId _ctdId _ctdXgafv _ctdUploadProtocol
              _ctdAccessToken
              _ctdUploadType
              _ctdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTopicsDeleteResource)
                      mempty
