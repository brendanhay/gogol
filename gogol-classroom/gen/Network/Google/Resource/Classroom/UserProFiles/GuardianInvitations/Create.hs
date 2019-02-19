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
-- Module      : Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a guardian invitation, and sends an email to the guardian asking
-- them to confirm that they are the student\'s guardian. Once the guardian
-- accepts the invitation, their \`state\` will change to \`COMPLETED\` and
-- they will start receiving guardian notifications. A \`Guardian\`
-- resource will also be created to represent the active guardian. The
-- request object must have the \`student_id\` and
-- \`invited_email_address\` fields set. Failing to set these fields, or
-- setting any other fields in the request, will result in an error. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- current user does not have permission to manage guardians, if the
-- guardian in question has already rejected too many requests for that
-- student, if guardians are not enabled for the domain in question, or for
-- other access errors. * \`RESOURCE_EXHAUSTED\` if the student or guardian
-- has exceeded the guardian link limit. * \`INVALID_ARGUMENT\` if the
-- guardian email address is not valid (for example, if it is too long), or
-- if the format of the student ID provided cannot be recognized (it is not
-- an email address, nor a \`user_id\` from this API). This error will also
-- be returned if read-only fields are set, or if the \`state\` field is
-- set to to a value other than \`PENDING\`. * \`NOT_FOUND\` if the student
-- ID provided is a valid student ID, but Classroom has no record of that
-- student. * \`ALREADY_EXISTS\` if there is already a pending guardian
-- invitation for the student and \`invited_email_address\` provided, or if
-- the provided \`invited_email_address\` matches the Google account of an
-- existing \`Guardian\` for this user.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardianInvitations.create@.
module Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.Create
    (
    -- * REST Resource
      UserProFilesGuardianInvitationsCreateResource

    -- * Creating a Request
    , userProFilesGuardianInvitationsCreate
    , UserProFilesGuardianInvitationsCreate

    -- * Request Lenses
    , upfgicStudentId
    , upfgicXgafv
    , upfgicUploadProtocol
    , upfgicAccessToken
    , upfgicUploadType
    , upfgicPayload
    , upfgicCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.userProfiles.guardianInvitations.create@ method which the
-- 'UserProFilesGuardianInvitationsCreate' request conforms to.
type UserProFilesGuardianInvitationsCreateResource =
     "v1" :>
       "userProfiles" :>
         Capture "studentId" Text :>
           "guardianInvitations" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] GuardianInvitation :>
                           Post '[JSON] GuardianInvitation

-- | Creates a guardian invitation, and sends an email to the guardian asking
-- them to confirm that they are the student\'s guardian. Once the guardian
-- accepts the invitation, their \`state\` will change to \`COMPLETED\` and
-- they will start receiving guardian notifications. A \`Guardian\`
-- resource will also be created to represent the active guardian. The
-- request object must have the \`student_id\` and
-- \`invited_email_address\` fields set. Failing to set these fields, or
-- setting any other fields in the request, will result in an error. This
-- method returns the following error codes: * \`PERMISSION_DENIED\` if the
-- current user does not have permission to manage guardians, if the
-- guardian in question has already rejected too many requests for that
-- student, if guardians are not enabled for the domain in question, or for
-- other access errors. * \`RESOURCE_EXHAUSTED\` if the student or guardian
-- has exceeded the guardian link limit. * \`INVALID_ARGUMENT\` if the
-- guardian email address is not valid (for example, if it is too long), or
-- if the format of the student ID provided cannot be recognized (it is not
-- an email address, nor a \`user_id\` from this API). This error will also
-- be returned if read-only fields are set, or if the \`state\` field is
-- set to to a value other than \`PENDING\`. * \`NOT_FOUND\` if the student
-- ID provided is a valid student ID, but Classroom has no record of that
-- student. * \`ALREADY_EXISTS\` if there is already a pending guardian
-- invitation for the student and \`invited_email_address\` provided, or if
-- the provided \`invited_email_address\` matches the Google account of an
-- existing \`Guardian\` for this user.
--
-- /See:/ 'userProFilesGuardianInvitationsCreate' smart constructor.
data UserProFilesGuardianInvitationsCreate =
  UserProFilesGuardianInvitationsCreate'
    { _upfgicStudentId      :: !Text
    , _upfgicXgafv          :: !(Maybe Xgafv)
    , _upfgicUploadProtocol :: !(Maybe Text)
    , _upfgicAccessToken    :: !(Maybe Text)
    , _upfgicUploadType     :: !(Maybe Text)
    , _upfgicPayload        :: !GuardianInvitation
    , _upfgicCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserProFilesGuardianInvitationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfgicStudentId'
--
-- * 'upfgicXgafv'
--
-- * 'upfgicUploadProtocol'
--
-- * 'upfgicAccessToken'
--
-- * 'upfgicUploadType'
--
-- * 'upfgicPayload'
--
-- * 'upfgicCallback'
userProFilesGuardianInvitationsCreate
    :: Text -- ^ 'upfgicStudentId'
    -> GuardianInvitation -- ^ 'upfgicPayload'
    -> UserProFilesGuardianInvitationsCreate
userProFilesGuardianInvitationsCreate pUpfgicStudentId_ pUpfgicPayload_ =
  UserProFilesGuardianInvitationsCreate'
    { _upfgicStudentId = pUpfgicStudentId_
    , _upfgicXgafv = Nothing
    , _upfgicUploadProtocol = Nothing
    , _upfgicAccessToken = Nothing
    , _upfgicUploadType = Nothing
    , _upfgicPayload = pUpfgicPayload_
    , _upfgicCallback = Nothing
    }


-- | ID of the student (in standard format)
upfgicStudentId :: Lens' UserProFilesGuardianInvitationsCreate Text
upfgicStudentId
  = lens _upfgicStudentId
      (\ s a -> s{_upfgicStudentId = a})

-- | V1 error format.
upfgicXgafv :: Lens' UserProFilesGuardianInvitationsCreate (Maybe Xgafv)
upfgicXgafv
  = lens _upfgicXgafv (\ s a -> s{_upfgicXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upfgicUploadProtocol :: Lens' UserProFilesGuardianInvitationsCreate (Maybe Text)
upfgicUploadProtocol
  = lens _upfgicUploadProtocol
      (\ s a -> s{_upfgicUploadProtocol = a})

-- | OAuth access token.
upfgicAccessToken :: Lens' UserProFilesGuardianInvitationsCreate (Maybe Text)
upfgicAccessToken
  = lens _upfgicAccessToken
      (\ s a -> s{_upfgicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upfgicUploadType :: Lens' UserProFilesGuardianInvitationsCreate (Maybe Text)
upfgicUploadType
  = lens _upfgicUploadType
      (\ s a -> s{_upfgicUploadType = a})

-- | Multipart request metadata.
upfgicPayload :: Lens' UserProFilesGuardianInvitationsCreate GuardianInvitation
upfgicPayload
  = lens _upfgicPayload
      (\ s a -> s{_upfgicPayload = a})

-- | JSONP
upfgicCallback :: Lens' UserProFilesGuardianInvitationsCreate (Maybe Text)
upfgicCallback
  = lens _upfgicCallback
      (\ s a -> s{_upfgicCallback = a})

instance GoogleRequest
           UserProFilesGuardianInvitationsCreate
         where
        type Rs UserProFilesGuardianInvitationsCreate =
             GuardianInvitation
        type Scopes UserProFilesGuardianInvitationsCreate =
             '["https://www.googleapis.com/auth/classroom.guardianlinks.students"]
        requestClient
          UserProFilesGuardianInvitationsCreate'{..}
          = go _upfgicStudentId _upfgicXgafv
              _upfgicUploadProtocol
              _upfgicAccessToken
              _upfgicUploadType
              _upfgicCallback
              (Just AltJSON)
              _upfgicPayload
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UserProFilesGuardianInvitationsCreateResource)
                      mempty
