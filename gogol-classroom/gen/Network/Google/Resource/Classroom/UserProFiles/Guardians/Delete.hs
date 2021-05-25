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
-- Module      : Network.Google.Resource.Classroom.UserProFiles.Guardians.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a guardian. The guardian will no longer receive guardian
-- notifications and the guardian will no longer be accessible via the API.
-- This method returns the following error codes: * \`PERMISSION_DENIED\`
-- if no user that matches the provided \`student_id\` is visible to the
-- requesting user, if the requesting user is not permitted to manage
-- guardians for the student identified by the \`student_id\`, if guardians
-- are not enabled for the domain in question, or for other access errors.
-- * \`INVALID_ARGUMENT\` if a \`student_id\` is specified, but its format
-- cannot be recognized (it is not an email address, nor a \`student_id\`
-- from the API). * \`NOT_FOUND\` if the requesting user is permitted to
-- modify guardians for the requested \`student_id\`, but no \`Guardian\`
-- record exists for that student with the provided \`guardian_id\`.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardians.delete@.
module Network.Google.Resource.Classroom.UserProFiles.Guardians.Delete
    (
    -- * REST Resource
      UserProFilesGuardiansDeleteResource

    -- * Creating a Request
    , userProFilesGuardiansDelete
    , UserProFilesGuardiansDelete

    -- * Request Lenses
    , upfgdStudentId
    , upfgdXgafv
    , upfgdUploadProtocol
    , upfgdAccessToken
    , upfgdUploadType
    , upfgdGuardianId
    , upfgdCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.userProfiles.guardians.delete@ method which the
-- 'UserProFilesGuardiansDelete' request conforms to.
type UserProFilesGuardiansDeleteResource =
     "v1" :>
       "userProfiles" :>
         Capture "studentId" Text :>
           "guardians" :>
             Capture "guardianId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a guardian. The guardian will no longer receive guardian
-- notifications and the guardian will no longer be accessible via the API.
-- This method returns the following error codes: * \`PERMISSION_DENIED\`
-- if no user that matches the provided \`student_id\` is visible to the
-- requesting user, if the requesting user is not permitted to manage
-- guardians for the student identified by the \`student_id\`, if guardians
-- are not enabled for the domain in question, or for other access errors.
-- * \`INVALID_ARGUMENT\` if a \`student_id\` is specified, but its format
-- cannot be recognized (it is not an email address, nor a \`student_id\`
-- from the API). * \`NOT_FOUND\` if the requesting user is permitted to
-- modify guardians for the requested \`student_id\`, but no \`Guardian\`
-- record exists for that student with the provided \`guardian_id\`.
--
-- /See:/ 'userProFilesGuardiansDelete' smart constructor.
data UserProFilesGuardiansDelete =
  UserProFilesGuardiansDelete'
    { _upfgdStudentId :: !Text
    , _upfgdXgafv :: !(Maybe Xgafv)
    , _upfgdUploadProtocol :: !(Maybe Text)
    , _upfgdAccessToken :: !(Maybe Text)
    , _upfgdUploadType :: !(Maybe Text)
    , _upfgdGuardianId :: !Text
    , _upfgdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserProFilesGuardiansDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfgdStudentId'
--
-- * 'upfgdXgafv'
--
-- * 'upfgdUploadProtocol'
--
-- * 'upfgdAccessToken'
--
-- * 'upfgdUploadType'
--
-- * 'upfgdGuardianId'
--
-- * 'upfgdCallback'
userProFilesGuardiansDelete
    :: Text -- ^ 'upfgdStudentId'
    -> Text -- ^ 'upfgdGuardianId'
    -> UserProFilesGuardiansDelete
userProFilesGuardiansDelete pUpfgdStudentId_ pUpfgdGuardianId_ =
  UserProFilesGuardiansDelete'
    { _upfgdStudentId = pUpfgdStudentId_
    , _upfgdXgafv = Nothing
    , _upfgdUploadProtocol = Nothing
    , _upfgdAccessToken = Nothing
    , _upfgdUploadType = Nothing
    , _upfgdGuardianId = pUpfgdGuardianId_
    , _upfgdCallback = Nothing
    }


-- | The student whose guardian is to be deleted. One of the following: * the
-- numeric identifier for the user * the email address of the user * the
-- string literal \`\"me\"\`, indicating the requesting user
upfgdStudentId :: Lens' UserProFilesGuardiansDelete Text
upfgdStudentId
  = lens _upfgdStudentId
      (\ s a -> s{_upfgdStudentId = a})

-- | V1 error format.
upfgdXgafv :: Lens' UserProFilesGuardiansDelete (Maybe Xgafv)
upfgdXgafv
  = lens _upfgdXgafv (\ s a -> s{_upfgdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upfgdUploadProtocol :: Lens' UserProFilesGuardiansDelete (Maybe Text)
upfgdUploadProtocol
  = lens _upfgdUploadProtocol
      (\ s a -> s{_upfgdUploadProtocol = a})

-- | OAuth access token.
upfgdAccessToken :: Lens' UserProFilesGuardiansDelete (Maybe Text)
upfgdAccessToken
  = lens _upfgdAccessToken
      (\ s a -> s{_upfgdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upfgdUploadType :: Lens' UserProFilesGuardiansDelete (Maybe Text)
upfgdUploadType
  = lens _upfgdUploadType
      (\ s a -> s{_upfgdUploadType = a})

-- | The \`id\` field from a \`Guardian\`.
upfgdGuardianId :: Lens' UserProFilesGuardiansDelete Text
upfgdGuardianId
  = lens _upfgdGuardianId
      (\ s a -> s{_upfgdGuardianId = a})

-- | JSONP
upfgdCallback :: Lens' UserProFilesGuardiansDelete (Maybe Text)
upfgdCallback
  = lens _upfgdCallback
      (\ s a -> s{_upfgdCallback = a})

instance GoogleRequest UserProFilesGuardiansDelete
         where
        type Rs UserProFilesGuardiansDelete = Empty
        type Scopes UserProFilesGuardiansDelete =
             '["https://www.googleapis.com/auth/classroom.guardianlinks.students"]
        requestClient UserProFilesGuardiansDelete'{..}
          = go _upfgdStudentId _upfgdGuardianId _upfgdXgafv
              _upfgdUploadProtocol
              _upfgdAccessToken
              _upfgdUploadType
              _upfgdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy UserProFilesGuardiansDeleteResource)
                      mempty
