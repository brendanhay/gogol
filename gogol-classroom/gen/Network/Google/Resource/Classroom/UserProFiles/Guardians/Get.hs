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
-- Module      : Network.Google.Resource.Classroom.UserProFiles.Guardians.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a specific guardian. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if no user that matches the provided
-- \`student_id\` is visible to the requesting user, if the requesting user
-- is not permitted to view guardian information for the student identified
-- by the \`student_id\`, if guardians are not enabled for the domain in
-- question, or for other access errors. * \`INVALID_ARGUMENT\` if a
-- \`student_id\` is specified, but its format cannot be recognized (it is
-- not an email address, nor a \`student_id\` from the API, nor the literal
-- string \`me\`). * \`NOT_FOUND\` if the requesting user is permitted to
-- view guardians for the requested \`student_id\`, but no \`Guardian\`
-- record exists for that student that matches the provided
-- \`guardian_id\`.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardians.get@.
module Network.Google.Resource.Classroom.UserProFiles.Guardians.Get
    (
    -- * REST Resource
      UserProFilesGuardiansGetResource

    -- * Creating a Request
    , userProFilesGuardiansGet
    , UserProFilesGuardiansGet

    -- * Request Lenses
    , upfggStudentId
    , upfggXgafv
    , upfggUploadProtocol
    , upfggPp
    , upfggAccessToken
    , upfggUploadType
    , upfggGuardianId
    , upfggBearerToken
    , upfggCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.userProfiles.guardians.get@ method which the
-- 'UserProFilesGuardiansGet' request conforms to.
type UserProFilesGuardiansGetResource =
     "v1" :>
       "userProfiles" :>
         Capture "studentId" Text :>
           "guardians" :>
             Capture "guardianId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Guardian

-- | Returns a specific guardian. This method returns the following error
-- codes: * \`PERMISSION_DENIED\` if no user that matches the provided
-- \`student_id\` is visible to the requesting user, if the requesting user
-- is not permitted to view guardian information for the student identified
-- by the \`student_id\`, if guardians are not enabled for the domain in
-- question, or for other access errors. * \`INVALID_ARGUMENT\` if a
-- \`student_id\` is specified, but its format cannot be recognized (it is
-- not an email address, nor a \`student_id\` from the API, nor the literal
-- string \`me\`). * \`NOT_FOUND\` if the requesting user is permitted to
-- view guardians for the requested \`student_id\`, but no \`Guardian\`
-- record exists for that student that matches the provided
-- \`guardian_id\`.
--
-- /See:/ 'userProFilesGuardiansGet' smart constructor.
data UserProFilesGuardiansGet = UserProFilesGuardiansGet'
    { _upfggStudentId      :: !Text
    , _upfggXgafv          :: !(Maybe Text)
    , _upfggUploadProtocol :: !(Maybe Text)
    , _upfggPp             :: !Bool
    , _upfggAccessToken    :: !(Maybe Text)
    , _upfggUploadType     :: !(Maybe Text)
    , _upfggGuardianId     :: !Text
    , _upfggBearerToken    :: !(Maybe Text)
    , _upfggCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProFilesGuardiansGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfggStudentId'
--
-- * 'upfggXgafv'
--
-- * 'upfggUploadProtocol'
--
-- * 'upfggPp'
--
-- * 'upfggAccessToken'
--
-- * 'upfggUploadType'
--
-- * 'upfggGuardianId'
--
-- * 'upfggBearerToken'
--
-- * 'upfggCallback'
userProFilesGuardiansGet
    :: Text -- ^ 'upfggStudentId'
    -> Text -- ^ 'upfggGuardianId'
    -> UserProFilesGuardiansGet
userProFilesGuardiansGet pUpfggStudentId_ pUpfggGuardianId_ =
    UserProFilesGuardiansGet'
    { _upfggStudentId = pUpfggStudentId_
    , _upfggXgafv = Nothing
    , _upfggUploadProtocol = Nothing
    , _upfggPp = True
    , _upfggAccessToken = Nothing
    , _upfggUploadType = Nothing
    , _upfggGuardianId = pUpfggGuardianId_
    , _upfggBearerToken = Nothing
    , _upfggCallback = Nothing
    }

-- | The student whose guardian is being requested. One of the following: *
-- the numeric identifier for the user * the email address of the user *
-- the string literal \`\"me\"\`, indicating the requesting user
upfggStudentId :: Lens' UserProFilesGuardiansGet Text
upfggStudentId
  = lens _upfggStudentId
      (\ s a -> s{_upfggStudentId = a})

-- | V1 error format.
upfggXgafv :: Lens' UserProFilesGuardiansGet (Maybe Text)
upfggXgafv
  = lens _upfggXgafv (\ s a -> s{_upfggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upfggUploadProtocol :: Lens' UserProFilesGuardiansGet (Maybe Text)
upfggUploadProtocol
  = lens _upfggUploadProtocol
      (\ s a -> s{_upfggUploadProtocol = a})

-- | Pretty-print response.
upfggPp :: Lens' UserProFilesGuardiansGet Bool
upfggPp = lens _upfggPp (\ s a -> s{_upfggPp = a})

-- | OAuth access token.
upfggAccessToken :: Lens' UserProFilesGuardiansGet (Maybe Text)
upfggAccessToken
  = lens _upfggAccessToken
      (\ s a -> s{_upfggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upfggUploadType :: Lens' UserProFilesGuardiansGet (Maybe Text)
upfggUploadType
  = lens _upfggUploadType
      (\ s a -> s{_upfggUploadType = a})

-- | The \`id\` field from a \`Guardian\`.
upfggGuardianId :: Lens' UserProFilesGuardiansGet Text
upfggGuardianId
  = lens _upfggGuardianId
      (\ s a -> s{_upfggGuardianId = a})

-- | OAuth bearer token.
upfggBearerToken :: Lens' UserProFilesGuardiansGet (Maybe Text)
upfggBearerToken
  = lens _upfggBearerToken
      (\ s a -> s{_upfggBearerToken = a})

-- | JSONP
upfggCallback :: Lens' UserProFilesGuardiansGet (Maybe Text)
upfggCallback
  = lens _upfggCallback
      (\ s a -> s{_upfggCallback = a})

instance GoogleRequest UserProFilesGuardiansGet where
        type Rs UserProFilesGuardiansGet = Guardian
        type Scopes UserProFilesGuardiansGet = '[]
        requestClient UserProFilesGuardiansGet'{..}
          = go _upfggStudentId _upfggGuardianId _upfggXgafv
              _upfggUploadProtocol
              (Just _upfggPp)
              _upfggAccessToken
              _upfggUploadType
              _upfggBearerToken
              _upfggCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy UserProFilesGuardiansGetResource)
                      mempty
