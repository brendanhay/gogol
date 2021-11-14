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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a course work material. This request must be made by the
-- Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work material item. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting
-- developer project did not create the corresponding course work material,
-- if the requesting user is not permitted to delete the requested course
-- or for access errors. * \`FAILED_PRECONDITION\` if the requested course
-- work material has already been deleted. * \`NOT_FOUND\` if no course
-- exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.delete@.
module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.Delete
    (
    -- * REST Resource
      CoursesCourseWorkMaterialsDeleteResource

    -- * Creating a Request
    , coursesCourseWorkMaterialsDelete
    , CoursesCourseWorkMaterialsDelete

    -- * Request Lenses
    , ccwmdXgafv
    , ccwmdUploadProtocol
    , ccwmdCourseId
    , ccwmdAccessToken
    , ccwmdUploadType
    , ccwmdId
    , ccwmdCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWorkMaterials.delete@ method which the
-- 'CoursesCourseWorkMaterialsDelete' request conforms to.
type CoursesCourseWorkMaterialsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a course work material. This request must be made by the
-- Developer Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work material item. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting
-- developer project did not create the corresponding course work material,
-- if the requesting user is not permitted to delete the requested course
-- or for access errors. * \`FAILED_PRECONDITION\` if the requested course
-- work material has already been deleted. * \`NOT_FOUND\` if no course
-- exists with the requested ID.
--
-- /See:/ 'coursesCourseWorkMaterialsDelete' smart constructor.
data CoursesCourseWorkMaterialsDelete =
  CoursesCourseWorkMaterialsDelete'
    { _ccwmdXgafv :: !(Maybe Xgafv)
    , _ccwmdUploadProtocol :: !(Maybe Text)
    , _ccwmdCourseId :: !Text
    , _ccwmdAccessToken :: !(Maybe Text)
    , _ccwmdUploadType :: !(Maybe Text)
    , _ccwmdId :: !Text
    , _ccwmdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkMaterialsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwmdXgafv'
--
-- * 'ccwmdUploadProtocol'
--
-- * 'ccwmdCourseId'
--
-- * 'ccwmdAccessToken'
--
-- * 'ccwmdUploadType'
--
-- * 'ccwmdId'
--
-- * 'ccwmdCallback'
coursesCourseWorkMaterialsDelete
    :: Text -- ^ 'ccwmdCourseId'
    -> Text -- ^ 'ccwmdId'
    -> CoursesCourseWorkMaterialsDelete
coursesCourseWorkMaterialsDelete pCcwmdCourseId_ pCcwmdId_ =
  CoursesCourseWorkMaterialsDelete'
    { _ccwmdXgafv = Nothing
    , _ccwmdUploadProtocol = Nothing
    , _ccwmdCourseId = pCcwmdCourseId_
    , _ccwmdAccessToken = Nothing
    , _ccwmdUploadType = Nothing
    , _ccwmdId = pCcwmdId_
    , _ccwmdCallback = Nothing
    }


-- | V1 error format.
ccwmdXgafv :: Lens' CoursesCourseWorkMaterialsDelete (Maybe Xgafv)
ccwmdXgafv
  = lens _ccwmdXgafv (\ s a -> s{_ccwmdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwmdUploadProtocol :: Lens' CoursesCourseWorkMaterialsDelete (Maybe Text)
ccwmdUploadProtocol
  = lens _ccwmdUploadProtocol
      (\ s a -> s{_ccwmdUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwmdCourseId :: Lens' CoursesCourseWorkMaterialsDelete Text
ccwmdCourseId
  = lens _ccwmdCourseId
      (\ s a -> s{_ccwmdCourseId = a})

-- | OAuth access token.
ccwmdAccessToken :: Lens' CoursesCourseWorkMaterialsDelete (Maybe Text)
ccwmdAccessToken
  = lens _ccwmdAccessToken
      (\ s a -> s{_ccwmdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwmdUploadType :: Lens' CoursesCourseWorkMaterialsDelete (Maybe Text)
ccwmdUploadType
  = lens _ccwmdUploadType
      (\ s a -> s{_ccwmdUploadType = a})

-- | Identifier of the course work material to delete. This identifier is a
-- Classroom-assigned identifier.
ccwmdId :: Lens' CoursesCourseWorkMaterialsDelete Text
ccwmdId = lens _ccwmdId (\ s a -> s{_ccwmdId = a})

-- | JSONP
ccwmdCallback :: Lens' CoursesCourseWorkMaterialsDelete (Maybe Text)
ccwmdCallback
  = lens _ccwmdCallback
      (\ s a -> s{_ccwmdCallback = a})

instance GoogleRequest
           CoursesCourseWorkMaterialsDelete
         where
        type Rs CoursesCourseWorkMaterialsDelete = Empty
        type Scopes CoursesCourseWorkMaterialsDelete =
             '["https://www.googleapis.com/auth/classroom.courseworkmaterials"]
        requestClient CoursesCourseWorkMaterialsDelete'{..}
          = go _ccwmdCourseId _ccwmdId _ccwmdXgafv
              _ccwmdUploadProtocol
              _ccwmdAccessToken
              _ccwmdUploadType
              _ccwmdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CoursesCourseWorkMaterialsDeleteResource)
                      mempty
