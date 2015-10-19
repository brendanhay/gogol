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
-- Module      : Network.Google.Resource.Classroom.Courses.Aliases.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an alias for a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create the alias or for access errors. * \`NOT_FOUND\` if the course
-- does not exist. * \`ALREADY_EXISTS\` if the alias already exists.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.aliases.create@.
module Network.Google.Resource.Classroom.Courses.Aliases.Create
    (
    -- * REST Resource
      CoursesAliasesCreateResource

    -- * Creating a Request
    , coursesAliasesCreate'
    , CoursesAliasesCreate'

    -- * Request Lenses
    , cacXgafv
    , cacUploadProtocol
    , cacPp
    , cacCourseId
    , cacAccessToken
    , cacUploadType
    , cacPayload
    , cacBearerToken
    , cacCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.aliases.create@ method which the
-- 'CoursesAliasesCreate'' request conforms to.
type CoursesAliasesCreateResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
             QueryParam "$.xgafv" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] CourseAlias :>
                               Post '[JSON] CourseAlias

-- | Creates an alias for a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to create the alias or for access errors. * \`NOT_FOUND\` if the course
-- does not exist. * \`ALREADY_EXISTS\` if the alias already exists.
--
-- /See:/ 'coursesAliasesCreate'' smart constructor.
data CoursesAliasesCreate' = CoursesAliasesCreate'
    { _cacXgafv          :: !(Maybe Text)
    , _cacUploadProtocol :: !(Maybe Text)
    , _cacPp             :: !Bool
    , _cacCourseId       :: !Text
    , _cacAccessToken    :: !(Maybe Text)
    , _cacUploadType     :: !(Maybe Text)
    , _cacPayload        :: !CourseAlias
    , _cacBearerToken    :: !(Maybe Text)
    , _cacCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesAliasesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cacXgafv'
--
-- * 'cacUploadProtocol'
--
-- * 'cacPp'
--
-- * 'cacCourseId'
--
-- * 'cacAccessToken'
--
-- * 'cacUploadType'
--
-- * 'cacPayload'
--
-- * 'cacBearerToken'
--
-- * 'cacCallback'
coursesAliasesCreate'
    :: Text -- ^ 'cacCourseId'
    -> CourseAlias -- ^ 'cacPayload'
    -> CoursesAliasesCreate'
coursesAliasesCreate' pCacCourseId_ pCacPayload_ =
    CoursesAliasesCreate'
    { _cacXgafv = Nothing
    , _cacUploadProtocol = Nothing
    , _cacPp = True
    , _cacCourseId = pCacCourseId_
    , _cacAccessToken = Nothing
    , _cacUploadType = Nothing
    , _cacPayload = pCacPayload_
    , _cacBearerToken = Nothing
    , _cacCallback = Nothing
    }

-- | V1 error format.
cacXgafv :: Lens' CoursesAliasesCreate' (Maybe Text)
cacXgafv = lens _cacXgafv (\ s a -> s{_cacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cacUploadProtocol :: Lens' CoursesAliasesCreate' (Maybe Text)
cacUploadProtocol
  = lens _cacUploadProtocol
      (\ s a -> s{_cacUploadProtocol = a})

-- | Pretty-print response.
cacPp :: Lens' CoursesAliasesCreate' Bool
cacPp = lens _cacPp (\ s a -> s{_cacPp = a})

-- | Identifier of the course to alias. This identifier can be either the
-- Classroom-assigned identifier or an alias.
cacCourseId :: Lens' CoursesAliasesCreate' Text
cacCourseId
  = lens _cacCourseId (\ s a -> s{_cacCourseId = a})

-- | OAuth access token.
cacAccessToken :: Lens' CoursesAliasesCreate' (Maybe Text)
cacAccessToken
  = lens _cacAccessToken
      (\ s a -> s{_cacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cacUploadType :: Lens' CoursesAliasesCreate' (Maybe Text)
cacUploadType
  = lens _cacUploadType
      (\ s a -> s{_cacUploadType = a})

-- | Multipart request metadata.
cacPayload :: Lens' CoursesAliasesCreate' CourseAlias
cacPayload
  = lens _cacPayload (\ s a -> s{_cacPayload = a})

-- | OAuth bearer token.
cacBearerToken :: Lens' CoursesAliasesCreate' (Maybe Text)
cacBearerToken
  = lens _cacBearerToken
      (\ s a -> s{_cacBearerToken = a})

-- | JSONP
cacCallback :: Lens' CoursesAliasesCreate' (Maybe Text)
cacCallback
  = lens _cacCallback (\ s a -> s{_cacCallback = a})

instance GoogleRequest CoursesAliasesCreate' where
        type Rs CoursesAliasesCreate' = CourseAlias
        requestClient CoursesAliasesCreate'{..}
          = go _cacCourseId _cacXgafv _cacUploadProtocol
              (Just _cacPp)
              _cacAccessToken
              _cacUploadType
              _cacBearerToken
              _cacCallback
              (Just AltJSON)
              _cacPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesAliasesCreateResource)
                      mempty
