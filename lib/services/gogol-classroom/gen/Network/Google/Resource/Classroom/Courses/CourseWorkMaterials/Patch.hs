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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields of a course work material. This method
-- returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting developer project for access errors. * \`INVALID_ARGUMENT\`
-- if the request is malformed. * \`FAILED_PRECONDITION\` if the requested
-- course work material has already been deleted. * \`NOT_FOUND\` if the
-- requested course or course work material does not exist
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.patch@.
module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Patch
    (
    -- * REST Resource
      CoursesCourseWorkMaterialsPatchResource

    -- * Creating a Request
    , coursesCourseWorkMaterialsPatch
    , CoursesCourseWorkMaterialsPatch

    -- * Request Lenses
    , ccwmpXgafv
    , ccwmpUploadProtocol
    , ccwmpUpdateMask
    , ccwmpCourseId
    , ccwmpAccessToken
    , ccwmpUploadType
    , ccwmpPayload
    , ccwmpId
    , ccwmpCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWorkMaterials.patch@ method which the
-- 'CoursesCourseWorkMaterialsPatch' request conforms to.
type CoursesCourseWorkMaterialsPatchResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWorkMaterials" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "updateMask" GFieldMask :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CourseWorkMaterial :>
                               Patch '[JSON] CourseWorkMaterial

-- | Updates one or more fields of a course work material. This method
-- returns the following error codes: * \`PERMISSION_DENIED\` if the
-- requesting developer project for access errors. * \`INVALID_ARGUMENT\`
-- if the request is malformed. * \`FAILED_PRECONDITION\` if the requested
-- course work material has already been deleted. * \`NOT_FOUND\` if the
-- requested course or course work material does not exist
--
-- /See:/ 'coursesCourseWorkMaterialsPatch' smart constructor.
data CoursesCourseWorkMaterialsPatch =
  CoursesCourseWorkMaterialsPatch'
    { _ccwmpXgafv :: !(Maybe Xgafv)
    , _ccwmpUploadProtocol :: !(Maybe Text)
    , _ccwmpUpdateMask :: !(Maybe GFieldMask)
    , _ccwmpCourseId :: !Text
    , _ccwmpAccessToken :: !(Maybe Text)
    , _ccwmpUploadType :: !(Maybe Text)
    , _ccwmpPayload :: !CourseWorkMaterial
    , _ccwmpId :: !Text
    , _ccwmpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkMaterialsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwmpXgafv'
--
-- * 'ccwmpUploadProtocol'
--
-- * 'ccwmpUpdateMask'
--
-- * 'ccwmpCourseId'
--
-- * 'ccwmpAccessToken'
--
-- * 'ccwmpUploadType'
--
-- * 'ccwmpPayload'
--
-- * 'ccwmpId'
--
-- * 'ccwmpCallback'
coursesCourseWorkMaterialsPatch
    :: Text -- ^ 'ccwmpCourseId'
    -> CourseWorkMaterial -- ^ 'ccwmpPayload'
    -> Text -- ^ 'ccwmpId'
    -> CoursesCourseWorkMaterialsPatch
coursesCourseWorkMaterialsPatch pCcwmpCourseId_ pCcwmpPayload_ pCcwmpId_ =
  CoursesCourseWorkMaterialsPatch'
    { _ccwmpXgafv = Nothing
    , _ccwmpUploadProtocol = Nothing
    , _ccwmpUpdateMask = Nothing
    , _ccwmpCourseId = pCcwmpCourseId_
    , _ccwmpAccessToken = Nothing
    , _ccwmpUploadType = Nothing
    , _ccwmpPayload = pCcwmpPayload_
    , _ccwmpId = pCcwmpId_
    , _ccwmpCallback = Nothing
    }


-- | V1 error format.
ccwmpXgafv :: Lens' CoursesCourseWorkMaterialsPatch (Maybe Xgafv)
ccwmpXgafv
  = lens _ccwmpXgafv (\ s a -> s{_ccwmpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwmpUploadProtocol :: Lens' CoursesCourseWorkMaterialsPatch (Maybe Text)
ccwmpUploadProtocol
  = lens _ccwmpUploadProtocol
      (\ s a -> s{_ccwmpUploadProtocol = a})

-- | Mask that identifies which fields on the course work material to update.
-- This field is required to do an update. The update fails if invalid
-- fields are specified. If a field supports empty values, it can be
-- cleared by specifying it in the update mask and not in the course work
-- material object. If a field that does not support empty values is
-- included in the update mask and not set in the course work material
-- object, an \`INVALID_ARGUMENT\` error is returned. The following fields
-- may be specified by teachers: * \`title\` * \`description\` * \`state\`
-- * \`scheduled_time\` * \`topic_id\`
ccwmpUpdateMask :: Lens' CoursesCourseWorkMaterialsPatch (Maybe GFieldMask)
ccwmpUpdateMask
  = lens _ccwmpUpdateMask
      (\ s a -> s{_ccwmpUpdateMask = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwmpCourseId :: Lens' CoursesCourseWorkMaterialsPatch Text
ccwmpCourseId
  = lens _ccwmpCourseId
      (\ s a -> s{_ccwmpCourseId = a})

-- | OAuth access token.
ccwmpAccessToken :: Lens' CoursesCourseWorkMaterialsPatch (Maybe Text)
ccwmpAccessToken
  = lens _ccwmpAccessToken
      (\ s a -> s{_ccwmpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwmpUploadType :: Lens' CoursesCourseWorkMaterialsPatch (Maybe Text)
ccwmpUploadType
  = lens _ccwmpUploadType
      (\ s a -> s{_ccwmpUploadType = a})

-- | Multipart request metadata.
ccwmpPayload :: Lens' CoursesCourseWorkMaterialsPatch CourseWorkMaterial
ccwmpPayload
  = lens _ccwmpPayload (\ s a -> s{_ccwmpPayload = a})

-- | Identifier of the course work material.
ccwmpId :: Lens' CoursesCourseWorkMaterialsPatch Text
ccwmpId = lens _ccwmpId (\ s a -> s{_ccwmpId = a})

-- | JSONP
ccwmpCallback :: Lens' CoursesCourseWorkMaterialsPatch (Maybe Text)
ccwmpCallback
  = lens _ccwmpCallback
      (\ s a -> s{_ccwmpCallback = a})

instance GoogleRequest
           CoursesCourseWorkMaterialsPatch
         where
        type Rs CoursesCourseWorkMaterialsPatch =
             CourseWorkMaterial
        type Scopes CoursesCourseWorkMaterialsPatch =
             '["https://www.googleapis.com/auth/classroom.courseworkmaterials"]
        requestClient CoursesCourseWorkMaterialsPatch'{..}
          = go _ccwmpCourseId _ccwmpId _ccwmpXgafv
              _ccwmpUploadProtocol
              _ccwmpUpdateMask
              _ccwmpAccessToken
              _ccwmpUploadType
              _ccwmpCallback
              (Just AltJSON)
              _ccwmpPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CoursesCourseWorkMaterialsPatchResource)
                      mempty
