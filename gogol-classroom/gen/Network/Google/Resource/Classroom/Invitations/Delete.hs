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
-- Module      : Network.Google.Resource.Classroom.Invitations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an invitation. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested invitation or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no invitation exists with the
-- requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomInvitationsDelete@.
module Network.Google.Resource.Classroom.Invitations.Delete
    (
    -- * REST Resource
      InvitationsDeleteResource

    -- * Creating a Request
    , invitationsDelete'
    , InvitationsDelete'

    -- * Request Lenses
    , idXgafv
    , idQuotaUser
    , idPrettyPrint
    , idUploadProtocol
    , idPp
    , idAccessToken
    , idUploadType
    , idBearerToken
    , idKey
    , idId
    , idOAuthToken
    , idFields
    , idCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomInvitationsDelete@ which the
-- 'InvitationsDelete'' request conforms to.
type InvitationsDeleteResource =
     "v1" :>
       "invitations" :>
         Capture "id" Text :>
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
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Delete '[JSON] Empty

-- | Deletes an invitation. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to delete
-- the requested invitation or for [general user permission errors][User
-- Permission Errors]. * \`NOT_FOUND\` if no invitation exists with the
-- requested ID.
--
-- /See:/ 'invitationsDelete'' smart constructor.
data InvitationsDelete' = InvitationsDelete'
    { _idXgafv          :: !(Maybe Text)
    , _idQuotaUser      :: !(Maybe Text)
    , _idPrettyPrint    :: !Bool
    , _idUploadProtocol :: !(Maybe Text)
    , _idPp             :: !Bool
    , _idAccessToken    :: !(Maybe Text)
    , _idUploadType     :: !(Maybe Text)
    , _idBearerToken    :: !(Maybe Text)
    , _idKey            :: !(Maybe AuthKey)
    , _idId             :: !Text
    , _idOAuthToken     :: !(Maybe OAuthToken)
    , _idFields         :: !(Maybe Text)
    , _idCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InvitationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idXgafv'
--
-- * 'idQuotaUser'
--
-- * 'idPrettyPrint'
--
-- * 'idUploadProtocol'
--
-- * 'idPp'
--
-- * 'idAccessToken'
--
-- * 'idUploadType'
--
-- * 'idBearerToken'
--
-- * 'idKey'
--
-- * 'idId'
--
-- * 'idOAuthToken'
--
-- * 'idFields'
--
-- * 'idCallback'
invitationsDelete'
    :: Text -- ^ 'id'
    -> InvitationsDelete'
invitationsDelete' pIdId_ =
    InvitationsDelete'
    { _idXgafv = Nothing
    , _idQuotaUser = Nothing
    , _idPrettyPrint = True
    , _idUploadProtocol = Nothing
    , _idPp = True
    , _idAccessToken = Nothing
    , _idUploadType = Nothing
    , _idBearerToken = Nothing
    , _idKey = Nothing
    , _idId = pIdId_
    , _idOAuthToken = Nothing
    , _idFields = Nothing
    , _idCallback = Nothing
    }

-- | V1 error format.
idXgafv :: Lens' InvitationsDelete' (Maybe Text)
idXgafv = lens _idXgafv (\ s a -> s{_idXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
idQuotaUser :: Lens' InvitationsDelete' (Maybe Text)
idQuotaUser
  = lens _idQuotaUser (\ s a -> s{_idQuotaUser = a})

-- | Returns response with indentations and line breaks.
idPrettyPrint :: Lens' InvitationsDelete' Bool
idPrettyPrint
  = lens _idPrettyPrint
      (\ s a -> s{_idPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
idUploadProtocol :: Lens' InvitationsDelete' (Maybe Text)
idUploadProtocol
  = lens _idUploadProtocol
      (\ s a -> s{_idUploadProtocol = a})

-- | Pretty-print response.
idPp :: Lens' InvitationsDelete' Bool
idPp = lens _idPp (\ s a -> s{_idPp = a})

-- | OAuth access token.
idAccessToken :: Lens' InvitationsDelete' (Maybe Text)
idAccessToken
  = lens _idAccessToken
      (\ s a -> s{_idAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
idUploadType :: Lens' InvitationsDelete' (Maybe Text)
idUploadType
  = lens _idUploadType (\ s a -> s{_idUploadType = a})

-- | OAuth bearer token.
idBearerToken :: Lens' InvitationsDelete' (Maybe Text)
idBearerToken
  = lens _idBearerToken
      (\ s a -> s{_idBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idKey :: Lens' InvitationsDelete' (Maybe AuthKey)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | Identifier of the invitation to delete.
idId :: Lens' InvitationsDelete' Text
idId = lens _idId (\ s a -> s{_idId = a})

-- | OAuth 2.0 token for the current user.
idOAuthToken :: Lens' InvitationsDelete' (Maybe OAuthToken)
idOAuthToken
  = lens _idOAuthToken (\ s a -> s{_idOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' InvitationsDelete' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

-- | JSONP
idCallback :: Lens' InvitationsDelete' (Maybe Text)
idCallback
  = lens _idCallback (\ s a -> s{_idCallback = a})

instance GoogleAuth InvitationsDelete' where
        authKey = idKey . _Just
        authToken = idOAuthToken . _Just

instance GoogleRequest InvitationsDelete' where
        type Rs InvitationsDelete' = Empty
        request = requestWithRoute defReq classroomURL
        requestWithRoute r u InvitationsDelete'{..}
          = go _idId _idXgafv _idUploadProtocol (Just _idPp)
              _idAccessToken
              _idUploadType
              _idBearerToken
              _idCallback
              _idQuotaUser
              (Just _idPrettyPrint)
              _idFields
              _idKey
              _idOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InvitationsDeleteResource)
                      r
                      u
