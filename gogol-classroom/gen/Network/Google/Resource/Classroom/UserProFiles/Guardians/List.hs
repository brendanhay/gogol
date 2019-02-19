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
-- Module      : Network.Google.Resource.Classroom.UserProFiles.Guardians.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of guardians that the requesting user is permitted to
-- view, restricted to those that match the request. To list guardians for
-- any student that the requesting user may view guardians for, use the
-- literal character \`-\` for the student ID. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if a \`student_id\` is
-- specified, and the requesting user is not permitted to view guardian
-- information for that student, if \`\"-\"\` is specified as the
-- \`student_id\` and the user is not a domain administrator, if guardians
-- are not enabled for the domain in question, if the
-- \`invited_email_address\` filter is set by a user who is not a domain
-- administrator, or for other access errors. * \`INVALID_ARGUMENT\` if a
-- \`student_id\` is specified, but its format cannot be recognized (it is
-- not an email address, nor a \`student_id\` from the API, nor the literal
-- string \`me\`). May also be returned if an invalid \`page_token\` is
-- provided. * \`NOT_FOUND\` if a \`student_id\` is specified, and its
-- format can be recognized, but Classroom has no record of that student.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardians.list@.
module Network.Google.Resource.Classroom.UserProFiles.Guardians.List
    (
    -- * REST Resource
      UserProFilesGuardiansListResource

    -- * Creating a Request
    , userProFilesGuardiansList
    , UserProFilesGuardiansList

    -- * Request Lenses
    , upfglStudentId
    , upfglXgafv
    , upfglUploadProtocol
    , upfglAccessToken
    , upfglUploadType
    , upfglInvitedEmailAddress
    , upfglPageToken
    , upfglPageSize
    , upfglCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.userProfiles.guardians.list@ method which the
-- 'UserProFilesGuardiansList' request conforms to.
type UserProFilesGuardiansListResource =
     "v1" :>
       "userProfiles" :>
         Capture "studentId" Text :>
           "guardians" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "invitedEmailAddress" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListGuardiansResponse

-- | Returns a list of guardians that the requesting user is permitted to
-- view, restricted to those that match the request. To list guardians for
-- any student that the requesting user may view guardians for, use the
-- literal character \`-\` for the student ID. This method returns the
-- following error codes: * \`PERMISSION_DENIED\` if a \`student_id\` is
-- specified, and the requesting user is not permitted to view guardian
-- information for that student, if \`\"-\"\` is specified as the
-- \`student_id\` and the user is not a domain administrator, if guardians
-- are not enabled for the domain in question, if the
-- \`invited_email_address\` filter is set by a user who is not a domain
-- administrator, or for other access errors. * \`INVALID_ARGUMENT\` if a
-- \`student_id\` is specified, but its format cannot be recognized (it is
-- not an email address, nor a \`student_id\` from the API, nor the literal
-- string \`me\`). May also be returned if an invalid \`page_token\` is
-- provided. * \`NOT_FOUND\` if a \`student_id\` is specified, and its
-- format can be recognized, but Classroom has no record of that student.
--
-- /See:/ 'userProFilesGuardiansList' smart constructor.
data UserProFilesGuardiansList =
  UserProFilesGuardiansList'
    { _upfglStudentId           :: !Text
    , _upfglXgafv               :: !(Maybe Xgafv)
    , _upfglUploadProtocol      :: !(Maybe Text)
    , _upfglAccessToken         :: !(Maybe Text)
    , _upfglUploadType          :: !(Maybe Text)
    , _upfglInvitedEmailAddress :: !(Maybe Text)
    , _upfglPageToken           :: !(Maybe Text)
    , _upfglPageSize            :: !(Maybe (Textual Int32))
    , _upfglCallback            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserProFilesGuardiansList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfglStudentId'
--
-- * 'upfglXgafv'
--
-- * 'upfglUploadProtocol'
--
-- * 'upfglAccessToken'
--
-- * 'upfglUploadType'
--
-- * 'upfglInvitedEmailAddress'
--
-- * 'upfglPageToken'
--
-- * 'upfglPageSize'
--
-- * 'upfglCallback'
userProFilesGuardiansList
    :: Text -- ^ 'upfglStudentId'
    -> UserProFilesGuardiansList
userProFilesGuardiansList pUpfglStudentId_ =
  UserProFilesGuardiansList'
    { _upfglStudentId = pUpfglStudentId_
    , _upfglXgafv = Nothing
    , _upfglUploadProtocol = Nothing
    , _upfglAccessToken = Nothing
    , _upfglUploadType = Nothing
    , _upfglInvitedEmailAddress = Nothing
    , _upfglPageToken = Nothing
    , _upfglPageSize = Nothing
    , _upfglCallback = Nothing
    }

-- | Filter results by the student who the guardian is linked to. The
-- identifier can be one of the following: * the numeric identifier for the
-- user * the email address of the user * the string literal \`\"me\"\`,
-- indicating the requesting user * the string literal \`\"-\"\`,
-- indicating that results should be returned for all students that the
-- requesting user has access to view.
upfglStudentId :: Lens' UserProFilesGuardiansList Text
upfglStudentId
  = lens _upfglStudentId
      (\ s a -> s{_upfglStudentId = a})

-- | V1 error format.
upfglXgafv :: Lens' UserProFilesGuardiansList (Maybe Xgafv)
upfglXgafv
  = lens _upfglXgafv (\ s a -> s{_upfglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upfglUploadProtocol :: Lens' UserProFilesGuardiansList (Maybe Text)
upfglUploadProtocol
  = lens _upfglUploadProtocol
      (\ s a -> s{_upfglUploadProtocol = a})

-- | OAuth access token.
upfglAccessToken :: Lens' UserProFilesGuardiansList (Maybe Text)
upfglAccessToken
  = lens _upfglAccessToken
      (\ s a -> s{_upfglAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upfglUploadType :: Lens' UserProFilesGuardiansList (Maybe Text)
upfglUploadType
  = lens _upfglUploadType
      (\ s a -> s{_upfglUploadType = a})

-- | Filter results by the email address that the original invitation was
-- sent to, resulting in this guardian link. This filter can only be used
-- by domain administrators.
upfglInvitedEmailAddress :: Lens' UserProFilesGuardiansList (Maybe Text)
upfglInvitedEmailAddress
  = lens _upfglInvitedEmailAddress
      (\ s a -> s{_upfglInvitedEmailAddress = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
upfglPageToken :: Lens' UserProFilesGuardiansList (Maybe Text)
upfglPageToken
  = lens _upfglPageToken
      (\ s a -> s{_upfglPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
upfglPageSize :: Lens' UserProFilesGuardiansList (Maybe Int32)
upfglPageSize
  = lens _upfglPageSize
      (\ s a -> s{_upfglPageSize = a})
      . mapping _Coerce

-- | JSONP
upfglCallback :: Lens' UserProFilesGuardiansList (Maybe Text)
upfglCallback
  = lens _upfglCallback
      (\ s a -> s{_upfglCallback = a})

instance GoogleRequest UserProFilesGuardiansList
         where
        type Rs UserProFilesGuardiansList =
             ListGuardiansResponse
        type Scopes UserProFilesGuardiansList =
             '["https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly",
               "https://www.googleapis.com/auth/classroom.guardianlinks.students",
               "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly"]
        requestClient UserProFilesGuardiansList'{..}
          = go _upfglStudentId _upfglXgafv _upfglUploadProtocol
              _upfglAccessToken
              _upfglUploadType
              _upfglInvitedEmailAddress
              _upfglPageToken
              _upfglPageSize
              _upfglCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy UserProFilesGuardiansListResource)
                      mempty
