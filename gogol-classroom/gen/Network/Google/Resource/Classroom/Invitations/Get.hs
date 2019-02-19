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
-- Module      : Network.Google.Resource.Classroom.Invitations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an invitation. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to view
-- the requested invitation or for access errors. * \`NOT_FOUND\` if no
-- invitation exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.invitations.get@.
module Network.Google.Resource.Classroom.Invitations.Get
    (
    -- * REST Resource
      InvitationsGetResource

    -- * Creating a Request
    , invitationsGet
    , InvitationsGet

    -- * Request Lenses
    , igXgafv
    , igUploadProtocol
    , igAccessToken
    , igUploadType
    , igId
    , igCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.invitations.get@ method which the
-- 'InvitationsGet' request conforms to.
type InvitationsGetResource =
     "v1" :>
       "invitations" :>
         Capture "id" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Invitation

-- | Returns an invitation. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to view
-- the requested invitation or for access errors. * \`NOT_FOUND\` if no
-- invitation exists with the requested ID.
--
-- /See:/ 'invitationsGet' smart constructor.
data InvitationsGet =
  InvitationsGet'
    { _igXgafv          :: !(Maybe Xgafv)
    , _igUploadProtocol :: !(Maybe Text)
    , _igAccessToken    :: !(Maybe Text)
    , _igUploadType     :: !(Maybe Text)
    , _igId             :: !Text
    , _igCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InvitationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igXgafv'
--
-- * 'igUploadProtocol'
--
-- * 'igAccessToken'
--
-- * 'igUploadType'
--
-- * 'igId'
--
-- * 'igCallback'
invitationsGet
    :: Text -- ^ 'igId'
    -> InvitationsGet
invitationsGet pIgId_ =
  InvitationsGet'
    { _igXgafv = Nothing
    , _igUploadProtocol = Nothing
    , _igAccessToken = Nothing
    , _igUploadType = Nothing
    , _igId = pIgId_
    , _igCallback = Nothing
    }


-- | V1 error format.
igXgafv :: Lens' InvitationsGet (Maybe Xgafv)
igXgafv = lens _igXgafv (\ s a -> s{_igXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
igUploadProtocol :: Lens' InvitationsGet (Maybe Text)
igUploadProtocol
  = lens _igUploadProtocol
      (\ s a -> s{_igUploadProtocol = a})

-- | OAuth access token.
igAccessToken :: Lens' InvitationsGet (Maybe Text)
igAccessToken
  = lens _igAccessToken
      (\ s a -> s{_igAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
igUploadType :: Lens' InvitationsGet (Maybe Text)
igUploadType
  = lens _igUploadType (\ s a -> s{_igUploadType = a})

-- | Identifier of the invitation to return.
igId :: Lens' InvitationsGet Text
igId = lens _igId (\ s a -> s{_igId = a})

-- | JSONP
igCallback :: Lens' InvitationsGet (Maybe Text)
igCallback
  = lens _igCallback (\ s a -> s{_igCallback = a})

instance GoogleRequest InvitationsGet where
        type Rs InvitationsGet = Invitation
        type Scopes InvitationsGet =
             '["https://www.googleapis.com/auth/classroom.rosters",
               "https://www.googleapis.com/auth/classroom.rosters.readonly"]
        requestClient InvitationsGet'{..}
          = go _igId _igXgafv _igUploadProtocol _igAccessToken
              _igUploadType
              _igCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient (Proxy :: Proxy InvitationsGetResource)
                      mempty
