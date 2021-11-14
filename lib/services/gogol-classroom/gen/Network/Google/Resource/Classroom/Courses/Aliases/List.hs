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
-- Copyright   : (c) 2015-2021 Brendan Hay
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
    , calaXgafv
    , calaUploadProtocol
    , calaCourseId
    , calaAccessToken
    , calaUploadType
    , calaPageToken
    , calaPageSize
    , calaCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.aliases.list@ method which the
-- 'CoursesAliasesList' request conforms to.
type CoursesAliasesListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListCourseAliasesResponse

-- | Returns a list of aliases for a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to access the course or for access errors. * \`NOT_FOUND\`
-- if the course does not exist.
--
-- /See:/ 'coursesAliasesList' smart constructor.
data CoursesAliasesList =
  CoursesAliasesList'
    { _calaXgafv :: !(Maybe Xgafv)
    , _calaUploadProtocol :: !(Maybe Text)
    , _calaCourseId :: !Text
    , _calaAccessToken :: !(Maybe Text)
    , _calaUploadType :: !(Maybe Text)
    , _calaPageToken :: !(Maybe Text)
    , _calaPageSize :: !(Maybe (Textual Int32))
    , _calaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesAliasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calaXgafv'
--
-- * 'calaUploadProtocol'
--
-- * 'calaCourseId'
--
-- * 'calaAccessToken'
--
-- * 'calaUploadType'
--
-- * 'calaPageToken'
--
-- * 'calaPageSize'
--
-- * 'calaCallback'
coursesAliasesList
    :: Text -- ^ 'calaCourseId'
    -> CoursesAliasesList
coursesAliasesList pCalaCourseId_ =
  CoursesAliasesList'
    { _calaXgafv = Nothing
    , _calaUploadProtocol = Nothing
    , _calaCourseId = pCalaCourseId_
    , _calaAccessToken = Nothing
    , _calaUploadType = Nothing
    , _calaPageToken = Nothing
    , _calaPageSize = Nothing
    , _calaCallback = Nothing
    }


-- | V1 error format.
calaXgafv :: Lens' CoursesAliasesList (Maybe Xgafv)
calaXgafv
  = lens _calaXgafv (\ s a -> s{_calaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
calaUploadProtocol :: Lens' CoursesAliasesList (Maybe Text)
calaUploadProtocol
  = lens _calaUploadProtocol
      (\ s a -> s{_calaUploadProtocol = a})

-- | The identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
calaCourseId :: Lens' CoursesAliasesList Text
calaCourseId
  = lens _calaCourseId (\ s a -> s{_calaCourseId = a})

-- | OAuth access token.
calaAccessToken :: Lens' CoursesAliasesList (Maybe Text)
calaAccessToken
  = lens _calaAccessToken
      (\ s a -> s{_calaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
calaUploadType :: Lens' CoursesAliasesList (Maybe Text)
calaUploadType
  = lens _calaUploadType
      (\ s a -> s{_calaUploadType = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
calaPageToken :: Lens' CoursesAliasesList (Maybe Text)
calaPageToken
  = lens _calaPageToken
      (\ s a -> s{_calaPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
calaPageSize :: Lens' CoursesAliasesList (Maybe Int32)
calaPageSize
  = lens _calaPageSize (\ s a -> s{_calaPageSize = a})
      . mapping _Coerce

-- | JSONP
calaCallback :: Lens' CoursesAliasesList (Maybe Text)
calaCallback
  = lens _calaCallback (\ s a -> s{_calaCallback = a})

instance GoogleRequest CoursesAliasesList where
        type Rs CoursesAliasesList =
             ListCourseAliasesResponse
        type Scopes CoursesAliasesList =
             '["https://www.googleapis.com/auth/classroom.courses",
               "https://www.googleapis.com/auth/classroom.courses.readonly"]
        requestClient CoursesAliasesList'{..}
          = go _calaCourseId _calaXgafv _calaUploadProtocol
              _calaAccessToken
              _calaUploadType
              _calaPageToken
              _calaPageSize
              _calaCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesAliasesListResource)
                      mempty
