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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a course work material. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to access the requested course, create course work material in the
-- requested course, share a Drive attachment, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed or if more than 20 *
-- materials are provided. * \`NOT_FOUND\` if the requested course does not
-- exist. * \`FAILED_PRECONDITION\` for the following request error: *
-- AttachmentNotVisible
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.create@.
module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Create
    (
    -- * REST Resource
      CoursesCourseWorkMaterialsCreateResource

    -- * Creating a Request
    , coursesCourseWorkMaterialsCreate
    , CoursesCourseWorkMaterialsCreate

    -- * Request Lenses
    , ccwmcXgafv
    , ccwmcUploadProtocol
    , ccwmcCourseId
    , ccwmcAccessToken
    , ccwmcUploadType
    , ccwmcPayload
    , ccwmcCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWorkMaterials.create@ method which the
-- 'CoursesCourseWorkMaterialsCreate' request conforms to.
type CoursesCourseWorkMaterialsCreateResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWorkMaterials" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CourseWorkMaterial :>
                           Post '[JSON] CourseWorkMaterial

-- | Creates a course work material. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to access the requested course, create course work material in the
-- requested course, share a Drive attachment, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed or if more than 20 *
-- materials are provided. * \`NOT_FOUND\` if the requested course does not
-- exist. * \`FAILED_PRECONDITION\` for the following request error: *
-- AttachmentNotVisible
--
-- /See:/ 'coursesCourseWorkMaterialsCreate' smart constructor.
data CoursesCourseWorkMaterialsCreate =
  CoursesCourseWorkMaterialsCreate'
    { _ccwmcXgafv :: !(Maybe Xgafv)
    , _ccwmcUploadProtocol :: !(Maybe Text)
    , _ccwmcCourseId :: !Text
    , _ccwmcAccessToken :: !(Maybe Text)
    , _ccwmcUploadType :: !(Maybe Text)
    , _ccwmcPayload :: !CourseWorkMaterial
    , _ccwmcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkMaterialsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwmcXgafv'
--
-- * 'ccwmcUploadProtocol'
--
-- * 'ccwmcCourseId'
--
-- * 'ccwmcAccessToken'
--
-- * 'ccwmcUploadType'
--
-- * 'ccwmcPayload'
--
-- * 'ccwmcCallback'
coursesCourseWorkMaterialsCreate
    :: Text -- ^ 'ccwmcCourseId'
    -> CourseWorkMaterial -- ^ 'ccwmcPayload'
    -> CoursesCourseWorkMaterialsCreate
coursesCourseWorkMaterialsCreate pCcwmcCourseId_ pCcwmcPayload_ =
  CoursesCourseWorkMaterialsCreate'
    { _ccwmcXgafv = Nothing
    , _ccwmcUploadProtocol = Nothing
    , _ccwmcCourseId = pCcwmcCourseId_
    , _ccwmcAccessToken = Nothing
    , _ccwmcUploadType = Nothing
    , _ccwmcPayload = pCcwmcPayload_
    , _ccwmcCallback = Nothing
    }


-- | V1 error format.
ccwmcXgafv :: Lens' CoursesCourseWorkMaterialsCreate (Maybe Xgafv)
ccwmcXgafv
  = lens _ccwmcXgafv (\ s a -> s{_ccwmcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwmcUploadProtocol :: Lens' CoursesCourseWorkMaterialsCreate (Maybe Text)
ccwmcUploadProtocol
  = lens _ccwmcUploadProtocol
      (\ s a -> s{_ccwmcUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwmcCourseId :: Lens' CoursesCourseWorkMaterialsCreate Text
ccwmcCourseId
  = lens _ccwmcCourseId
      (\ s a -> s{_ccwmcCourseId = a})

-- | OAuth access token.
ccwmcAccessToken :: Lens' CoursesCourseWorkMaterialsCreate (Maybe Text)
ccwmcAccessToken
  = lens _ccwmcAccessToken
      (\ s a -> s{_ccwmcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwmcUploadType :: Lens' CoursesCourseWorkMaterialsCreate (Maybe Text)
ccwmcUploadType
  = lens _ccwmcUploadType
      (\ s a -> s{_ccwmcUploadType = a})

-- | Multipart request metadata.
ccwmcPayload :: Lens' CoursesCourseWorkMaterialsCreate CourseWorkMaterial
ccwmcPayload
  = lens _ccwmcPayload (\ s a -> s{_ccwmcPayload = a})

-- | JSONP
ccwmcCallback :: Lens' CoursesCourseWorkMaterialsCreate (Maybe Text)
ccwmcCallback
  = lens _ccwmcCallback
      (\ s a -> s{_ccwmcCallback = a})

instance GoogleRequest
           CoursesCourseWorkMaterialsCreate
         where
        type Rs CoursesCourseWorkMaterialsCreate =
             CourseWorkMaterial
        type Scopes CoursesCourseWorkMaterialsCreate =
             '["https://www.googleapis.com/auth/classroom.courseworkmaterials"]
        requestClient CoursesCourseWorkMaterialsCreate'{..}
          = go _ccwmcCourseId _ccwmcXgafv _ccwmcUploadProtocol
              _ccwmcAccessToken
              _ccwmcUploadType
              _ccwmcCallback
              (Just AltJSON)
              _ccwmcPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CoursesCourseWorkMaterialsCreateResource)
                      mempty
