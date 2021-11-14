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
-- Module      : Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of course work material that the requester is permitted
-- to view. Course students may only view \`PUBLISHED\` course work
-- material. Course teachers and domain administrators may view all course
-- work material. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or for access errors. * \`INVALID_ARGUMENT\` if the
-- request is malformed. * \`NOT_FOUND\` if the requested course does not
-- exist.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.courseWorkMaterials.list@.
module Network.Google.Resource.Classroom.Courses.CourseWorkMaterials.List
    (
    -- * REST Resource
      CoursesCourseWorkMaterialsListResource

    -- * Creating a Request
    , coursesCourseWorkMaterialsList
    , CoursesCourseWorkMaterialsList

    -- * Request Lenses
    , ccwmlXgafv
    , ccwmlMaterialDriveId
    , ccwmlUploadProtocol
    , ccwmlOrderBy
    , ccwmlCourseId
    , ccwmlAccessToken
    , ccwmlMaterialLink
    , ccwmlCourseWorkMaterialStates
    , ccwmlUploadType
    , ccwmlPageToken
    , ccwmlPageSize
    , ccwmlCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.courses.courseWorkMaterials.list@ method which the
-- 'CoursesCourseWorkMaterialsList' request conforms to.
type CoursesCourseWorkMaterialsListResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "courseWorkMaterials" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "materialDriveId" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "orderBy" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "materialLink" Text :>
                         QueryParams "courseWorkMaterialStates"
                           CoursesCourseWorkMaterialsListCourseWorkMaterialStates
                           :>
                           QueryParam "uploadType" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListCourseWorkMaterialResponse

-- | Returns a list of course work material that the requester is permitted
-- to view. Course students may only view \`PUBLISHED\` course work
-- material. Course teachers and domain administrators may view all course
-- work material. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or for access errors. * \`INVALID_ARGUMENT\` if the
-- request is malformed. * \`NOT_FOUND\` if the requested course does not
-- exist.
--
-- /See:/ 'coursesCourseWorkMaterialsList' smart constructor.
data CoursesCourseWorkMaterialsList =
  CoursesCourseWorkMaterialsList'
    { _ccwmlXgafv :: !(Maybe Xgafv)
    , _ccwmlMaterialDriveId :: !(Maybe Text)
    , _ccwmlUploadProtocol :: !(Maybe Text)
    , _ccwmlOrderBy :: !(Maybe Text)
    , _ccwmlCourseId :: !Text
    , _ccwmlAccessToken :: !(Maybe Text)
    , _ccwmlMaterialLink :: !(Maybe Text)
    , _ccwmlCourseWorkMaterialStates :: !(Maybe [CoursesCourseWorkMaterialsListCourseWorkMaterialStates])
    , _ccwmlUploadType :: !(Maybe Text)
    , _ccwmlPageToken :: !(Maybe Text)
    , _ccwmlPageSize :: !(Maybe (Textual Int32))
    , _ccwmlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesCourseWorkMaterialsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccwmlXgafv'
--
-- * 'ccwmlMaterialDriveId'
--
-- * 'ccwmlUploadProtocol'
--
-- * 'ccwmlOrderBy'
--
-- * 'ccwmlCourseId'
--
-- * 'ccwmlAccessToken'
--
-- * 'ccwmlMaterialLink'
--
-- * 'ccwmlCourseWorkMaterialStates'
--
-- * 'ccwmlUploadType'
--
-- * 'ccwmlPageToken'
--
-- * 'ccwmlPageSize'
--
-- * 'ccwmlCallback'
coursesCourseWorkMaterialsList
    :: Text -- ^ 'ccwmlCourseId'
    -> CoursesCourseWorkMaterialsList
coursesCourseWorkMaterialsList pCcwmlCourseId_ =
  CoursesCourseWorkMaterialsList'
    { _ccwmlXgafv = Nothing
    , _ccwmlMaterialDriveId = Nothing
    , _ccwmlUploadProtocol = Nothing
    , _ccwmlOrderBy = Nothing
    , _ccwmlCourseId = pCcwmlCourseId_
    , _ccwmlAccessToken = Nothing
    , _ccwmlMaterialLink = Nothing
    , _ccwmlCourseWorkMaterialStates = Nothing
    , _ccwmlUploadType = Nothing
    , _ccwmlPageToken = Nothing
    , _ccwmlPageSize = Nothing
    , _ccwmlCallback = Nothing
    }


-- | V1 error format.
ccwmlXgafv :: Lens' CoursesCourseWorkMaterialsList (Maybe Xgafv)
ccwmlXgafv
  = lens _ccwmlXgafv (\ s a -> s{_ccwmlXgafv = a})

-- | Optional filtering for course work material with at least one Drive
-- material whose ID matches the provided string. If \`material_link\` is
-- also specified, course work material must have materials matching both
-- filters.
ccwmlMaterialDriveId :: Lens' CoursesCourseWorkMaterialsList (Maybe Text)
ccwmlMaterialDriveId
  = lens _ccwmlMaterialDriveId
      (\ s a -> s{_ccwmlMaterialDriveId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccwmlUploadProtocol :: Lens' CoursesCourseWorkMaterialsList (Maybe Text)
ccwmlUploadProtocol
  = lens _ccwmlUploadProtocol
      (\ s a -> s{_ccwmlUploadProtocol = a})

-- | Optional sort ordering for results. A comma-separated list of fields
-- with an optional sort direction keyword. Supported field is
-- \`updateTime\`. Supported direction keywords are \`asc\` and \`desc\`.
-- If not specified, \`updateTime desc\` is the default behavior. Examples:
-- \`updateTime asc\`, \`updateTime\`
ccwmlOrderBy :: Lens' CoursesCourseWorkMaterialsList (Maybe Text)
ccwmlOrderBy
  = lens _ccwmlOrderBy (\ s a -> s{_ccwmlOrderBy = a})

-- | Identifier of the course. This identifier can be either the
-- Classroom-assigned identifier or an alias.
ccwmlCourseId :: Lens' CoursesCourseWorkMaterialsList Text
ccwmlCourseId
  = lens _ccwmlCourseId
      (\ s a -> s{_ccwmlCourseId = a})

-- | OAuth access token.
ccwmlAccessToken :: Lens' CoursesCourseWorkMaterialsList (Maybe Text)
ccwmlAccessToken
  = lens _ccwmlAccessToken
      (\ s a -> s{_ccwmlAccessToken = a})

-- | Optional filtering for course work material with at least one link
-- material whose URL partially matches the provided string.
ccwmlMaterialLink :: Lens' CoursesCourseWorkMaterialsList (Maybe Text)
ccwmlMaterialLink
  = lens _ccwmlMaterialLink
      (\ s a -> s{_ccwmlMaterialLink = a})

-- | Restriction on the work status to return. Only course work material that
-- matches is returned. If unspecified, items with a work status of
-- \`PUBLISHED\` is returned.
ccwmlCourseWorkMaterialStates :: Lens' CoursesCourseWorkMaterialsList [CoursesCourseWorkMaterialsListCourseWorkMaterialStates]
ccwmlCourseWorkMaterialStates
  = lens _ccwmlCourseWorkMaterialStates
      (\ s a -> s{_ccwmlCourseWorkMaterialStates = a})
      . _Default
      . _Coerce

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccwmlUploadType :: Lens' CoursesCourseWorkMaterialsList (Maybe Text)
ccwmlUploadType
  = lens _ccwmlUploadType
      (\ s a -> s{_ccwmlUploadType = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
ccwmlPageToken :: Lens' CoursesCourseWorkMaterialsList (Maybe Text)
ccwmlPageToken
  = lens _ccwmlPageToken
      (\ s a -> s{_ccwmlPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
ccwmlPageSize :: Lens' CoursesCourseWorkMaterialsList (Maybe Int32)
ccwmlPageSize
  = lens _ccwmlPageSize
      (\ s a -> s{_ccwmlPageSize = a})
      . mapping _Coerce

-- | JSONP
ccwmlCallback :: Lens' CoursesCourseWorkMaterialsList (Maybe Text)
ccwmlCallback
  = lens _ccwmlCallback
      (\ s a -> s{_ccwmlCallback = a})

instance GoogleRequest CoursesCourseWorkMaterialsList
         where
        type Rs CoursesCourseWorkMaterialsList =
             ListCourseWorkMaterialResponse
        type Scopes CoursesCourseWorkMaterialsList =
             '["https://www.googleapis.com/auth/classroom.courseworkmaterials",
               "https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly"]
        requestClient CoursesCourseWorkMaterialsList'{..}
          = go _ccwmlCourseId _ccwmlXgafv _ccwmlMaterialDriveId
              _ccwmlUploadProtocol
              _ccwmlOrderBy
              _ccwmlAccessToken
              _ccwmlMaterialLink
              (_ccwmlCourseWorkMaterialStates ^. _Default)
              _ccwmlUploadType
              _ccwmlPageToken
              _ccwmlPageSize
              _ccwmlCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CoursesCourseWorkMaterialsListResource)
                      mempty
