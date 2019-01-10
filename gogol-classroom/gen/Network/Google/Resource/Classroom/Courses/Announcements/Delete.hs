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
-- Module      : Network.Google.Resource.Classroom.Courses.Announcements.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an announcement. This request must be made by the Developer
-- Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding announcement item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding announcement, if the requesting user is
-- not permitted to delete the requested course or for access errors. *
-- \`FAILED_PRECONDITION\` if the requested announcement has already been
-- deleted. * \`NOT_FOUND\` if no course exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.announcements.delete@.
module Network.Google.Resource.Classroom.Courses.Announcements.Delete
    (
    -- * REST Resource
      CoursesAnnouncementsDeleteResource

    -- * Creating a Request
    , coursesAnnouncementsDelete
    , CoursesAnnouncementsDelete

    -- * Request Lenses
    , cXgafv
    , cUploadProtocol
    , cCourseId
    , cAccessToken
    , cUploadType
    , cId
    , cCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.announcements.delete@ method which the
-- 'CoursesAnnouncementsDelete' request conforms to.
type CoursesAnnouncementsDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "announcements" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an announcement. This request must be made by the Developer
-- Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding announcement item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding announcement, if the requesting user is
-- not permitted to delete the requested course or for access errors. *
-- \`FAILED_PRECONDITION\` if the requested announcement has already been
-- deleted. * \`NOT_FOUND\` if no course exists with the requested ID.
--
-- /See:/ 'coursesAnnouncementsDelete' smart constructor.
data CoursesAnnouncementsDelete = CoursesAnnouncementsDelete'
    { _cXgafv          :: !(Maybe Xgafv)
    , _cUploadProtocol :: !(Maybe Text)
    , _cCourseId       :: !Text
    , _cAccessToken    :: !(Maybe Text)
    , _cUploadType     :: !(Maybe Text)
    , _cId             :: !Text
    , _cCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesAnnouncementsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cXgafv'
--
-- * 'cUploadProtocol'
--
-- * 'cCourseId'
--
-- * 'cAccessToken'
--
-- * 'cUploadType'
--
-- * 'cId'
--
-- * 'cCallback'
coursesAnnouncementsDelete
    :: Text -- ^ 'cCourseId'
    -> Text -- ^ 'cId'
    -> CoursesAnnouncementsDelete
coursesAnnouncementsDelete pCCourseId_ pCId_ =
    CoursesAnnouncementsDelete'
    { _cXgafv = Nothing
    , _cUploadProtocol = Nothing
    , _cCourseId = pCCourseId_
    , _cAccessToken = Nothing
    , _cUploadType = Nothing
    , _cId = pCId_
    , _cCallback = Nothing
    }

-- | V1 error format.
cXgafv :: Lens' CoursesAnnouncementsDelete (Maybe Xgafv)
cXgafv = lens _cXgafv (\ s a -> s{_cXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cUploadProtocol :: Lens' CoursesAnnouncementsDelete (Maybe Text)
cUploadProtocol
  = lens _cUploadProtocol
      (\ s a -> s{_cUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
cCourseId :: Lens' CoursesAnnouncementsDelete Text
cCourseId
  = lens _cCourseId (\ s a -> s{_cCourseId = a})

-- | OAuth access token.
cAccessToken :: Lens' CoursesAnnouncementsDelete (Maybe Text)
cAccessToken
  = lens _cAccessToken (\ s a -> s{_cAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cUploadType :: Lens' CoursesAnnouncementsDelete (Maybe Text)
cUploadType
  = lens _cUploadType (\ s a -> s{_cUploadType = a})

-- | Identifier of the announcement to delete. This identifier is a
-- Classroom-assigned identifier.
cId :: Lens' CoursesAnnouncementsDelete Text
cId = lens _cId (\ s a -> s{_cId = a})

-- | JSONP
cCallback :: Lens' CoursesAnnouncementsDelete (Maybe Text)
cCallback
  = lens _cCallback (\ s a -> s{_cCallback = a})

instance GoogleRequest CoursesAnnouncementsDelete
         where
        type Rs CoursesAnnouncementsDelete = Empty
        type Scopes CoursesAnnouncementsDelete =
             '["https://www.googleapis.com/auth/classroom.announcements"]
        requestClient CoursesAnnouncementsDelete'{..}
          = go _cCourseId _cId _cXgafv _cUploadProtocol
              _cAccessToken
              _cUploadType
              _cCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesAnnouncementsDeleteResource)
                      mempty
