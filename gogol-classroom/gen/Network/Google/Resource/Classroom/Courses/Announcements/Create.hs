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
-- Module      : Network.Google.Resource.Classroom.Courses.Announcements.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an announcement. This method returns the following error codes:
-- * \`PERMISSION_DENIED\` if the requesting user is not permitted to
-- access the requested course, create announcements in the requested
-- course, share a Drive attachment, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course does not exist. * \`FAILED_PRECONDITION\` for the
-- following request error: * AttachmentNotVisible
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.create@.
module Network.Google.Resource.Classroom.Courses.Announcements.Create
    (
    -- * REST Resource
      CoursesAnnouncementsCreateResource

    -- * Creating a Request
    , coursesAnnouncementsCreate
    , CoursesAnnouncementsCreate

    -- * Request Lenses
    , couXgafv
    , couUploadProtocol
    , couCourseId
    , couAccessToken
    , couUploadType
    , couPayload
    , couCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.announcements.create@ method which the
-- 'CoursesAnnouncementsCreate' request conforms to.
type CoursesAnnouncementsCreateResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "announcements" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Announcement :>
                           Post '[JSON] Announcement

-- | Creates an announcement. This method returns the following error codes:
-- * \`PERMISSION_DENIED\` if the requesting user is not permitted to
-- access the requested course, create announcements in the requested
-- course, share a Drive attachment, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course does not exist. * \`FAILED_PRECONDITION\` for the
-- following request error: * AttachmentNotVisible
--
-- /See:/ 'coursesAnnouncementsCreate' smart constructor.
data CoursesAnnouncementsCreate =
  CoursesAnnouncementsCreate'
    { _couXgafv          :: !(Maybe Xgafv)
    , _couUploadProtocol :: !(Maybe Text)
    , _couCourseId       :: !Text
    , _couAccessToken    :: !(Maybe Text)
    , _couUploadType     :: !(Maybe Text)
    , _couPayload        :: !Announcement
    , _couCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesAnnouncementsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couXgafv'
--
-- * 'couUploadProtocol'
--
-- * 'couCourseId'
--
-- * 'couAccessToken'
--
-- * 'couUploadType'
--
-- * 'couPayload'
--
-- * 'couCallback'
coursesAnnouncementsCreate
    :: Text -- ^ 'couCourseId'
    -> Announcement -- ^ 'couPayload'
    -> CoursesAnnouncementsCreate
coursesAnnouncementsCreate pCouCourseId_ pCouPayload_ =
  CoursesAnnouncementsCreate'
    { _couXgafv = Nothing
    , _couUploadProtocol = Nothing
    , _couCourseId = pCouCourseId_
    , _couAccessToken = Nothing
    , _couUploadType = Nothing
    , _couPayload = pCouPayload_
    , _couCallback = Nothing
    }


-- | V1 error format.
couXgafv :: Lens' CoursesAnnouncementsCreate (Maybe Xgafv)
couXgafv = lens _couXgafv (\ s a -> s{_couXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
couUploadProtocol :: Lens' CoursesAnnouncementsCreate (Maybe Text)
couUploadProtocol
  = lens _couUploadProtocol
      (\ s a -> s{_couUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
couCourseId :: Lens' CoursesAnnouncementsCreate Text
couCourseId
  = lens _couCourseId (\ s a -> s{_couCourseId = a})

-- | OAuth access token.
couAccessToken :: Lens' CoursesAnnouncementsCreate (Maybe Text)
couAccessToken
  = lens _couAccessToken
      (\ s a -> s{_couAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
couUploadType :: Lens' CoursesAnnouncementsCreate (Maybe Text)
couUploadType
  = lens _couUploadType
      (\ s a -> s{_couUploadType = a})

-- | Multipart request metadata.
couPayload :: Lens' CoursesAnnouncementsCreate Announcement
couPayload
  = lens _couPayload (\ s a -> s{_couPayload = a})

-- | JSONP
couCallback :: Lens' CoursesAnnouncementsCreate (Maybe Text)
couCallback
  = lens _couCallback (\ s a -> s{_couCallback = a})

instance GoogleRequest CoursesAnnouncementsCreate
         where
        type Rs CoursesAnnouncementsCreate = Announcement
        type Scopes CoursesAnnouncementsCreate =
             '["https://www.googleapis.com/auth/classroom.announcements"]
        requestClient CoursesAnnouncementsCreate'{..}
          = go _couCourseId _couXgafv _couUploadProtocol
              _couAccessToken
              _couUploadType
              _couCallback
              (Just AltJSON)
              _couPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesAnnouncementsCreateResource)
                      mempty
