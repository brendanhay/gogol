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
-- Module      : Network.Google.Resource.Classroom.Courses.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a course. The user specified in \`ownerId\` is the owner of the
-- created course and added as a teacher. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to create courses or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the primary teacher is not a
-- valid user. * \`FAILED_PRECONDITION\` if the course owner\'s account is
-- disabled. * \`ALREADY_EXISTS\` if an alias was specified in the \`id\`
-- and already exists.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesCreate@.
module Network.Google.Resource.Classroom.Courses.Create
    (
    -- * REST Resource
      CoursesCreateResource

    -- * Creating a Request
    , coursesCreate'
    , CoursesCreate'

    -- * Request Lenses
    , ccXgafv
    , ccUploadProtocol
    , ccPp
    , ccAccessToken
    , ccUploadType
    , ccPayload
    , ccBearerToken
    , ccCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesCreate@ method which the
-- 'CoursesCreate'' request conforms to.
type CoursesCreateResource =
     "v1" :>
       "courses" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Course :> Post '[JSON] Course

-- | Creates a course. The user specified in \`ownerId\` is the owner of the
-- created course and added as a teacher. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to create courses or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if the primary teacher is not a
-- valid user. * \`FAILED_PRECONDITION\` if the course owner\'s account is
-- disabled. * \`ALREADY_EXISTS\` if an alias was specified in the \`id\`
-- and already exists.
--
-- /See:/ 'coursesCreate'' smart constructor.
data CoursesCreate' = CoursesCreate'
    { _ccXgafv          :: !(Maybe Text)
    , _ccUploadProtocol :: !(Maybe Text)
    , _ccPp             :: !Bool
    , _ccAccessToken    :: !(Maybe Text)
    , _ccUploadType     :: !(Maybe Text)
    , _ccPayload        :: !Course
    , _ccBearerToken    :: !(Maybe Text)
    , _ccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccXgafv'
--
-- * 'ccUploadProtocol'
--
-- * 'ccPp'
--
-- * 'ccAccessToken'
--
-- * 'ccUploadType'
--
-- * 'ccPayload'
--
-- * 'ccBearerToken'
--
-- * 'ccCallback'
coursesCreate'
    :: Course -- ^ 'payload'
    -> CoursesCreate'
coursesCreate' pCcPayload_ =
    CoursesCreate'
    { _ccXgafv = Nothing
    , _ccUploadProtocol = Nothing
    , _ccPp = True
    , _ccAccessToken = Nothing
    , _ccUploadType = Nothing
    , _ccPayload = pCcPayload_
    , _ccBearerToken = Nothing
    , _ccCallback = Nothing
    }

-- | V1 error format.
ccXgafv :: Lens' CoursesCreate' (Maybe Text)
ccXgafv = lens _ccXgafv (\ s a -> s{_ccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccUploadProtocol :: Lens' CoursesCreate' (Maybe Text)
ccUploadProtocol
  = lens _ccUploadProtocol
      (\ s a -> s{_ccUploadProtocol = a})

-- | Pretty-print response.
ccPp :: Lens' CoursesCreate' Bool
ccPp = lens _ccPp (\ s a -> s{_ccPp = a})

-- | OAuth access token.
ccAccessToken :: Lens' CoursesCreate' (Maybe Text)
ccAccessToken
  = lens _ccAccessToken
      (\ s a -> s{_ccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccUploadType :: Lens' CoursesCreate' (Maybe Text)
ccUploadType
  = lens _ccUploadType (\ s a -> s{_ccUploadType = a})

-- | Multipart request metadata.
ccPayload :: Lens' CoursesCreate' Course
ccPayload
  = lens _ccPayload (\ s a -> s{_ccPayload = a})

-- | OAuth bearer token.
ccBearerToken :: Lens' CoursesCreate' (Maybe Text)
ccBearerToken
  = lens _ccBearerToken
      (\ s a -> s{_ccBearerToken = a})

-- | JSONP
ccCallback :: Lens' CoursesCreate' (Maybe Text)
ccCallback
  = lens _ccCallback (\ s a -> s{_ccCallback = a})

instance GoogleRequest CoursesCreate' where
        type Rs CoursesCreate' = Course
        requestClient CoursesCreate'{..}
          = go _ccXgafv _ccUploadProtocol (Just _ccPp)
              _ccAccessToken
              _ccUploadType
              _ccBearerToken
              _ccCallback
              (Just AltJSON)
              _ccPayload
              classroomService
          where go
                  = buildClient (Proxy :: Proxy CoursesCreateResource)
                      mempty
