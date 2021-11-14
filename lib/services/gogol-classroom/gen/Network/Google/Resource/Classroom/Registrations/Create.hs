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
-- Module      : Network.Google.Resource.Classroom.Registrations.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a \`Registration\`, causing Classroom to start sending
-- notifications from the provided \`feed\` to the destination provided in
-- \`cloudPubSubTopic\`. Returns the created \`Registration\`. Currently,
-- this will be the same as the argument, but with server-assigned fields
-- such as \`expiry_time\` and \`id\` filled in. Note that any value
-- specified for the \`expiry_time\` or \`id\` fields will be ignored.
-- While Classroom may validate the \`cloudPubSubTopic\` and return errors
-- on a best effort basis, it is the caller\'s responsibility to ensure
-- that it exists and that Classroom has permission to publish to it. This
-- method may return the following error codes: * \`PERMISSION_DENIED\` if:
-- * the authenticated user does not have permission to receive
-- notifications from the requested field; or * the current user has not
-- granted access to the current Cloud project with the appropriate scope
-- for the requested feed. Note that domain-wide delegation of authority is
-- not currently supported for this purpose. If the request has the
-- appropriate scope, but no grant exists, a Request Errors is returned. *
-- another access error is encountered. * \`INVALID_ARGUMENT\` if: * no
-- \`cloudPubsubTopic\` is specified, or the specified \`cloudPubsubTopic\`
-- is not valid; or * no \`feed\` is specified, or the specified \`feed\`
-- is not valid. * \`NOT_FOUND\` if: * the specified \`feed\` cannot be
-- located, or the requesting user does not have permission to determine
-- whether or not it exists; or * the specified \`cloudPubsubTopic\` cannot
-- be located, or Classroom has not been granted permission to publish to
-- it.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.registrations.create@.
module Network.Google.Resource.Classroom.Registrations.Create
    (
    -- * REST Resource
      RegistrationsCreateResource

    -- * Creating a Request
    , registrationsCreate
    , RegistrationsCreate

    -- * Request Lenses
    , rcXgafv
    , rcUploadProtocol
    , rcAccessToken
    , rcUploadType
    , rcPayload
    , rcCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.registrations.create@ method which the
-- 'RegistrationsCreate' request conforms to.
type RegistrationsCreateResource =
     "v1" :>
       "registrations" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Registration :>
                       Post '[JSON] Registration

-- | Creates a \`Registration\`, causing Classroom to start sending
-- notifications from the provided \`feed\` to the destination provided in
-- \`cloudPubSubTopic\`. Returns the created \`Registration\`. Currently,
-- this will be the same as the argument, but with server-assigned fields
-- such as \`expiry_time\` and \`id\` filled in. Note that any value
-- specified for the \`expiry_time\` or \`id\` fields will be ignored.
-- While Classroom may validate the \`cloudPubSubTopic\` and return errors
-- on a best effort basis, it is the caller\'s responsibility to ensure
-- that it exists and that Classroom has permission to publish to it. This
-- method may return the following error codes: * \`PERMISSION_DENIED\` if:
-- * the authenticated user does not have permission to receive
-- notifications from the requested field; or * the current user has not
-- granted access to the current Cloud project with the appropriate scope
-- for the requested feed. Note that domain-wide delegation of authority is
-- not currently supported for this purpose. If the request has the
-- appropriate scope, but no grant exists, a Request Errors is returned. *
-- another access error is encountered. * \`INVALID_ARGUMENT\` if: * no
-- \`cloudPubsubTopic\` is specified, or the specified \`cloudPubsubTopic\`
-- is not valid; or * no \`feed\` is specified, or the specified \`feed\`
-- is not valid. * \`NOT_FOUND\` if: * the specified \`feed\` cannot be
-- located, or the requesting user does not have permission to determine
-- whether or not it exists; or * the specified \`cloudPubsubTopic\` cannot
-- be located, or Classroom has not been granted permission to publish to
-- it.
--
-- /See:/ 'registrationsCreate' smart constructor.
data RegistrationsCreate =
  RegistrationsCreate'
    { _rcXgafv :: !(Maybe Xgafv)
    , _rcUploadProtocol :: !(Maybe Text)
    , _rcAccessToken :: !(Maybe Text)
    , _rcUploadType :: !(Maybe Text)
    , _rcPayload :: !Registration
    , _rcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegistrationsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcXgafv'
--
-- * 'rcUploadProtocol'
--
-- * 'rcAccessToken'
--
-- * 'rcUploadType'
--
-- * 'rcPayload'
--
-- * 'rcCallback'
registrationsCreate
    :: Registration -- ^ 'rcPayload'
    -> RegistrationsCreate
registrationsCreate pRcPayload_ =
  RegistrationsCreate'
    { _rcXgafv = Nothing
    , _rcUploadProtocol = Nothing
    , _rcAccessToken = Nothing
    , _rcUploadType = Nothing
    , _rcPayload = pRcPayload_
    , _rcCallback = Nothing
    }


-- | V1 error format.
rcXgafv :: Lens' RegistrationsCreate (Maybe Xgafv)
rcXgafv = lens _rcXgafv (\ s a -> s{_rcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcUploadProtocol :: Lens' RegistrationsCreate (Maybe Text)
rcUploadProtocol
  = lens _rcUploadProtocol
      (\ s a -> s{_rcUploadProtocol = a})

-- | OAuth access token.
rcAccessToken :: Lens' RegistrationsCreate (Maybe Text)
rcAccessToken
  = lens _rcAccessToken
      (\ s a -> s{_rcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcUploadType :: Lens' RegistrationsCreate (Maybe Text)
rcUploadType
  = lens _rcUploadType (\ s a -> s{_rcUploadType = a})

-- | Multipart request metadata.
rcPayload :: Lens' RegistrationsCreate Registration
rcPayload
  = lens _rcPayload (\ s a -> s{_rcPayload = a})

-- | JSONP
rcCallback :: Lens' RegistrationsCreate (Maybe Text)
rcCallback
  = lens _rcCallback (\ s a -> s{_rcCallback = a})

instance GoogleRequest RegistrationsCreate where
        type Rs RegistrationsCreate = Registration
        type Scopes RegistrationsCreate =
             '["https://www.googleapis.com/auth/classroom.push-notifications"]
        requestClient RegistrationsCreate'{..}
          = go _rcXgafv _rcUploadProtocol _rcAccessToken
              _rcUploadType
              _rcCallback
              (Just AltJSON)
              _rcPayload
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy RegistrationsCreateResource)
                      mempty
