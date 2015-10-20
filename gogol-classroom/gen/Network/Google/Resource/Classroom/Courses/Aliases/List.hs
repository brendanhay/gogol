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
-- Module      : Network.Google.Resource.Classroom.Courses.Aliases.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of aliases for a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to access the course or for access errors. * \`NOT_FOUND\`
-- if the course does not exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.aliases.list@.
module Network.Google.Resource.Classroom.Courses.Aliases.List
    (
    -- * REST Resource
      CoursesAliasesListResource

    -- * Creating a Request
    , coursesAliasesList
    , CoursesAliasesList

    -- * Request Lenses
    , calXgafv
    , calUploadProtocol
    , calPp
    , calCourseId
    , calAccessToken
    , calUploadType
    , calBearerToken
    , calPageToken
    , calPageSize
    , calCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.aliases.list@ method which the
-- 'CoursesAliasesList' request conforms to.
type CoursesAliasesListResource =
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
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" Int32 :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListCourseAliasesResponse

-- | Returns a list of aliases for a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to access the course or for access errors. * \`NOT_FOUND\`
-- if the course does not exist.
--
-- /See:/ 'coursesAliasesList' smart constructor.
data CoursesAliasesList = CoursesAliasesList
    { _calXgafv          :: !(Maybe Text)
    , _calUploadProtocol :: !(Maybe Text)
    , _calPp             :: !Bool
    , _calCourseId       :: !Text
    , _calAccessToken    :: !(Maybe Text)
    , _calUploadType     :: !(Maybe Text)
    , _calBearerToken    :: !(Maybe Text)
    , _calPageToken      :: !(Maybe Text)
    , _calPageSize       :: !(Maybe Int32)
    , _calCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesAliasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calXgafv'
--
-- * 'calUploadProtocol'
--
-- * 'calPp'
--
-- * 'calCourseId'
--
-- * 'calAccessToken'
--
-- * 'calUploadType'
--
-- * 'calBearerToken'
--
-- * 'calPageToken'
--
-- * 'calPageSize'
--
-- * 'calCallback'
coursesAliasesList
    :: Text -- ^ 'calCourseId'
    -> CoursesAliasesList
coursesAliasesList pCalCourseId_ =
    CoursesAliasesList
    { _calXgafv = Nothing
    , _calUploadProtocol = Nothing
    , _calPp = True
    , _calCourseId = pCalCourseId_
    , _calAccessToken = Nothing
    , _calUploadType = Nothing
    , _calBearerToken = Nothing
    , _calPageToken = Nothing
    , _calPageSize = Nothing
    , _calCallback = Nothing
    }

-- | V1 error format.
calXgafv :: Lens' CoursesAliasesList (Maybe Text)
calXgafv = lens _calXgafv (\ s a -> s{_calXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
calUploadProtocol :: Lens' CoursesAliasesList (Maybe Text)
calUploadProtocol
  = lens _calUploadProtocol
      (\ s a -> s{_calUploadProtocol = a})

-- | Pretty-print response.
calPp :: Lens' CoursesAliasesList Bool
calPp = lens _calPp (\ s a -> s{_calPp = a})

-- | The identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
calCourseId :: Lens' CoursesAliasesList Text
calCourseId
  = lens _calCourseId (\ s a -> s{_calCourseId = a})

-- | OAuth access token.
calAccessToken :: Lens' CoursesAliasesList (Maybe Text)
calAccessToken
  = lens _calAccessToken
      (\ s a -> s{_calAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
calUploadType :: Lens' CoursesAliasesList (Maybe Text)
calUploadType
  = lens _calUploadType
      (\ s a -> s{_calUploadType = a})

-- | OAuth bearer token.
calBearerToken :: Lens' CoursesAliasesList (Maybe Text)
calBearerToken
  = lens _calBearerToken
      (\ s a -> s{_calBearerToken = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
calPageToken :: Lens' CoursesAliasesList (Maybe Text)
calPageToken
  = lens _calPageToken (\ s a -> s{_calPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
calPageSize :: Lens' CoursesAliasesList (Maybe Int32)
calPageSize
  = lens _calPageSize (\ s a -> s{_calPageSize = a})

-- | JSONP
calCallback :: Lens' CoursesAliasesList (Maybe Text)
calCallback
  = lens _calCallback (\ s a -> s{_calCallback = a})

instance GoogleRequest CoursesAliasesList where
        type Rs CoursesAliasesList =
             ListCourseAliasesResponse
        requestClient CoursesAliasesList{..}
          = go _calCourseId _calXgafv _calUploadProtocol
              (Just _calPp)
              _calAccessToken
              _calUploadType
              _calBearerToken
              _calPageToken
              _calPageSize
              _calCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesAliasesListResource)
                      mempty
