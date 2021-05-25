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
-- Module      : Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a guardian invitation. Currently, the only valid modification
-- is to change the \`state\` from \`PENDING\` to \`COMPLETE\`. This has
-- the effect of withdrawing the invitation. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the current user does
-- not have permission to manage guardians, if guardians are not enabled
-- for the domain in question or for other access errors. *
-- \`FAILED_PRECONDITION\` if the guardian link is not in the \`PENDING\`
-- state. * \`INVALID_ARGUMENT\` if the format of the student ID provided
-- cannot be recognized (it is not an email address, nor a \`user_id\` from
-- this API), or if the passed \`GuardianInvitation\` has a \`state\` other
-- than \`COMPLETE\`, or if it modifies fields other than \`state\`. *
-- \`NOT_FOUND\` if the student ID provided is a valid student ID, but
-- Classroom has no record of that student, or if the \`id\` field does not
-- refer to a guardian invitation known to Classroom.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardianInvitations.patch@.
module Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Patch
    (
    -- * REST Resource
      UserProFilesGuardianInvitationsPatchResource

    -- * Creating a Request
    , userProFilesGuardianInvitationsPatch
    , UserProFilesGuardianInvitationsPatch

    -- * Request Lenses
    , upfgipStudentId
    , upfgipXgafv
    , upfgipUploadProtocol
    , upfgipUpdateMask
    , upfgipAccessToken
    , upfgipUploadType
    , upfgipPayload
    , upfgipInvitationId
    , upfgipCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.userProfiles.guardianInvitations.patch@ method which the
-- 'UserProFilesGuardianInvitationsPatch' request conforms to.
type UserProFilesGuardianInvitationsPatchResource =
     "v1" :>
       "userProfiles" :>
         Capture "studentId" Text :>
           "guardianInvitations" :>
             Capture "invitationId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "updateMask" GFieldMask :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] GuardianInvitation :>
                               Patch '[JSON] GuardianInvitation

-- | Modifies a guardian invitation. Currently, the only valid modification
-- is to change the \`state\` from \`PENDING\` to \`COMPLETE\`. This has
-- the effect of withdrawing the invitation. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if the current user does
-- not have permission to manage guardians, if guardians are not enabled
-- for the domain in question or for other access errors. *
-- \`FAILED_PRECONDITION\` if the guardian link is not in the \`PENDING\`
-- state. * \`INVALID_ARGUMENT\` if the format of the student ID provided
-- cannot be recognized (it is not an email address, nor a \`user_id\` from
-- this API), or if the passed \`GuardianInvitation\` has a \`state\` other
-- than \`COMPLETE\`, or if it modifies fields other than \`state\`. *
-- \`NOT_FOUND\` if the student ID provided is a valid student ID, but
-- Classroom has no record of that student, or if the \`id\` field does not
-- refer to a guardian invitation known to Classroom.
--
-- /See:/ 'userProFilesGuardianInvitationsPatch' smart constructor.
data UserProFilesGuardianInvitationsPatch =
  UserProFilesGuardianInvitationsPatch'
    { _upfgipStudentId :: !Text
    , _upfgipXgafv :: !(Maybe Xgafv)
    , _upfgipUploadProtocol :: !(Maybe Text)
    , _upfgipUpdateMask :: !(Maybe GFieldMask)
    , _upfgipAccessToken :: !(Maybe Text)
    , _upfgipUploadType :: !(Maybe Text)
    , _upfgipPayload :: !GuardianInvitation
    , _upfgipInvitationId :: !Text
    , _upfgipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserProFilesGuardianInvitationsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfgipStudentId'
--
-- * 'upfgipXgafv'
--
-- * 'upfgipUploadProtocol'
--
-- * 'upfgipUpdateMask'
--
-- * 'upfgipAccessToken'
--
-- * 'upfgipUploadType'
--
-- * 'upfgipPayload'
--
-- * 'upfgipInvitationId'
--
-- * 'upfgipCallback'
userProFilesGuardianInvitationsPatch
    :: Text -- ^ 'upfgipStudentId'
    -> GuardianInvitation -- ^ 'upfgipPayload'
    -> Text -- ^ 'upfgipInvitationId'
    -> UserProFilesGuardianInvitationsPatch
userProFilesGuardianInvitationsPatch pUpfgipStudentId_ pUpfgipPayload_ pUpfgipInvitationId_ =
  UserProFilesGuardianInvitationsPatch'
    { _upfgipStudentId = pUpfgipStudentId_
    , _upfgipXgafv = Nothing
    , _upfgipUploadProtocol = Nothing
    , _upfgipUpdateMask = Nothing
    , _upfgipAccessToken = Nothing
    , _upfgipUploadType = Nothing
    , _upfgipPayload = pUpfgipPayload_
    , _upfgipInvitationId = pUpfgipInvitationId_
    , _upfgipCallback = Nothing
    }


-- | The ID of the student whose guardian invitation is to be modified.
upfgipStudentId :: Lens' UserProFilesGuardianInvitationsPatch Text
upfgipStudentId
  = lens _upfgipStudentId
      (\ s a -> s{_upfgipStudentId = a})

-- | V1 error format.
upfgipXgafv :: Lens' UserProFilesGuardianInvitationsPatch (Maybe Xgafv)
upfgipXgafv
  = lens _upfgipXgafv (\ s a -> s{_upfgipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upfgipUploadProtocol :: Lens' UserProFilesGuardianInvitationsPatch (Maybe Text)
upfgipUploadProtocol
  = lens _upfgipUploadProtocol
      (\ s a -> s{_upfgipUploadProtocol = a})

-- | Mask that identifies which fields on the course to update. This field is
-- required to do an update. The update fails if invalid fields are
-- specified. The following fields are valid: * \`state\` When set in a
-- query parameter, this field should be specified as \`updateMask=,,...\`
upfgipUpdateMask :: Lens' UserProFilesGuardianInvitationsPatch (Maybe GFieldMask)
upfgipUpdateMask
  = lens _upfgipUpdateMask
      (\ s a -> s{_upfgipUpdateMask = a})

-- | OAuth access token.
upfgipAccessToken :: Lens' UserProFilesGuardianInvitationsPatch (Maybe Text)
upfgipAccessToken
  = lens _upfgipAccessToken
      (\ s a -> s{_upfgipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upfgipUploadType :: Lens' UserProFilesGuardianInvitationsPatch (Maybe Text)
upfgipUploadType
  = lens _upfgipUploadType
      (\ s a -> s{_upfgipUploadType = a})

-- | Multipart request metadata.
upfgipPayload :: Lens' UserProFilesGuardianInvitationsPatch GuardianInvitation
upfgipPayload
  = lens _upfgipPayload
      (\ s a -> s{_upfgipPayload = a})

-- | The \`id\` field of the \`GuardianInvitation\` to be modified.
upfgipInvitationId :: Lens' UserProFilesGuardianInvitationsPatch Text
upfgipInvitationId
  = lens _upfgipInvitationId
      (\ s a -> s{_upfgipInvitationId = a})

-- | JSONP
upfgipCallback :: Lens' UserProFilesGuardianInvitationsPatch (Maybe Text)
upfgipCallback
  = lens _upfgipCallback
      (\ s a -> s{_upfgipCallback = a})

instance GoogleRequest
           UserProFilesGuardianInvitationsPatch
         where
        type Rs UserProFilesGuardianInvitationsPatch =
             GuardianInvitation
        type Scopes UserProFilesGuardianInvitationsPatch =
             '["https://www.googleapis.com/auth/classroom.guardianlinks.students"]
        requestClient
          UserProFilesGuardianInvitationsPatch'{..}
          = go _upfgipStudentId _upfgipInvitationId
              _upfgipXgafv
              _upfgipUploadProtocol
              _upfgipUpdateMask
              _upfgipAccessToken
              _upfgipUploadType
              _upfgipCallback
              (Just AltJSON)
              _upfgipPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UserProFilesGuardianInvitationsPatchResource)
                      mempty
