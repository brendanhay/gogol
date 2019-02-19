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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns course work. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or course work, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course or course work does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.get@.
module Network.Google.Resource.Classroom.Courses.CourseWork.Get
    (
    -- * REST Resource
      CoursesCourseWorkGetResource

    -- * Creating a Request
    , coursesCourseWorkGet
    , CoursesCourseWorkGet

    -- * Request Lenses
    , ccwgXgafv
    , ccwgUploadProtocol
    , ccwgCourseId
    , ccwgAccessToken
    , ccwgUploadType
    , ccwgId
    , ccwgCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.get@ method which the
-- 'CoursesCourseWorkGet' request conforms to.
type CoursesCourseWorkGetResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             Capture "id" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] CourseWork

-- | Returns course work. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or course work, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course or course work does not exist.
--
-- /See:/ 'coursesCourseWorkGet' smart constructor.
data CoursesCourseWorkGet =
  CoursesCourseWorkGet'
    { _ccwgXgafv          :: !(Maybe Xgafv)
    , _ccwgUploadProtocol :: !(Maybe Text)
    , _ccwgCourseId       :: !Text
    , _ccwgAccessToken    :: !(Maybe Text)
    , _ccwgUploadType     :: !(Maybe Text)
    , _ccwgId             :: !Text
    , _ccwgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwgXgafv'
--
-- * 'ccwgUploadProtocol'
--
-- * 'ccwgCourseId'
--
-- * 'ccwgAccessToken'
--
-- * 'ccwgUploadType'
--
-- * 'ccwgId'
--
-- * 'ccwgCallback'
coursesCourseWorkGet
    :: Text -- ^ 'ccwgCourseId'
    -> Text -- ^ 'ccwgId'
    -> CoursesCourseWorkGet
coursesCourseWorkGet pCcwgCourseId_ pCcwgId_ =
  CoursesCourseWorkGet'
    { _ccwgXgafv = Nothing
    , _ccwgUploadProtocol = Nothing
    , _ccwgCourseId = pCcwgCourseId_
    , _ccwgAccessToken = Nothing
    , _ccwgUploadType = Nothing
    , _ccwgId = pCcwgId_
    , _ccwgCallback = Nothing
    }


-- | V1 error format.
ccwgXgafv :: Lens' CoursesCourseWorkGet (Maybe Xgafv)
ccwgXgafv
  = lens _ccwgXgafv (\ s a -> s{_ccwgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwgUploadProtocol :: Lens' CoursesCourseWorkGet (Maybe Text)
ccwgUploadProtocol
  = lens _ccwgUploadProtocol
      (\ s a -> s{_ccwgUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwgCourseId :: Lens' CoursesCourseWorkGet Text
ccwgCourseId
  = lens _ccwgCourseId (\ s a -> s{_ccwgCourseId = a})

-- | OAuth access token.
ccwgAccessToken :: Lens' CoursesCourseWorkGet (Maybe Text)
ccwgAccessToken
  = lens _ccwgAccessToken
      (\ s a -> s{_ccwgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwgUploadType :: Lens' CoursesCourseWorkGet (Maybe Text)
ccwgUploadType
  = lens _ccwgUploadType
      (\ s a -> s{_ccwgUploadType = a})

-- | Identifier of the course work.
ccwgId :: Lens' CoursesCourseWorkGet Text
ccwgId = lens _ccwgId (\ s a -> s{_ccwgId = a})

-- | JSONP
ccwgCallback :: Lens' CoursesCourseWorkGet (Maybe Text)
ccwgCallback
  = lens _ccwgCallback (\ s a -> s{_ccwgCallback = a})

instance GoogleRequest CoursesCourseWorkGet where
        type Rs CoursesCourseWorkGet = CourseWork
        type Scopes CoursesCourseWorkGet =
             '["https://www.googleapis.com/auth/classroom.coursework.me",
               "https://www.googleapis.com/auth/classroom.coursework.me.readonly",
               "https://www.googleapis.com/auth/classroom.coursework.students",
               "https://www.googleapis.com/auth/classroom.coursework.students.readonly"]
        requestClient CoursesCourseWorkGet'{..}
          = go _ccwgCourseId _ccwgId _ccwgXgafv
              _ccwgUploadProtocol
              _ccwgAccessToken
              _ccwgUploadType
              _ccwgCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesCourseWorkGetResource)
                      mempty
