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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a course work material. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to access the requested course or course work material, or for access
-- errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course or course work material does not
-- exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.get@.
module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Get
    (
    -- * REST Resource
      CoursesCourseWorkMaterialsGetResource

    -- * Creating a Request
    , coursesCourseWorkMaterialsGet
    , CoursesCourseWorkMaterialsGet

    -- * Request Lenses
    , ccwmgXgafv
    , ccwmgUploadProtocol
    , ccwmgCourseId
    , ccwmgAccessToken
    , ccwmgUploadType
    , ccwmgId
    , ccwmgCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWorkMaterials.get@ method which the
-- 'CoursesCourseWorkMaterialsGet' request conforms to.
type CoursesCourseWorkMaterialsGetResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWorkMaterials" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] CourseWorkMaterial

-- | Returns a course work material. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to access the requested course or course work material, or for access
-- errors. * \`INVALID_ARGUMENT\` if the request is malformed. *
-- \`NOT_FOUND\` if the requested course or course work material does not
-- exist.
--
-- /See:/ 'coursesCourseWorkMaterialsGet' smart constructor.
data CoursesCourseWorkMaterialsGet =
  CoursesCourseWorkMaterialsGet'
    { _ccwmgXgafv :: !(Maybe Xgafv)
    , _ccwmgUploadProtocol :: !(Maybe Text)
    , _ccwmgCourseId :: !Text
    , _ccwmgAccessToken :: !(Maybe Text)
    , _ccwmgUploadType :: !(Maybe Text)
    , _ccwmgId :: !Text
    , _ccwmgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkMaterialsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwmgXgafv'
--
-- * 'ccwmgUploadProtocol'
--
-- * 'ccwmgCourseId'
--
-- * 'ccwmgAccessToken'
--
-- * 'ccwmgUploadType'
--
-- * 'ccwmgId'
--
-- * 'ccwmgCallback'
coursesCourseWorkMaterialsGet
    :: Text -- ^ 'ccwmgCourseId'
    -> Text -- ^ 'ccwmgId'
    -> CoursesCourseWorkMaterialsGet
coursesCourseWorkMaterialsGet pCcwmgCourseId_ pCcwmgId_ =
  CoursesCourseWorkMaterialsGet'
    { _ccwmgXgafv = Nothing
    , _ccwmgUploadProtocol = Nothing
    , _ccwmgCourseId = pCcwmgCourseId_
    , _ccwmgAccessToken = Nothing
    , _ccwmgUploadType = Nothing
    , _ccwmgId = pCcwmgId_
    , _ccwmgCallback = Nothing
    }


-- | V1 error format.
ccwmgXgafv :: Lens' CoursesCourseWorkMaterialsGet (Maybe Xgafv)
ccwmgXgafv
  = lens _ccwmgXgafv (\ s a -> s{_ccwmgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwmgUploadProtocol :: Lens' CoursesCourseWorkMaterialsGet (Maybe Text)
ccwmgUploadProtocol
  = lens _ccwmgUploadProtocol
      (\ s a -> s{_ccwmgUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwmgCourseId :: Lens' CoursesCourseWorkMaterialsGet Text
ccwmgCourseId
  = lens _ccwmgCourseId
      (\ s a -> s{_ccwmgCourseId = a})

-- | OAuth access token.
ccwmgAccessToken :: Lens' CoursesCourseWorkMaterialsGet (Maybe Text)
ccwmgAccessToken
  = lens _ccwmgAccessToken
      (\ s a -> s{_ccwmgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwmgUploadType :: Lens' CoursesCourseWorkMaterialsGet (Maybe Text)
ccwmgUploadType
  = lens _ccwmgUploadType
      (\ s a -> s{_ccwmgUploadType = a})

-- | Identifier of the course work material.
ccwmgId :: Lens' CoursesCourseWorkMaterialsGet Text
ccwmgId = lens _ccwmgId (\ s a -> s{_ccwmgId = a})

-- | JSONP
ccwmgCallback :: Lens' CoursesCourseWorkMaterialsGet (Maybe Text)
ccwmgCallback
  = lens _ccwmgCallback
      (\ s a -> s{_ccwmgCallback = a})

instance GoogleRequest CoursesCourseWorkMaterialsGet
         where
        type Rs CoursesCourseWorkMaterialsGet =
             CourseWorkMaterial
        type Scopes CoursesCourseWorkMaterialsGet =
             '["https://www.googleapis.com/auth/classroom.courseworkmaterials",
               "https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly"]
        requestClient CoursesCourseWorkMaterialsGet'{..}
          = go _ccwmgCourseId _ccwmgId _ccwmgXgafv
              _ccwmgUploadProtocol
              _ccwmgAccessToken
              _ccwmgUploadType
              _ccwmgCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CoursesCourseWorkMaterialsGetResource)
                      mempty
