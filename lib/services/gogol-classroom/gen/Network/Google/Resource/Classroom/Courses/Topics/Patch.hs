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
-- Module      : Network.Google.Resource.Classroom.Courses.Topics.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields of a topic. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding topic or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course or topic does not exist
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.topics.patch@.
module Network.Google.Resource.Classroom.Courses.Topics.Patch
    (
    -- * REST Resource
      CoursesTopicsPatchResource

    -- * Creating a Request
    , coursesTopicsPatch
    , CoursesTopicsPatch

    -- * Request Lenses
    , ctpXgafv
    , ctpUploadProtocol
    , ctpUpdateMask
    , ctpCourseId
    , ctpAccessToken
    , ctpUploadType
    , ctpPayload
    , ctpId
    , ctpCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.topics.patch@ method which the
-- 'CoursesTopicsPatch' request conforms to.
type CoursesTopicsPatchResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "topics" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "updateMask" GFieldMask :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Topic :> Patch '[JSON] Topic

-- | Updates one or more fields of a topic. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding topic or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course or topic does not exist
--
-- /See:/ 'coursesTopicsPatch' smart constructor.
data CoursesTopicsPatch =
  CoursesTopicsPatch'
    { _ctpXgafv :: !(Maybe Xgafv)
    , _ctpUploadProtocol :: !(Maybe Text)
    , _ctpUpdateMask :: !(Maybe GFieldMask)
    , _ctpCourseId :: !Text
    , _ctpAccessToken :: !(Maybe Text)
    , _ctpUploadType :: !(Maybe Text)
    , _ctpPayload :: !Topic
    , _ctpId :: !Text
    , _ctpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesTopicsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctpXgafv'
--
-- * 'ctpUploadProtocol'
--
-- * 'ctpUpdateMask'
--
-- * 'ctpCourseId'
--
-- * 'ctpAccessToken'
--
-- * 'ctpUploadType'
--
-- * 'ctpPayload'
--
-- * 'ctpId'
--
-- * 'ctpCallback'
coursesTopicsPatch
    :: Text -- ^ 'ctpCourseId'
    -> Topic -- ^ 'ctpPayload'
    -> Text -- ^ 'ctpId'
    -> CoursesTopicsPatch
coursesTopicsPatch pCtpCourseId_ pCtpPayload_ pCtpId_ =
  CoursesTopicsPatch'
    { _ctpXgafv = Nothing
    , _ctpUploadProtocol = Nothing
    , _ctpUpdateMask = Nothing
    , _ctpCourseId = pCtpCourseId_
    , _ctpAccessToken = Nothing
    , _ctpUploadType = Nothing
    , _ctpPayload = pCtpPayload_
    , _ctpId = pCtpId_
    , _ctpCallback = Nothing
    }


-- | V1 error format.
ctpXgafv :: Lens' CoursesTopicsPatch (Maybe Xgafv)
ctpXgafv = lens _ctpXgafv (\ s a -> s{_ctpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ctpUploadProtocol :: Lens' CoursesTopicsPatch (Maybe Text)
ctpUploadProtocol
  = lens _ctpUploadProtocol
      (\ s a -> s{_ctpUploadProtocol = a})

-- | Mask that identifies which fields on the topic to update. This field is
-- required to do an update. The update fails if invalid fields are
-- specified. If a field supports empty values, it can be cleared by
-- specifying it in the update mask and not in the Topic object. If a field
-- that does not support empty values is included in the update mask and
-- not set in the Topic object, an \`INVALID_ARGUMENT\` error is returned.
-- The following fields may be specified: * \`name\`
ctpUpdateMask :: Lens' CoursesTopicsPatch (Maybe GFieldMask)
ctpUpdateMask
  = lens _ctpUpdateMask
      (\ s a -> s{_ctpUpdateMask = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ctpCourseId :: Lens' CoursesTopicsPatch Text
ctpCourseId
  = lens _ctpCourseId (\ s a -> s{_ctpCourseId = a})

-- | OAuth access token.
ctpAccessToken :: Lens' CoursesTopicsPatch (Maybe Text)
ctpAccessToken
  = lens _ctpAccessToken
      (\ s a -> s{_ctpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ctpUploadType :: Lens' CoursesTopicsPatch (Maybe Text)
ctpUploadType
  = lens _ctpUploadType
      (\ s a -> s{_ctpUploadType = a})

-- | Multipart request metadata.
ctpPayload :: Lens' CoursesTopicsPatch Topic
ctpPayload
  = lens _ctpPayload (\ s a -> s{_ctpPayload = a})

-- | Identifier of the topic.
ctpId :: Lens' CoursesTopicsPatch Text
ctpId = lens _ctpId (\ s a -> s{_ctpId = a})

-- | JSONP
ctpCallback :: Lens' CoursesTopicsPatch (Maybe Text)
ctpCallback
  = lens _ctpCallback (\ s a -> s{_ctpCallback = a})

instance GoogleRequest CoursesTopicsPatch where
        type Rs CoursesTopicsPatch = Topic
        type Scopes CoursesTopicsPatch =
             '["https://www.googleapis.com/auth/classroom.topics"]
        requestClient CoursesTopicsPatch'{..}
          = go _ctpCourseId _ctpId _ctpXgafv _ctpUploadProtocol
              _ctpUpdateMask
              _ctpAccessToken
              _ctpUploadType
              _ctpCallback
              (Just AltJSON)
              _ctpPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesTopicsPatchResource)
                      mempty
