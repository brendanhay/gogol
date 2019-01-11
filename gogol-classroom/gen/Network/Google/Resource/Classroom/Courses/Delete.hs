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
-- Module      : Network.Google.Resource.Classroom.Courses.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested course or for access errors. * \`NOT_FOUND\` if no course
-- exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.delete@.
module Network.Google.Resource.Classroom.Courses.Delete
    (
    -- * REST Resource
      CoursesDeleteResource

    -- * Creating a Request
    , coursesDelete
    , CoursesDelete

    -- * Request Lenses
    , cdXgafv
    , cdUploadProtocol
    , cdAccessToken
    , cdUploadType
    , cdId
    , cdCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.delete@ method which the
-- 'CoursesDelete' request conforms to.
type CoursesDeleteResource =
     "v1" :>
       "courses" :>
         Capture "id" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested course or for access errors. * \`NOT_FOUND\` if no course
-- exists with the requested ID.
--
-- /See:/ 'coursesDelete' smart constructor.
data CoursesDelete = CoursesDelete'
    { _cdXgafv          :: !(Maybe Xgafv)
    , _cdUploadProtocol :: !(Maybe Text)
    , _cdAccessToken    :: !(Maybe Text)
    , _cdUploadType     :: !(Maybe Text)
    , _cdId             :: !Text
    , _cdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdXgafv'
--
-- * 'cdUploadProtocol'
--
-- * 'cdAccessToken'
--
-- * 'cdUploadType'
--
-- * 'cdId'
--
-- * 'cdCallback'
coursesDelete
    :: Text -- ^ 'cdId'
    -> CoursesDelete
coursesDelete pCdId_ =
    CoursesDelete'
    { _cdXgafv = Nothing
    , _cdUploadProtocol = Nothing
    , _cdAccessToken = Nothing
    , _cdUploadType = Nothing
    , _cdId = pCdId_
    , _cdCallback = Nothing
    }

-- | V1 error format.
cdXgafv :: Lens' CoursesDelete (Maybe Xgafv)
cdXgafv = lens _cdXgafv (\ s a -> s{_cdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdUploadProtocol :: Lens' CoursesDelete (Maybe Text)
cdUploadProtocol
  = lens _cdUploadProtocol
      (\ s a -> s{_cdUploadProtocol = a})

-- | OAuth access token.
cdAccessToken :: Lens' CoursesDelete (Maybe Text)
cdAccessToken
  = lens _cdAccessToken
      (\ s a -> s{_cdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdUploadType :: Lens' CoursesDelete (Maybe Text)
cdUploadType
  = lens _cdUploadType (\ s a -> s{_cdUploadType = a})

-- | Identifier of the course to delete. This identifier can be either the
-- Classroom-assigned identifier or an alias.
cdId :: Lens' CoursesDelete Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

-- | JSONP
cdCallback :: Lens' CoursesDelete (Maybe Text)
cdCallback
  = lens _cdCallback (\ s a -> s{_cdCallback = a})

instance GoogleRequest CoursesDelete where
        type Rs CoursesDelete = Empty
        type Scopes CoursesDelete =
             '["https://www.googleapis.com/auth/classroom.courses"]
        requestClient CoursesDelete'{..}
          = go _cdId _cdXgafv _cdUploadProtocol _cdAccessToken
              _cdUploadType
              _cdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient (Proxy :: Proxy CoursesDeleteResource)
                      mempty
