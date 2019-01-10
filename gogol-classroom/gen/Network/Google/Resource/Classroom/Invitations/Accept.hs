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
-- Module      : Network.Google.Resource.Classroom.Invitations.Accept
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts an invitation, removing it and adding the invited user to the
-- teachers or students (as appropriate) of the specified course. Only the
-- invited user may accept an invitation. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to accept the requested invitation or for access errors. *
-- \`FAILED_PRECONDITION\` for the following request errors: *
-- CourseMemberLimitReached * CourseNotModifiable *
-- CourseTeacherLimitReached * UserGroupsMembershipLimitReached *
-- \`NOT_FOUND\` if no invitation exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.accept@.
module Network.Google.Resource.Classroom.Invitations.Accept
    (
    -- * REST Resource
      InvitationsAcceptResource

    -- * Creating a Request
    , invitationsAccept
    , InvitationsAccept

    -- * Request Lenses
    , iaXgafv
    , iaUploadProtocol
    , iaAccessToken
    , iaUploadType
    , iaId
    , iaCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.invitations.accept@ method which the
-- 'InvitationsAccept' request conforms to.
type InvitationsAcceptResource =
     "v1" :>
       "invitations" :>
         CaptureMode "id" "accept" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Accepts an invitation, removing it and adding the invited user to the
-- teachers or students (as appropriate) of the specified course. Only the
-- invited user may accept an invitation. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to accept the requested invitation or for access errors. *
-- \`FAILED_PRECONDITION\` for the following request errors: *
-- CourseMemberLimitReached * CourseNotModifiable *
-- CourseTeacherLimitReached * UserGroupsMembershipLimitReached *
-- \`NOT_FOUND\` if no invitation exists with the requested ID.
--
-- /See:/ 'invitationsAccept' smart constructor.
data InvitationsAccept = InvitationsAccept'
    { _iaXgafv          :: !(Maybe Xgafv)
    , _iaUploadProtocol :: !(Maybe Text)
    , _iaAccessToken    :: !(Maybe Text)
    , _iaUploadType     :: !(Maybe Text)
    , _iaId             :: !Text
    , _iaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsAccept' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaXgafv'
--
-- * 'iaUploadProtocol'
--
-- * 'iaAccessToken'
--
-- * 'iaUploadType'
--
-- * 'iaId'
--
-- * 'iaCallback'
invitationsAccept
    :: Text -- ^ 'iaId'
    -> InvitationsAccept
invitationsAccept pIaId_ =
    InvitationsAccept'
    { _iaXgafv = Nothing
    , _iaUploadProtocol = Nothing
    , _iaAccessToken = Nothing
    , _iaUploadType = Nothing
    , _iaId = pIaId_
    , _iaCallback = Nothing
    }

-- | V1 error format.
iaXgafv :: Lens' InvitationsAccept (Maybe Xgafv)
iaXgafv = lens _iaXgafv (\ s a -> s{_iaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iaUploadProtocol :: Lens' InvitationsAccept (Maybe Text)
iaUploadProtocol
  = lens _iaUploadProtocol
      (\ s a -> s{_iaUploadProtocol = a})

-- | OAuth access token.
iaAccessToken :: Lens' InvitationsAccept (Maybe Text)
iaAccessToken
  = lens _iaAccessToken
      (\ s a -> s{_iaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iaUploadType :: Lens' InvitationsAccept (Maybe Text)
iaUploadType
  = lens _iaUploadType (\ s a -> s{_iaUploadType = a})

-- | Identifier of the invitation to accept.
iaId :: Lens' InvitationsAccept Text
iaId = lens _iaId (\ s a -> s{_iaId = a})

-- | JSONP
iaCallback :: Lens' InvitationsAccept (Maybe Text)
iaCallback
  = lens _iaCallback (\ s a -> s{_iaCallback = a})

instance GoogleRequest InvitationsAccept where
        type Rs InvitationsAccept = Empty
        type Scopes InvitationsAccept =
             '["https://www.googleapis.com/auth/classroom.rosters"]
        requestClient InvitationsAccept'{..}
          = go _iaId _iaXgafv _iaUploadProtocol _iaAccessToken
              _iaUploadType
              _iaCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy InvitationsAcceptResource)
                      mempty
