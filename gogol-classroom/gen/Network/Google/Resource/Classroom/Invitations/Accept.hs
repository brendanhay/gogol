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
    , iaQuotaUser
    , iaPrettyPrint
    , iaUploadProtocol
    , iaPp
    , iaAccessToken
    , iaUploadType
    , iaBearerToken
    , iaKey
    , iaId
    , iaOAuthToken
    , iaFields
    , iaCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomInvitationsAccept@ which the
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
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Post '[JSON] Empty

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
    , _iaQuotaUser      :: !(Maybe Text)
    , _iaPrettyPrint    :: !Bool
    , _iaUploadProtocol :: !(Maybe Text)
    , _iaPp             :: !Bool
    , _iaAccessToken    :: !(Maybe Text)
    , _iaUploadType     :: !(Maybe Text)
    , _iaBearerToken    :: !(Maybe Text)
    , _iaKey            :: !(Maybe Key)
    , _iaId             :: !Text
    , _iaOAuthToken     :: !(Maybe OAuthToken)
    , _iaFields         :: !(Maybe Text)
    , _iaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsAccept'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaXgafv'
--
-- * 'iaQuotaUser'
--
-- * 'iaPrettyPrint'
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
-- * 'iaKey'
--
-- * 'iaId'
--
-- * 'iaOAuthToken'
--
-- * 'iaFields'
--
-- * 'iaCallback'
invitationsAccept'
    :: Text -- ^ 'id'
    -> InvitationsAccept'
invitationsAccept' pIaId_ =
    InvitationsAccept'
    { _iaXgafv = Nothing
    , _iaQuotaUser = Nothing
    , _iaPrettyPrint = True
    , _iaUploadProtocol = Nothing
    , _iaPp = True
    , _iaAccessToken = Nothing
    , _iaUploadType = Nothing
    , _iaBearerToken = Nothing
    , _iaKey = Nothing
    , _iaId = pIaId_
    , _iaOAuthToken = Nothing
    , _iaFields = Nothing
    , _iaCallback = Nothing
    }

-- | V1 error format.
iaXgafv :: Lens' InvitationsAccept' (Maybe Text)
iaXgafv = lens _iaXgafv (\ s a -> s{_iaXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
iaQuotaUser :: Lens' InvitationsAccept' (Maybe Text)
iaQuotaUser
  = lens _iaQuotaUser (\ s a -> s{_iaQuotaUser = a})

-- | Returns response with indentations and line breaks.
iaPrettyPrint :: Lens' InvitationsAccept' Bool
iaPrettyPrint
  = lens _iaPrettyPrint
      (\ s a -> s{_iaPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iaKey :: Lens' InvitationsAccept' (Maybe Key)
iaKey = lens _iaKey (\ s a -> s{_iaKey = a})

-- | Identifier of the invitation to accept.
iaId :: Lens' InvitationsAccept' Text
iaId = lens _iaId (\ s a -> s{_iaId = a})

-- | OAuth 2.0 token for the current user.
iaOAuthToken :: Lens' InvitationsAccept' (Maybe OAuthToken)
iaOAuthToken
  = lens _iaOAuthToken (\ s a -> s{_iaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iaFields :: Lens' InvitationsAccept' (Maybe Text)
iaFields = lens _iaFields (\ s a -> s{_iaFields = a})

-- | JSONP
iaCallback :: Lens' InvitationsAccept' (Maybe Text)
iaCallback
  = lens _iaCallback (\ s a -> s{_iaCallback = a})

instance GoogleAuth InvitationsAccept' where
        authKey = iaKey . _Just
        authToken = iaOAuthToken . _Just

instance GoogleRequest InvitationsAccept' where
        type Rs InvitationsAccept' = Empty
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u InvitationsAccept'{..}
          = go _iaId _iaXgafv _iaUploadProtocol (Just _iaPp)
              _iaAccessToken
              _iaUploadType
              _iaBearerToken
              _iaCallback
              _iaQuotaUser
              (Just _iaPrettyPrint)
              _iaFields
              _iaKey
              _iaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InvitationsAcceptResource)
                      r
                      u
