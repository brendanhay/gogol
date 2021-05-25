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
-- Module      : Network.Google.Resource.Classroom.Courses.Topics.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a topic. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or topic, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course or topic does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.topics.get@.
module Network.Google.Resource.Classroom.Courses.Topics.Get
    (
    -- * REST Resource
      CoursesTopicsGetResource

    -- * Creating a Request
    , coursesTopicsGet
    , CoursesTopicsGet

    -- * Request Lenses
    , ctgXgafv
    , ctgUploadProtocol
    , ctgCourseId
    , ctgAccessToken
    , ctgUploadType
    , ctgId
    , ctgCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.topics.get@ method which the
-- 'CoursesTopicsGet' request conforms to.
type CoursesTopicsGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Topic

-- | Returns a topic. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or topic, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course or topic does not exist.
--
-- /See:/ 'coursesTopicsGet' smart constructor.
data CoursesTopicsGet =
  CoursesTopicsGet'
    { _ctgXgafv :: !(Maybe Xgafv)
    , _ctgUploadProtocol :: !(Maybe Text)
    , _ctgCourseId :: !Text
    , _ctgAccessToken :: !(Maybe Text)
    , _ctgUploadType :: !(Maybe Text)
    , _ctgId :: !Text
    , _ctgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesTopicsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgXgafv'
--
-- * 'ctgUploadProtocol'
--
-- * 'ctgCourseId'
--
-- * 'ctgAccessToken'
--
-- * 'ctgUploadType'
--
-- * 'ctgId'
--
-- * 'ctgCallback'
coursesTopicsGet
    :: Text -- ^ 'ctgCourseId'
    -> Text -- ^ 'ctgId'
    -> CoursesTopicsGet
coursesTopicsGet pCtgCourseId_ pCtgId_ =
  CoursesTopicsGet'
    { _ctgXgafv = Nothing
    , _ctgUploadProtocol = Nothing
    , _ctgCourseId = pCtgCourseId_
    , _ctgAccessToken = Nothing
    , _ctgUploadType = Nothing
    , _ctgId = pCtgId_
    , _ctgCallback = Nothing
    }


-- | V1 error format.
ctgXgafv :: Lens' CoursesTopicsGet (Maybe Xgafv)
ctgXgafv = lens _ctgXgafv (\ s a -> s{_ctgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctgUploadProtocol :: Lens' CoursesTopicsGet (Maybe Text)
ctgUploadProtocol
  = lens _ctgUploadProtocol
      (\ s a -> s{_ctgUploadProtocol = a})

-- | Identifier of the course.
ctgCourseId :: Lens' CoursesTopicsGet Text
ctgCourseId
  = lens _ctgCourseId (\ s a -> s{_ctgCourseId = a})

-- | OAuth access token.
ctgAccessToken :: Lens' CoursesTopicsGet (Maybe Text)
ctgAccessToken
  = lens _ctgAccessToken
      (\ s a -> s{_ctgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctgUploadType :: Lens' CoursesTopicsGet (Maybe Text)
ctgUploadType
  = lens _ctgUploadType
      (\ s a -> s{_ctgUploadType = a})

-- | Identifier of the topic.
ctgId :: Lens' CoursesTopicsGet Text
ctgId = lens _ctgId (\ s a -> s{_ctgId = a})

-- | JSONP
ctgCallback :: Lens' CoursesTopicsGet (Maybe Text)
ctgCallback
  = lens _ctgCallback (\ s a -> s{_ctgCallback = a})

instance GoogleRequest CoursesTopicsGet where
        type Rs CoursesTopicsGet = Topic
        type Scopes CoursesTopicsGet =
             '["https://www.googleapis.com/auth/classroom.topics",
               "https://www.googleapis.com/auth/classroom.topics.readonly"]
        requestClient CoursesTopicsGet'{..}
          = go _ctgCourseId _ctgId _ctgXgafv _ctgUploadProtocol
              _ctgAccessToken
              _ctgUploadType
              _ctgCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTopicsGetResource)
                      mempty
