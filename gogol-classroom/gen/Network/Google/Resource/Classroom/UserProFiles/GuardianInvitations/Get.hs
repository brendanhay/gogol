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
-- Module      : Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a specific guardian invitation. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to view guardian invitations for the student identified by
-- the \`student_id\`, if guardians are not enabled for the domain in
-- question, or for other access errors. * \`INVALID_ARGUMENT\` if a
-- \`student_id\` is specified, but its format cannot be recognized (it is
-- not an email address, nor a \`student_id\` from the API, nor the literal
-- string \`me\`). * \`NOT_FOUND\` if Classroom cannot find any record of
-- the given student or \`invitation_id\`. May also be returned if the
-- student exists, but the requesting user does not have access to see that
-- student.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardianInvitations.get@.
module Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Get
    (
    -- * REST Resource
      UserProFilesGuardianInvitationsGetResource

    -- * Creating a Request
    , userProFilesGuardianInvitationsGet
    , UserProFilesGuardianInvitationsGet

    -- * Request Lenses
    , upfgigStudentId
    , upfgigXgafv
    , upfgigUploadProtocol
    , upfgigPp
    , upfgigAccessToken
    , upfgigUploadType
    , upfgigInvitationId
    , upfgigBearerToken
    , upfgigCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.userProfiles.guardianInvitations.get@ method which the
-- 'UserProFilesGuardianInvitationsGet' request conforms to.
type UserProFilesGuardianInvitationsGetResource =
     "v1" :>
       "userProfiles" :>
         Capture "studentId" Text :>
           "guardianInvitations" :>
             Capture "invitationId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] GuardianInvitation

-- | Returns a specific guardian invitation. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the requesting user is
-- not permitted to view guardian invitations for the student identified by
-- the \`student_id\`, if guardians are not enabled for the domain in
-- question, or for other access errors. * \`INVALID_ARGUMENT\` if a
-- \`student_id\` is specified, but its format cannot be recognized (it is
-- not an email address, nor a \`student_id\` from the API, nor the literal
-- string \`me\`). * \`NOT_FOUND\` if Classroom cannot find any record of
-- the given student or \`invitation_id\`. May also be returned if the
-- student exists, but the requesting user does not have access to see that
-- student.
--
-- /See:/ 'userProFilesGuardianInvitationsGet' smart constructor.
data UserProFilesGuardianInvitationsGet = UserProFilesGuardianInvitationsGet'
    { _upfgigStudentId      :: !Text
    , _upfgigXgafv          :: !(Maybe Text)
    , _upfgigUploadProtocol :: !(Maybe Text)
    , _upfgigPp             :: !Bool
    , _upfgigAccessToken    :: !(Maybe Text)
    , _upfgigUploadType     :: !(Maybe Text)
    , _upfgigInvitationId   :: !Text
    , _upfgigBearerToken    :: !(Maybe Text)
    , _upfgigCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProFilesGuardianInvitationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfgigStudentId'
--
-- * 'upfgigXgafv'
--
-- * 'upfgigUploadProtocol'
--
-- * 'upfgigPp'
--
-- * 'upfgigAccessToken'
--
-- * 'upfgigUploadType'
--
-- * 'upfgigInvitationId'
--
-- * 'upfgigBearerToken'
--
-- * 'upfgigCallback'
userProFilesGuardianInvitationsGet
    :: Text -- ^ 'upfgigStudentId'
    -> Text -- ^ 'upfgigInvitationId'
    -> UserProFilesGuardianInvitationsGet
userProFilesGuardianInvitationsGet pUpfgigStudentId_ pUpfgigInvitationId_ =
    UserProFilesGuardianInvitationsGet'
    { _upfgigStudentId = pUpfgigStudentId_
    , _upfgigXgafv = Nothing
    , _upfgigUploadProtocol = Nothing
    , _upfgigPp = True
    , _upfgigAccessToken = Nothing
    , _upfgigUploadType = Nothing
    , _upfgigInvitationId = pUpfgigInvitationId_
    , _upfgigBearerToken = Nothing
    , _upfgigCallback = Nothing
    }

-- | The ID of the student whose guardian invitation is being requested.
upfgigStudentId :: Lens' UserProFilesGuardianInvitationsGet Text
upfgigStudentId
  = lens _upfgigStudentId
      (\ s a -> s{_upfgigStudentId = a})

-- | V1 error format.
upfgigXgafv :: Lens' UserProFilesGuardianInvitationsGet (Maybe Text)
upfgigXgafv
  = lens _upfgigXgafv (\ s a -> s{_upfgigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upfgigUploadProtocol :: Lens' UserProFilesGuardianInvitationsGet (Maybe Text)
upfgigUploadProtocol
  = lens _upfgigUploadProtocol
      (\ s a -> s{_upfgigUploadProtocol = a})

-- | Pretty-print response.
upfgigPp :: Lens' UserProFilesGuardianInvitationsGet Bool
upfgigPp = lens _upfgigPp (\ s a -> s{_upfgigPp = a})

-- | OAuth access token.
upfgigAccessToken :: Lens' UserProFilesGuardianInvitationsGet (Maybe Text)
upfgigAccessToken
  = lens _upfgigAccessToken
      (\ s a -> s{_upfgigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upfgigUploadType :: Lens' UserProFilesGuardianInvitationsGet (Maybe Text)
upfgigUploadType
  = lens _upfgigUploadType
      (\ s a -> s{_upfgigUploadType = a})

-- | The \`id\` field of the \`GuardianInvitation\` being requested.
upfgigInvitationId :: Lens' UserProFilesGuardianInvitationsGet Text
upfgigInvitationId
  = lens _upfgigInvitationId
      (\ s a -> s{_upfgigInvitationId = a})

-- | OAuth bearer token.
upfgigBearerToken :: Lens' UserProFilesGuardianInvitationsGet (Maybe Text)
upfgigBearerToken
  = lens _upfgigBearerToken
      (\ s a -> s{_upfgigBearerToken = a})

-- | JSONP
upfgigCallback :: Lens' UserProFilesGuardianInvitationsGet (Maybe Text)
upfgigCallback
  = lens _upfgigCallback
      (\ s a -> s{_upfgigCallback = a})

instance GoogleRequest
         UserProFilesGuardianInvitationsGet where
        type Rs UserProFilesGuardianInvitationsGet =
             GuardianInvitation
        type Scopes UserProFilesGuardianInvitationsGet = '[]
        requestClient UserProFilesGuardianInvitationsGet'{..}
          = go _upfgigStudentId _upfgigInvitationId
              _upfgigXgafv
              _upfgigUploadProtocol
              (Just _upfgigPp)
              _upfgigAccessToken
              _upfgigUploadType
              _upfgigBearerToken
              _upfgigCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UserProFilesGuardianInvitationsGetResource)
                      mempty
