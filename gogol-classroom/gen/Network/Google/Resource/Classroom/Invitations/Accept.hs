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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Accepts an invitation, removing it and adding the invited user to the
-- teachers or students (as appropriate) of the specified course. Only the
-- invited user may accept an invitation. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to accept the requested invitation or for [general user
-- permission errors][User Permission Errors]. * \`NOT_FOUND\` if no
-- invitation exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomInvitationsAccept@.
module Network.Google.Resource.Classroom.Invitations.Accept
    (
    -- * REST Resource
      InvitationsAcceptResource

    -- * Creating a Request
    , invitationsAccept'
    , InvitationsAccept'

    -- * Request Lenses
    , iaXgafv
    , iaUploadProtocol
    , iaPp
    , iaAccessToken
    , iaUploadType
    , iaBearerToken
    , iaId
    , iaCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomInvitationsAccept@ method which the
-- 'InvitationsAccept'' request conforms to.
type InvitationsAcceptResource =
     "v1" :>
       "invitations" :>
         CaptureMode "id" "accept" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Accepts an invitation, removing it and adding the invited user to the
-- teachers or students (as appropriate) of the specified course. Only the
-- invited user may accept an invitation. This method returns the following
-- error codes: * \`PERMISSION_DENIED\` if the requesting user is not
-- permitted to accept the requested invitation or for [general user
-- permission errors][User Permission Errors]. * \`NOT_FOUND\` if no
-- invitation exists with the requested ID.
--
-- /See:/ 'invitationsAccept'' smart constructor.
data InvitationsAccept' = InvitationsAccept'
    { _iaXgafv          :: !(Maybe Text)
    , _iaUploadProtocol :: !(Maybe Text)
    , _iaPp             :: !Bool
    , _iaAccessToken    :: !(Maybe Text)
    , _iaUploadType     :: !(Maybe Text)
    , _iaBearerToken    :: !(Maybe Text)
    , _iaId             :: !Text
    , _iaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsAccept'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaXgafv'
--
-- * 'iaUploadProtocol'
--
-- * 'iaPp'
--
-- * 'iaAccessToken'
--
-- * 'iaUploadType'
--
-- * 'iaBearerToken'
--
-- * 'iaId'
--
-- * 'iaCallback'
invitationsAccept'
    :: Text -- ^ 'id'
    -> InvitationsAccept'
invitationsAccept' pIaId_ =
    InvitationsAccept'
    { _iaXgafv = Nothing
    , _iaUploadProtocol = Nothing
    , _iaPp = True
    , _iaAccessToken = Nothing
    , _iaUploadType = Nothing
    , _iaBearerToken = Nothing
    , _iaId = pIaId_
    , _iaCallback = Nothing
    }

-- | V1 error format.
iaXgafv :: Lens' InvitationsAccept' (Maybe Text)
iaXgafv = lens _iaXgafv (\ s a -> s{_iaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iaUploadProtocol :: Lens' InvitationsAccept' (Maybe Text)
iaUploadProtocol
  = lens _iaUploadProtocol
      (\ s a -> s{_iaUploadProtocol = a})

-- | Pretty-print response.
iaPp :: Lens' InvitationsAccept' Bool
iaPp = lens _iaPp (\ s a -> s{_iaPp = a})

-- | OAuth access token.
iaAccessToken :: Lens' InvitationsAccept' (Maybe Text)
iaAccessToken
  = lens _iaAccessToken
      (\ s a -> s{_iaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iaUploadType :: Lens' InvitationsAccept' (Maybe Text)
iaUploadType
  = lens _iaUploadType (\ s a -> s{_iaUploadType = a})

-- | OAuth bearer token.
iaBearerToken :: Lens' InvitationsAccept' (Maybe Text)
iaBearerToken
  = lens _iaBearerToken
      (\ s a -> s{_iaBearerToken = a})

-- | Identifier of the invitation to accept.
iaId :: Lens' InvitationsAccept' Text
iaId = lens _iaId (\ s a -> s{_iaId = a})

-- | JSONP
iaCallback :: Lens' InvitationsAccept' (Maybe Text)
iaCallback
  = lens _iaCallback (\ s a -> s{_iaCallback = a})

instance GoogleRequest InvitationsAccept' where
        type Rs InvitationsAccept' = Empty
        requestClient InvitationsAccept'{..}
          = go _iaId _iaXgafv _iaUploadProtocol (Just _iaPp)
              _iaAccessToken
              _iaUploadType
              _iaBearerToken
              _iaCallback
              (Just AltJSON)
              classroom
          where go
                  = buildClient
                      (Proxy :: Proxy InvitationsAcceptResource)
                      mempty
