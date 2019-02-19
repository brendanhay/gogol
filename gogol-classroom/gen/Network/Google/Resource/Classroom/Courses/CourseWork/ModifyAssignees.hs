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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.ModifyAssignees
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies assignee mode and options of a coursework. Only a teacher of
-- the course that contains the coursework may call this method. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting user is not permitted to access the requested course or
-- course work or for access errors. * \`INVALID_ARGUMENT\` if the request
-- is malformed. * \`NOT_FOUND\` if the requested course or course work
-- does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.modifyAssignees@.
module Network.Google.Resource.Classroom.Courses.CourseWork.ModifyAssignees
    (
    -- * REST Resource
      CoursesCourseWorkModifyAssigneesResource

    -- * Creating a Request
    , coursesCourseWorkModifyAssignees
    , CoursesCourseWorkModifyAssignees

    -- * Request Lenses
    , ccwmaXgafv
    , ccwmaUploadProtocol
    , ccwmaCourseId
    , ccwmaAccessToken
    , ccwmaUploadType
    , ccwmaPayload
    , ccwmaId
    , ccwmaCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.modifyAssignees@ method which the
-- 'CoursesCourseWorkModifyAssignees' request conforms to.
type CoursesCourseWorkModifyAssigneesResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             CaptureMode "id" "modifyAssignees" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ModifyCourseWorkAssigneesRequest :>
                             Post '[JSON] CourseWork

-- | Modifies assignee mode and options of a coursework. Only a teacher of
-- the course that contains the coursework may call this method. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting user is not permitted to access the requested course or
-- course work or for access errors. * \`INVALID_ARGUMENT\` if the request
-- is malformed. * \`NOT_FOUND\` if the requested course or course work
-- does not exist.
--
-- /See:/ 'coursesCourseWorkModifyAssignees' smart constructor.
data CoursesCourseWorkModifyAssignees =
  CoursesCourseWorkModifyAssignees'
    { _ccwmaXgafv          :: !(Maybe Xgafv)
    , _ccwmaUploadProtocol :: !(Maybe Text)
    , _ccwmaCourseId       :: !Text
    , _ccwmaAccessToken    :: !(Maybe Text)
    , _ccwmaUploadType     :: !(Maybe Text)
    , _ccwmaPayload        :: !ModifyCourseWorkAssigneesRequest
    , _ccwmaId             :: !Text
    , _ccwmaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CoursesCourseWorkModifyAssignees' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwmaXgafv'
--
-- * 'ccwmaUploadProtocol'
--
-- * 'ccwmaCourseId'
--
-- * 'ccwmaAccessToken'
--
-- * 'ccwmaUploadType'
--
-- * 'ccwmaPayload'
--
-- * 'ccwmaId'
--
-- * 'ccwmaCallback'
coursesCourseWorkModifyAssignees
    :: Text -- ^ 'ccwmaCourseId'
    -> ModifyCourseWorkAssigneesRequest -- ^ 'ccwmaPayload'
    -> Text -- ^ 'ccwmaId'
    -> CoursesCourseWorkModifyAssignees
coursesCourseWorkModifyAssignees pCcwmaCourseId_ pCcwmaPayload_ pCcwmaId_ =
  CoursesCourseWorkModifyAssignees'
    { _ccwmaXgafv = Nothing
    , _ccwmaUploadProtocol = Nothing
    , _ccwmaCourseId = pCcwmaCourseId_
    , _ccwmaAccessToken = Nothing
    , _ccwmaUploadType = Nothing
    , _ccwmaPayload = pCcwmaPayload_
    , _ccwmaId = pCcwmaId_
    , _ccwmaCallback = Nothing
    }

-- | V1 error format.
ccwmaXgafv :: Lens' CoursesCourseWorkModifyAssignees (Maybe Xgafv)
ccwmaXgafv
  = lens _ccwmaXgafv (\ s a -> s{_ccwmaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwmaUploadProtocol :: Lens' CoursesCourseWorkModifyAssignees (Maybe Text)
ccwmaUploadProtocol
  = lens _ccwmaUploadProtocol
      (\ s a -> s{_ccwmaUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwmaCourseId :: Lens' CoursesCourseWorkModifyAssignees Text
ccwmaCourseId
  = lens _ccwmaCourseId
      (\ s a -> s{_ccwmaCourseId = a})

-- | OAuth access token.
ccwmaAccessToken :: Lens' CoursesCourseWorkModifyAssignees (Maybe Text)
ccwmaAccessToken
  = lens _ccwmaAccessToken
      (\ s a -> s{_ccwmaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwmaUploadType :: Lens' CoursesCourseWorkModifyAssignees (Maybe Text)
ccwmaUploadType
  = lens _ccwmaUploadType
      (\ s a -> s{_ccwmaUploadType = a})

-- | Multipart request metadata.
ccwmaPayload :: Lens' CoursesCourseWorkModifyAssignees ModifyCourseWorkAssigneesRequest
ccwmaPayload
  = lens _ccwmaPayload (\ s a -> s{_ccwmaPayload = a})

-- | Identifier of the coursework.
ccwmaId :: Lens' CoursesCourseWorkModifyAssignees Text
ccwmaId = lens _ccwmaId (\ s a -> s{_ccwmaId = a})

-- | JSONP
ccwmaCallback :: Lens' CoursesCourseWorkModifyAssignees (Maybe Text)
ccwmaCallback
  = lens _ccwmaCallback
      (\ s a -> s{_ccwmaCallback = a})

instance GoogleRequest
           CoursesCourseWorkModifyAssignees
         where
        type Rs CoursesCourseWorkModifyAssignees = CourseWork
        type Scopes CoursesCourseWorkModifyAssignees =
             '["https://www.googleapis.com/auth/classroom.coursework.students"]
        requestClient CoursesCourseWorkModifyAssignees'{..}
          = go _ccwmaCourseId _ccwmaId _ccwmaXgafv
              _ccwmaUploadProtocol
              _ccwmaAccessToken
              _ccwmaUploadType
              _ccwmaCallback
              (Just AltJSON)
              _ccwmaPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CoursesCourseWorkModifyAssigneesResource)
                      mempty
