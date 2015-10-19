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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested course or for access errors. * \`NOT_FOUND\` if no course
-- exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesDelete@.
module Network.Google.Resource.Classroom.Courses.Delete
    (
    -- * REST Resource
      CoursesDeleteResource

    -- * Creating a Request
    , coursesDelete'
    , CoursesDelete'

    -- * Request Lenses
    , cdXgafv
    , cdUploadProtocol
    , cdPp
    , cdAccessToken
    , cdUploadType
    , cdBearerToken
    , cdId
    , cdCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesDelete@ method which the
-- 'CoursesDelete'' request conforms to.
type CoursesDeleteResource =
     "v1" :>
       "courses" :>
         Capture "id" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested course or for access errors. * \`NOT_FOUND\` if no course
-- exists with the requested ID.
--
-- /See:/ 'coursesDelete'' smart constructor.
data CoursesDelete' = CoursesDelete'
    { _cdXgafv          :: !(Maybe Text)
    , _cdUploadProtocol :: !(Maybe Text)
    , _cdPp             :: !Bool
    , _cdAccessToken    :: !(Maybe Text)
    , _cdUploadType     :: !(Maybe Text)
    , _cdBearerToken    :: !(Maybe Text)
    , _cdId             :: !Text
    , _cdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdXgafv'
--
-- * 'cdUploadProtocol'
--
-- * 'cdPp'
--
-- * 'cdAccessToken'
--
-- * 'cdUploadType'
--
-- * 'cdBearerToken'
--
-- * 'cdId'
--
-- * 'cdCallback'
coursesDelete'
    :: Text -- ^ 'id'
    -> CoursesDelete'
coursesDelete' pCdId_ =
    CoursesDelete'
    { _cdXgafv = Nothing
    , _cdUploadProtocol = Nothing
    , _cdPp = True
    , _cdAccessToken = Nothing
    , _cdUploadType = Nothing
    , _cdBearerToken = Nothing
    , _cdId = pCdId_
    , _cdCallback = Nothing
    }

-- | V1 error format.
cdXgafv :: Lens' CoursesDelete' (Maybe Text)
cdXgafv = lens _cdXgafv (\ s a -> s{_cdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cdUploadProtocol :: Lens' CoursesDelete' (Maybe Text)
cdUploadProtocol
  = lens _cdUploadProtocol
      (\ s a -> s{_cdUploadProtocol = a})

-- | Pretty-print response.
cdPp :: Lens' CoursesDelete' Bool
cdPp = lens _cdPp (\ s a -> s{_cdPp = a})

-- | OAuth access token.
cdAccessToken :: Lens' CoursesDelete' (Maybe Text)
cdAccessToken
  = lens _cdAccessToken
      (\ s a -> s{_cdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cdUploadType :: Lens' CoursesDelete' (Maybe Text)
cdUploadType
  = lens _cdUploadType (\ s a -> s{_cdUploadType = a})

-- | OAuth bearer token.
cdBearerToken :: Lens' CoursesDelete' (Maybe Text)
cdBearerToken
  = lens _cdBearerToken
      (\ s a -> s{_cdBearerToken = a})

-- | Identifier of the course to delete. This identifier can be either the
-- Classroom-assigned identifier or an alias.
cdId :: Lens' CoursesDelete' Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

-- | JSONP
cdCallback :: Lens' CoursesDelete' (Maybe Text)
cdCallback
  = lens _cdCallback (\ s a -> s{_cdCallback = a})

instance GoogleRequest CoursesDelete' where
        type Rs CoursesDelete' = Empty
        requestClient CoursesDelete'{..}
          = go _cdId _cdXgafv _cdUploadProtocol (Just _cdPp)
              _cdAccessToken
              _cdUploadType
              _cdBearerToken
              _cdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient (Proxy :: Proxy CoursesDeleteResource)
                      mempty
