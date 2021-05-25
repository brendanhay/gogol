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
-- Module      : Network.Google.Resource.Classroom.Invitations.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an invitation. Only one invitation for a user and course may
-- exist at a time. Delete and re-create an invitation to make changes.
-- This method returns the following error codes: * \`PERMISSION_DENIED\`
-- if the requesting user is not permitted to create invitations for this
-- course or for access errors. * \`NOT_FOUND\` if the course or the user
-- does not exist. * \`FAILED_PRECONDITION\` if the requested user\'s
-- account is disabled or if the user already has this role or a role with
-- greater permissions. * \`ALREADY_EXISTS\` if an invitation for the
-- specified user and course already exists.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.create@.
module Network.Google.Resource.Classroom.Invitations.Create
    (
    -- * REST Resource
      InvitationsCreateResource

    -- * Creating a Request
    , invitationsCreate
    , InvitationsCreate

    -- * Request Lenses
    , icXgafv
    , icUploadProtocol
    , icAccessToken
    , icUploadType
    , icPayload
    , icCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.invitations.create@ method which the
-- 'InvitationsCreate' request conforms to.
type InvitationsCreateResource =
     "v1" :>
       "invitations" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Invitation :> Post '[JSON] Invitation

-- | Creates an invitation. Only one invitation for a user and course may
-- exist at a time. Delete and re-create an invitation to make changes.
-- This method returns the following error codes: * \`PERMISSION_DENIED\`
-- if the requesting user is not permitted to create invitations for this
-- course or for access errors. * \`NOT_FOUND\` if the course or the user
-- does not exist. * \`FAILED_PRECONDITION\` if the requested user\'s
-- account is disabled or if the user already has this role or a role with
-- greater permissions. * \`ALREADY_EXISTS\` if an invitation for the
-- specified user and course already exists.
--
-- /See:/ 'invitationsCreate' smart constructor.
data InvitationsCreate =
  InvitationsCreate'
    { _icXgafv :: !(Maybe Xgafv)
    , _icUploadProtocol :: !(Maybe Text)
    , _icAccessToken :: !(Maybe Text)
    , _icUploadType :: !(Maybe Text)
    , _icPayload :: !Invitation
    , _icCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InvitationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icXgafv'
--
-- * 'icUploadProtocol'
--
-- * 'icAccessToken'
--
-- * 'icUploadType'
--
-- * 'icPayload'
--
-- * 'icCallback'
invitationsCreate
    :: Invitation -- ^ 'icPayload'
    -> InvitationsCreate
invitationsCreate pIcPayload_ =
  InvitationsCreate'
    { _icXgafv = Nothing
    , _icUploadProtocol = Nothing
    , _icAccessToken = Nothing
    , _icUploadType = Nothing
    , _icPayload = pIcPayload_
    , _icCallback = Nothing
    }


-- | V1 error format.
icXgafv :: Lens' InvitationsCreate (Maybe Xgafv)
icXgafv = lens _icXgafv (\ s a -> s{_icXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
icUploadProtocol :: Lens' InvitationsCreate (Maybe Text)
icUploadProtocol
  = lens _icUploadProtocol
      (\ s a -> s{_icUploadProtocol = a})

-- | OAuth access token.
icAccessToken :: Lens' InvitationsCreate (Maybe Text)
icAccessToken
  = lens _icAccessToken
      (\ s a -> s{_icAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
icUploadType :: Lens' InvitationsCreate (Maybe Text)
icUploadType
  = lens _icUploadType (\ s a -> s{_icUploadType = a})

-- | Multipart request metadata.
icPayload :: Lens' InvitationsCreate Invitation
icPayload
  = lens _icPayload (\ s a -> s{_icPayload = a})

-- | JSONP
icCallback :: Lens' InvitationsCreate (Maybe Text)
icCallback
  = lens _icCallback (\ s a -> s{_icCallback = a})

instance GoogleRequest InvitationsCreate where
        type Rs InvitationsCreate = Invitation
        type Scopes InvitationsCreate =
             '["https://www.googleapis.com/auth/classroom.rosters"]
        requestClient InvitationsCreate'{..}
          = go _icXgafv _icUploadProtocol _icAccessToken
              _icUploadType
              _icCallback
              (Just AltJSON)
              _icPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy InvitationsCreateResource)
                      mempty
