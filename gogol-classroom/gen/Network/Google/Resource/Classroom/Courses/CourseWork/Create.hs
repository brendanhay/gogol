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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWork.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates course work. The resulting course work (and corresponding
-- student submissions) are associated with the Developer Console project
-- of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to make
-- the request. Classroom API requests to modify course work and student
-- submissions must be made with an OAuth client ID from the associated
-- Developer Console project. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to access the requested course, create course work in the requested
-- course, share a Drive attachment, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course does not exist. * \`FAILED_PRECONDITION\` for the
-- following request error: * AttachmentNotVisible
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWork.create@.
module Network.Google.Resource.Classroom.Courses.CourseWork.Create
    (
    -- * REST Resource
      CoursesCourseWorkCreateResource

    -- * Creating a Request
    , coursesCourseWorkCreate
    , CoursesCourseWorkCreate

    -- * Request Lenses
    , ccwcXgafv
    , ccwcUploadProtocol
    , ccwcCourseId
    , ccwcAccessToken
    , ccwcUploadType
    , ccwcPayload
    , ccwcCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWork.create@ method which the
-- 'CoursesCourseWorkCreate' request conforms to.
type CoursesCourseWorkCreateResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWork" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] CourseWork :> Post '[JSON] CourseWork

-- | Creates course work. The resulting course work (and corresponding
-- student submissions) are associated with the Developer Console project
-- of the [OAuth client
-- ID](https:\/\/support.google.com\/cloud\/answer\/6158849) used to make
-- the request. Classroom API requests to modify course work and student
-- submissions must be made with an OAuth client ID from the associated
-- Developer Console project. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to access the requested course, create course work in the requested
-- course, share a Drive attachment, or for access errors. *
-- \`INVALID_ARGUMENT\` if the request is malformed. * \`NOT_FOUND\` if the
-- requested course does not exist. * \`FAILED_PRECONDITION\` for the
-- following request error: * AttachmentNotVisible
--
-- /See:/ 'coursesCourseWorkCreate' smart constructor.
data CoursesCourseWorkCreate = CoursesCourseWorkCreate'
    { _ccwcXgafv          :: !(Maybe Xgafv)
    , _ccwcUploadProtocol :: !(Maybe Text)
    , _ccwcCourseId       :: !Text
    , _ccwcAccessToken    :: !(Maybe Text)
    , _ccwcUploadType     :: !(Maybe Text)
    , _ccwcPayload        :: !CourseWork
    , _ccwcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesCourseWorkCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwcXgafv'
--
-- * 'ccwcUploadProtocol'
--
-- * 'ccwcCourseId'
--
-- * 'ccwcAccessToken'
--
-- * 'ccwcUploadType'
--
-- * 'ccwcPayload'
--
-- * 'ccwcCallback'
coursesCourseWorkCreate
    :: Text -- ^ 'ccwcCourseId'
    -> CourseWork -- ^ 'ccwcPayload'
    -> CoursesCourseWorkCreate
coursesCourseWorkCreate pCcwcCourseId_ pCcwcPayload_ =
    CoursesCourseWorkCreate'
    { _ccwcXgafv = Nothing
    , _ccwcUploadProtocol = Nothing
    , _ccwcCourseId = pCcwcCourseId_
    , _ccwcAccessToken = Nothing
    , _ccwcUploadType = Nothing
    , _ccwcPayload = pCcwcPayload_
    , _ccwcCallback = Nothing
    }

-- | V1 error format.
ccwcXgafv :: Lens' CoursesCourseWorkCreate (Maybe Xgafv)
ccwcXgafv
  = lens _ccwcXgafv (\ s a -> s{_ccwcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwcUploadProtocol :: Lens' CoursesCourseWorkCreate (Maybe Text)
ccwcUploadProtocol
  = lens _ccwcUploadProtocol
      (\ s a -> s{_ccwcUploadProtocol = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwcCourseId :: Lens' CoursesCourseWorkCreate Text
ccwcCourseId
  = lens _ccwcCourseId (\ s a -> s{_ccwcCourseId = a})

-- | OAuth access token.
ccwcAccessToken :: Lens' CoursesCourseWorkCreate (Maybe Text)
ccwcAccessToken
  = lens _ccwcAccessToken
      (\ s a -> s{_ccwcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwcUploadType :: Lens' CoursesCourseWorkCreate (Maybe Text)
ccwcUploadType
  = lens _ccwcUploadType
      (\ s a -> s{_ccwcUploadType = a})

-- | Multipart request metadata.
ccwcPayload :: Lens' CoursesCourseWorkCreate CourseWork
ccwcPayload
  = lens _ccwcPayload (\ s a -> s{_ccwcPayload = a})

-- | JSONP
ccwcCallback :: Lens' CoursesCourseWorkCreate (Maybe Text)
ccwcCallback
  = lens _ccwcCallback (\ s a -> s{_ccwcCallback = a})

instance GoogleRequest CoursesCourseWorkCreate where
        type Rs CoursesCourseWorkCreate = CourseWork
        type Scopes CoursesCourseWorkCreate =
             '["https://www.googleapis.com/auth/classroom.coursework.students"]
        requestClient CoursesCourseWorkCreate'{..}
          = go _ccwcCourseId _ccwcXgafv _ccwcUploadProtocol
              _ccwcAccessToken
              _ccwcUploadType
              _ccwcCallback
              (Just AltJSON)
              _ccwcPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesCourseWorkCreateResource)
                      mempty
