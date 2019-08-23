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
-- Module      : Network.Google.Resource.Classroom.Courses.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates one or more fields in a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to modify the requested course or for access errors. *
-- \`NOT_FOUND\` if no course exists with the requested ID. *
-- \`INVALID_ARGUMENT\` if invalid fields are specified in the update mask
-- or if no update mask is supplied. * \`FAILED_PRECONDITION\` for the
-- following request errors: * CourseNotModifiable
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.courses.patch@.
module Network.Google.Resource.Classroom.Courses.Patch
    (
    -- * REST Resource
      CoursesPatchResource

    -- * Creating a Request
    , coursesPatch
    , CoursesPatch

    -- * Request Lenses
    , cpXgafv
    , cpUploadProtocol
    , cpUpdateMask
    , cpAccessToken
    , cpUploadType
    , cpPayload
    , cpId
    , cpCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.courses.patch@ method which the
-- 'CoursesPatch' request conforms to.
type CoursesPatchResource =
     "v1" :>
       "courses" :>
         Capture "id" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Course :> Patch '[JSON] Course

-- | Updates one or more fields in a course. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to modify the requested course or for access errors. *
-- \`NOT_FOUND\` if no course exists with the requested ID. *
-- \`INVALID_ARGUMENT\` if invalid fields are specified in the update mask
-- or if no update mask is supplied. * \`FAILED_PRECONDITION\` for the
-- following request errors: * CourseNotModifiable
--
-- /See:/ 'coursesPatch' smart constructor.
data CoursesPatch =
  CoursesPatch'
    { _cpXgafv          :: !(Maybe Xgafv)
    , _cpUploadProtocol :: !(Maybe Text)
    , _cpUpdateMask     :: !(Maybe GFieldMask)
    , _cpAccessToken    :: !(Maybe Text)
    , _cpUploadType     :: !(Maybe Text)
    , _cpPayload        :: !Course
    , _cpId             :: !Text
    , _cpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CoursesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpXgafv'
--
-- * 'cpUploadProtocol'
--
-- * 'cpUpdateMask'
--
-- * 'cpAccessToken'
--
-- * 'cpUploadType'
--
-- * 'cpPayload'
--
-- * 'cpId'
--
-- * 'cpCallback'
coursesPatch
    :: Course -- ^ 'cpPayload'
    -> Text -- ^ 'cpId'
    -> CoursesPatch
coursesPatch pCpPayload_ pCpId_ =
  CoursesPatch'
    { _cpXgafv = Nothing
    , _cpUploadProtocol = Nothing
    , _cpUpdateMask = Nothing
    , _cpAccessToken = Nothing
    , _cpUploadType = Nothing
    , _cpPayload = pCpPayload_
    , _cpId = pCpId_
    , _cpCallback = Nothing
    }


-- | V1 error format.
cpXgafv :: Lens' CoursesPatch (Maybe Xgafv)
cpXgafv = lens _cpXgafv (\ s a -> s{_cpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpUploadProtocol :: Lens' CoursesPatch (Maybe Text)
cpUploadProtocol
  = lens _cpUploadProtocol
      (\ s a -> s{_cpUploadProtocol = a})

-- | Mask that identifies which fields on the course to update. This field is
-- required to do an update. The update will fail if invalid fields are
-- specified. The following fields are valid: * \`name\` * \`section\` *
-- \`descriptionHeading\` * \`description\` * \`room\` * \`courseState\` *
-- \`ownerId\` Note: patches to ownerId are treated as being effective
-- immediately, but in practice it may take some time for the ownership
-- transfer of all affected resources to complete. When set in a query
-- parameter, this field should be specified as \`updateMask=,,...\`
cpUpdateMask :: Lens' CoursesPatch (Maybe GFieldMask)
cpUpdateMask
  = lens _cpUpdateMask (\ s a -> s{_cpUpdateMask = a})

-- | OAuth access token.
cpAccessToken :: Lens' CoursesPatch (Maybe Text)
cpAccessToken
  = lens _cpAccessToken
      (\ s a -> s{_cpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpUploadType :: Lens' CoursesPatch (Maybe Text)
cpUploadType
  = lens _cpUploadType (\ s a -> s{_cpUploadType = a})

-- | Multipart request metadata.
cpPayload :: Lens' CoursesPatch Course
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | Identifier of the course to update. This identifier can be either the
-- Classroom-assigned identifier or an alias.
cpId :: Lens' CoursesPatch Text
cpId = lens _cpId (\ s a -> s{_cpId = a})

-- | JSONP
cpCallback :: Lens' CoursesPatch (Maybe Text)
cpCallback
  = lens _cpCallback (\ s a -> s{_cpCallback = a})

instance GoogleRequest CoursesPatch where
        type Rs CoursesPatch = Course
        type Scopes CoursesPatch =
             '["https://www.googleapis.com/auth/classroom.courses"]
        requestClient CoursesPatch'{..}
          = go _cpId _cpXgafv _cpUploadProtocol _cpUpdateMask
              _cpAccessToken
              _cpUploadType
              _cpCallback
              (Just AltJSON)
              _cpPayload
              classroomService
          where go
                  = buildClient (Proxy :: Proxy CoursesPatchResource)
                      mempty
