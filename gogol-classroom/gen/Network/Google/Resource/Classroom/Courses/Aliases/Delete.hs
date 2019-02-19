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
-- Module      : Network.Google.Resource.Classroom.Courses.Aliases.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an alias of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to remove the alias or for access errors. * \`NOT_FOUND\` if the alias
-- does not exist. * \`FAILED_PRECONDITION\` if the alias requested does
-- not make sense for the requesting user or course (for example, if a user
-- not in a domain attempts to delete a domain-scoped alias).
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.aliases.delete@.
module Network.Google.Resource.Classroom.Courses.Aliases.Delete
    (
    -- * REST Resource
      CoursesAliasesDeleteResource

    -- * Creating a Request
    , coursesAliasesDelete
    , CoursesAliasesDelete

    -- * Request Lenses
    , cadXgafv
    , cadUploadProtocol
    , cadCourseId
    , cadAccessToken
    , cadUploadType
    , cadAlias
    , cadCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.aliases.delete@ method which the
-- 'CoursesAliasesDelete' request conforms to.
type CoursesAliasesDeleteResource =
     "v1" :>
       "courses" :>
         Capture "courseId" Text :>
           "aliases" :>
             Capture "alias" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an alias of a course. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if the requesting user is not permitted
-- to remove the alias or for access errors. * \`NOT_FOUND\` if the alias
-- does not exist. * \`FAILED_PRECONDITION\` if the alias requested does
-- not make sense for the requesting user or course (for example, if a user
-- not in a domain attempts to delete a domain-scoped alias).
--
-- /See:/ 'coursesAliasesDelete' smart constructor.
data CoursesAliasesDelete =
  CoursesAliasesDelete'
    { _cadXgafv          :: !(Maybe Xgafv)
    , _cadUploadProtocol :: !(Maybe Text)
    , _cadCourseId       :: !Text
    , _cadAccessToken    :: !(Maybe Text)
    , _cadUploadType     :: !(Maybe Text)
    , _cadAlias          :: !Text
    , _cadCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesAliasesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cadXgafv'
--
-- * 'cadUploadProtocol'
--
-- * 'cadCourseId'
--
-- * 'cadAccessToken'
--
-- * 'cadUploadType'
--
-- * 'cadAlias'
--
-- * 'cadCallback'
coursesAliasesDelete
    :: Text -- ^ 'cadCourseId'
    -> Text -- ^ 'cadAlias'
    -> CoursesAliasesDelete
coursesAliasesDelete pCadCourseId_ pCadAlias_ =
  CoursesAliasesDelete'
    { _cadXgafv = Nothing
    , _cadUploadProtocol = Nothing
    , _cadCourseId = pCadCourseId_
    , _cadAccessToken = Nothing
    , _cadUploadType = Nothing
    , _cadAlias = pCadAlias_
    , _cadCallback = Nothing
    }


-- | V1 error format.
cadXgafv :: Lens' CoursesAliasesDelete (Maybe Xgafv)
cadXgafv = lens _cadXgafv (\ s a -> s{_cadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cadUploadProtocol :: Lens' CoursesAliasesDelete (Maybe Text)
cadUploadProtocol
  = lens _cadUploadProtocol
      (\ s a -> s{_cadUploadProtocol = a})

-- | Identifier of the course whose alias should be deleted. This identifier
-- can be either the Classroom-assigned identifier or an alias.
cadCourseId :: Lens' CoursesAliasesDelete Text
cadCourseId
  = lens _cadCourseId (\ s a -> s{_cadCourseId = a})

-- | OAuth access token.
cadAccessToken :: Lens' CoursesAliasesDelete (Maybe Text)
cadAccessToken
  = lens _cadAccessToken
      (\ s a -> s{_cadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cadUploadType :: Lens' CoursesAliasesDelete (Maybe Text)
cadUploadType
  = lens _cadUploadType
      (\ s a -> s{_cadUploadType = a})

-- | Alias to delete. This may not be the Classroom-assigned identifier.
cadAlias :: Lens' CoursesAliasesDelete Text
cadAlias = lens _cadAlias (\ s a -> s{_cadAlias = a})

-- | JSONP
cadCallback :: Lens' CoursesAliasesDelete (Maybe Text)
cadCallback
  = lens _cadCallback (\ s a -> s{_cadCallback = a})

instance GoogleRequest CoursesAliasesDelete where
        type Rs CoursesAliasesDelete = Empty
        type Scopes CoursesAliasesDelete =
             '["https://www.googleapis.com/auth/classroom.courses"]
        requestClient CoursesAliasesDelete'{..}
          = go _cadCourseId _cadAlias _cadXgafv
              _cadUploadProtocol
              _cadAccessToken
              _cadUploadType
              _cadCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy CoursesAliasesDeleteResource)
                      mempty
