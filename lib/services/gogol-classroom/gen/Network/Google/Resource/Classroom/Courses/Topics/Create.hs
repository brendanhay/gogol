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
-- Module      : Network.Google.Resource.Classroom.Courses.Topics.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a topic. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course, create a topic in the requested course, or for
-- access errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.topics.create@.
module Network.Google.Resource.Classroom.Courses.Topics.Create
    (
    -- * REST Resource
      CoursesTopicsCreateResource

    -- * Creating a Request
    , coursesTopicsCreate
    , CoursesTopicsCreate

    -- * Request Lenses
    , ctctXgafv
    , ctctUploadProtocol
    , ctctCourseId
    , ctctAccessToken
    , ctctUploadType
    , ctctPayload
    , ctctCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.topics.create@ method which the
-- 'CoursesTopicsCreate' request conforms to.
type CoursesTopicsCreateResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "topics" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Topic :> Post '[JSON] Topic

-- | Creates a topic. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course, create a topic in the requested course, or for
-- access errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course does not exist.
--
-- /See:/ 'coursesTopicsCreate' smart constructor.
data CoursesTopicsCreate =
  CoursesTopicsCreate'
    { _ctctXgafv :: !(Maybe Xgafv)
    , _ctctUploadProtocol :: !(Maybe Text)
    , _ctctCourseId :: !Text
    , _ctctAccessToken :: !(Maybe Text)
    , _ctctUploadType :: !(Maybe Text)
    , _ctctPayload :: !Topic
    , _ctctCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesTopicsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctctXgafv'
--
-- * 'ctctUploadProtocol'
--
-- * 'ctctCourseId'
--
-- * 'ctctAccessToken'
--
-- * 'ctctUploadType'
--
-- * 'ctctPayload'
--
-- * 'ctctCallback'
coursesTopicsCreate
    :: Text -- ^ 'ctctCourseId'
    -> Topic -- ^ 'ctctPayload'
    -> CoursesTopicsCreate
coursesTopicsCreate pCtctCourseId_ pCtctPayload_ =
  CoursesTopicsCreate'
    { _ctctXgafv = Nothing
    , _ctctUploadProtocol = Nothing
    , _ctctCourseId = pCtctCourseId_
    , _ctctAccessToken = Nothing
    , _ctctUploadType = Nothing
    , _ctctPayload = pCtctPayload_
    , _ctctCallback = Nothing
    }


-- | V1 error format.
ctctXgafv :: Lens' CoursesTopicsCreate (Maybe Xgafv)
ctctXgafv
  = lens _ctctXgafv (\ s a -> s{_ctctXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctctUploadProtocol :: Lens' CoursesTopicsCreate (Maybe Text)
ctctUploadProtocol
  = lens _ctctUploadProtocol
      (\ s a -> s{_ctctUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctctCourseId :: Lens' CoursesTopicsCreate Text
ctctCourseId
  = lens _ctctCourseId (\ s a -> s{_ctctCourseId = a})

-- | OAuth access token.
ctctAccessToken :: Lens' CoursesTopicsCreate (Maybe Text)
ctctAccessToken
  = lens _ctctAccessToken
      (\ s a -> s{_ctctAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctctUploadType :: Lens' CoursesTopicsCreate (Maybe Text)
ctctUploadType
  = lens _ctctUploadType
      (\ s a -> s{_ctctUploadType = a})

-- | Multipart request metadata.
ctctPayload :: Lens' CoursesTopicsCreate Topic
ctctPayload
  = lens _ctctPayload (\ s a -> s{_ctctPayload = a})

-- | JSONP
ctctCallback :: Lens' CoursesTopicsCreate (Maybe Text)
ctctCallback
  = lens _ctctCallback (\ s a -> s{_ctctCallback = a})

instance GoogleRequest CoursesTopicsCreate where
        type Rs CoursesTopicsCreate = Topic
        type Scopes CoursesTopicsCreate =
             '["https://www.googleapis.com/auth/classroom.topics"]
        requestClient CoursesTopicsCreate'{..}
          = go _ctctCourseId _ctctXgafv _ctctUploadProtocol
              _ctctAccessToken
              _ctctUploadType
              _ctctCallback
              (Just AltJSON)
              _ctctPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTopicsCreateResource)
                      mempty
