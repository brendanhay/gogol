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
-- Module      : Network.Google.Resource.Classroom.Courses.Announcements.ModifyAssignees
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies assignee mode and options of an announcement. Only a teacher of
-- the course that contains the announcement may call this method. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting user is not permitted to access the requested course or
-- course work or for access errors. * \`INVALID_ARGUMENT\` if the request
-- is malformed. * \`NOT_FOUND\` if the requested course or course work
-- does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.modifyAssignees@.
module Network.Google.Resource.Classroom.Courses.Announcements.ModifyAssignees
    (
    -- * REST Resource
      CoursesAnnouncementsModifyAssigneesResource

    -- * Creating a Request
    , coursesAnnouncementsModifyAssignees
    , CoursesAnnouncementsModifyAssignees

    -- * Request Lenses
    , camaXgafv
    , camaUploadProtocol
    , camaCourseId
    , camaAccessToken
    , camaUploadType
    , camaPayload
    , camaId
    , camaCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.announcements.modifyAssignees@ method which the
-- 'CoursesAnnouncementsModifyAssignees' request conforms to.
type CoursesAnnouncementsModifyAssigneesResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "announcements" :>
             CaptureMode "id" "modifyAssignees" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ModifyAnnouncementAssigneesRequest :>
                             Post '[JSON] Announcement

-- | Modifies assignee mode and options of an announcement. Only a teacher of
-- the course that contains the announcement may call this method. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting user is not permitted to access the requested course or
-- course work or for access errors. * \`INVALID_ARGUMENT\` if the request
-- is malformed. * \`NOT_FOUND\` if the requested course or course work
-- does not exist.
--
-- /See:/ 'coursesAnnouncementsModifyAssignees' smart constructor.
data CoursesAnnouncementsModifyAssignees =
  CoursesAnnouncementsModifyAssignees'
    { _camaXgafv          :: !(Maybe Xgafv)
    , _camaUploadProtocol :: !(Maybe Text)
    , _camaCourseId       :: !Text
    , _camaAccessToken    :: !(Maybe Text)
    , _camaUploadType     :: !(Maybe Text)
    , _camaPayload        :: !ModifyAnnouncementAssigneesRequest
    , _camaId             :: !Text
    , _camaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesAnnouncementsModifyAssignees' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'camaXgafv'
--
-- * 'camaUploadProtocol'
--
-- * 'camaCourseId'
--
-- * 'camaAccessToken'
--
-- * 'camaUploadType'
--
-- * 'camaPayload'
--
-- * 'camaId'
--
-- * 'camaCallback'
coursesAnnouncementsModifyAssignees
    :: Text -- ^ 'camaCourseId'
    -> ModifyAnnouncementAssigneesRequest -- ^ 'camaPayload'
    -> Text -- ^ 'camaId'
    -> CoursesAnnouncementsModifyAssignees
coursesAnnouncementsModifyAssignees pCamaCourseId_ pCamaPayload_ pCamaId_ =
  CoursesAnnouncementsModifyAssignees'
    { _camaXgafv = Nothing
    , _camaUploadProtocol = Nothing
    , _camaCourseId = pCamaCourseId_
    , _camaAccessToken = Nothing
    , _camaUploadType = Nothing
    , _camaPayload = pCamaPayload_
    , _camaId = pCamaId_
    , _camaCallback = Nothing
    }


-- | V1 error format.
camaXgafv :: Lens' CoursesAnnouncementsModifyAssignees (Maybe Xgafv)
camaXgafv
  = lens _camaXgafv (\ s a -> s{_camaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
camaUploadProtocol :: Lens' CoursesAnnouncementsModifyAssignees (Maybe Text)
camaUploadProtocol
  = lens _camaUploadProtocol
      (\ s a -> s{_camaUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
camaCourseId :: Lens' CoursesAnnouncementsModifyAssignees Text
camaCourseId
  = lens _camaCourseId (\ s a -> s{_camaCourseId = a})

-- | OAuth access token.
camaAccessToken :: Lens' CoursesAnnouncementsModifyAssignees (Maybe Text)
camaAccessToken
  = lens _camaAccessToken
      (\ s a -> s{_camaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
camaUploadType :: Lens' CoursesAnnouncementsModifyAssignees (Maybe Text)
camaUploadType
  = lens _camaUploadType
      (\ s a -> s{_camaUploadType = a})

-- | Multipart request metadata.
camaPayload :: Lens' CoursesAnnouncementsModifyAssignees ModifyAnnouncementAssigneesRequest
camaPayload
  = lens _camaPayload (\ s a -> s{_camaPayload = a})

-- | Identifier of the announcement.
camaId :: Lens' CoursesAnnouncementsModifyAssignees Text
camaId = lens _camaId (\ s a -> s{_camaId = a})

-- | JSONP
camaCallback :: Lens' CoursesAnnouncementsModifyAssignees (Maybe Text)
camaCallback
  = lens _camaCallback (\ s a -> s{_camaCallback = a})

instance GoogleRequest
           CoursesAnnouncementsModifyAssignees
         where
        type Rs CoursesAnnouncementsModifyAssignees =
             Announcement
        type Scopes CoursesAnnouncementsModifyAssignees =
             '["https://www.googleapis.com/auth/classroom.announcements"]
        requestClient
          CoursesAnnouncementsModifyAssignees'{..}
          = go _camaCourseId _camaId _camaXgafv
              _camaUploadProtocol
              _camaAccessToken
              _camaUploadType
              _camaCallback
              (Just AltJSON)
              _camaPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CoursesAnnouncementsModifyAssigneesResource)
                      mempty
