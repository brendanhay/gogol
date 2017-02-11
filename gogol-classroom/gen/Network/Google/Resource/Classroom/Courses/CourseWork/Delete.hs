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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a course work. This request must be made by the Developer
-- Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding course work, if the requesting user is
-- not permitted to delete the requested course or for access errors. *
-- \`FAILED_PRECONDITION\` if the requested course work has already been
-- deleted. * \`NOT_FOUND\` if no course exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.delete@.
module Network.Google.Resource.Classroom.Courses.CourseWork.Delete
    (
    -- * REST Resource
      CoursesCourseWorkDeleteResource

    -- * Creating a Request
    , coursesCourseWorkDelete
    , CoursesCourseWorkDelete

    -- * Request Lenses
    , ccwdXgafv
    , ccwdUploadProtocol
    , ccwdPp
    , ccwdCourseId
    , ccwdAccessToken
    , ccwdUploadType
    , ccwdBearerToken
    , ccwdId
    , ccwdCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.delete@ method which the
-- 'CoursesCourseWorkDelete' request conforms to.
type CoursesCourseWorkDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a course work. This request must be made by the Developer
-- Console project of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to create
-- the corresponding course work item. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting developer project
-- did not create the corresponding course work, if the requesting user is
-- not permitted to delete the requested course or for access errors. *
-- \`FAILED_PRECONDITION\` if the requested course work has already been
-- deleted. * \`NOT_FOUND\` if no course exists with the requested ID.
--
-- /See:/ 'coursesCourseWorkDelete' smart constructor.
data CoursesCourseWorkDelete = CoursesCourseWorkDelete'
    { _ccwdXgafv          :: !(Maybe Text)
    , _ccwdUploadProtocol :: !(Maybe Text)
    , _ccwdPp             :: !Bool
    , _ccwdCourseId       :: !Text
    , _ccwdAccessToken    :: !(Maybe Text)
    , _ccwdUploadType     :: !(Maybe Text)
    , _ccwdBearerToken    :: !(Maybe Text)
    , _ccwdId             :: !Text
    , _ccwdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesCourseWorkDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwdXgafv'
--
-- * 'ccwdUploadProtocol'
--
-- * 'ccwdPp'
--
-- * 'ccwdCourseId'
--
-- * 'ccwdAccessToken'
--
-- * 'ccwdUploadType'
--
-- * 'ccwdBearerToken'
--
-- * 'ccwdId'
--
-- * 'ccwdCallback'
coursesCourseWorkDelete
    :: Text -- ^ 'ccwdCourseId'
    -> Text -- ^ 'ccwdId'
    -> CoursesCourseWorkDelete
coursesCourseWorkDelete pCcwdCourseId_ pCcwdId_ =
    CoursesCourseWorkDelete'
    { _ccwdXgafv = Nothing
    , _ccwdUploadProtocol = Nothing
    , _ccwdPp = True
    , _ccwdCourseId = pCcwdCourseId_
    , _ccwdAccessToken = Nothing
    , _ccwdUploadType = Nothing
    , _ccwdBearerToken = Nothing
    , _ccwdId = pCcwdId_
    , _ccwdCallback = Nothing
    }

-- | V1 error format.
ccwdXgafv :: Lens' CoursesCourseWorkDelete (Maybe Text)
ccwdXgafv
  = lens _ccwdXgafv (\ s a -> s{_ccwdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwdUploadProtocol :: Lens' CoursesCourseWorkDelete (Maybe Text)
ccwdUploadProtocol
  = lens _ccwdUploadProtocol
      (\ s a -> s{_ccwdUploadProtocol = a})

-- | Pretty-print response.
ccwdPp :: Lens' CoursesCourseWorkDelete Bool
ccwdPp = lens _ccwdPp (\ s a -> s{_ccwdPp = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwdCourseId :: Lens' CoursesCourseWorkDelete Text
ccwdCourseId
  = lens _ccwdCourseId (\ s a -> s{_ccwdCourseId = a})

-- | OAuth access token.
ccwdAccessToken :: Lens' CoursesCourseWorkDelete (Maybe Text)
ccwdAccessToken
  = lens _ccwdAccessToken
      (\ s a -> s{_ccwdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwdUploadType :: Lens' CoursesCourseWorkDelete (Maybe Text)
ccwdUploadType
  = lens _ccwdUploadType
      (\ s a -> s{_ccwdUploadType = a})

-- | OAuth bearer token.
ccwdBearerToken :: Lens' CoursesCourseWorkDelete (Maybe Text)
ccwdBearerToken
  = lens _ccwdBearerToken
      (\ s a -> s{_ccwdBearerToken = a})

-- | Identifier of the course work to delete. This identifier is a
-- Classroom-assigned identifier.
ccwdId :: Lens' CoursesCourseWorkDelete Text
ccwdId = lens _ccwdId (\ s a -> s{_ccwdId = a})

-- | JSONP
ccwdCallback :: Lens' CoursesCourseWorkDelete (Maybe Text)
ccwdCallback
  = lens _ccwdCallback (\ s a -> s{_ccwdCallback = a})

instance GoogleRequest CoursesCourseWorkDelete where
        type Rs CoursesCourseWorkDelete = Empty
        type Scopes CoursesCourseWorkDelete =
             '["https://www.googleapis.com/auth/classroom.coursework.students"]
        requestClient CoursesCourseWorkDelete'{..}
          = go _ccwdCourseId _ccwdId _ccwdXgafv
              _ccwdUploadProtocol
              (Just _ccwdPp)
              _ccwdAccessToken
              _ccwdUploadType
              _ccwdBearerToken
              _ccwdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesCourseWorkDeleteResource)
                      mempty
