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
-- Module      : Network.Google.Resource.Classroom.Registrations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a \`Registration\`, causing Classroom to stop sending
-- notifications for that \`Registration\`.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.registrations.delete@.
module Network.Google.Resource.Classroom.Registrations.Delete
    (
    -- * REST Resource
      RegistrationsDeleteResource

    -- * Creating a Request
    , registrationsDelete
    , RegistrationsDelete

    -- * Request Lenses
    , rdRegistrationId
    , rdXgafv
    , rdUploadProtocol
    , rdAccessToken
    , rdUploadType
    , rdCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.registrations.delete@ method which the
-- 'RegistrationsDelete' request conforms to.
type RegistrationsDeleteResource =
     "v1" :>
       "registrations" :>
         Capture "registrationId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a \`Registration\`, causing Classroom to stop sending
-- notifications for that \`Registration\`.
--
-- /See:/ 'registrationsDelete' smart constructor.
data RegistrationsDelete =
  RegistrationsDelete'
    { _rdRegistrationId :: !Text
    , _rdXgafv :: !(Maybe Xgafv)
    , _rdUploadProtocol :: !(Maybe Text)
    , _rdAccessToken :: !(Maybe Text)
    , _rdUploadType :: !(Maybe Text)
    , _rdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegistrationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRegistrationId'
--
-- * 'rdXgafv'
--
-- * 'rdUploadProtocol'
--
-- * 'rdAccessToken'
--
-- * 'rdUploadType'
--
-- * 'rdCallback'
registrationsDelete
    :: Text -- ^ 'rdRegistrationId'
    -> RegistrationsDelete
registrationsDelete pRdRegistrationId_ =
  RegistrationsDelete'
    { _rdRegistrationId = pRdRegistrationId_
    , _rdXgafv = Nothing
    , _rdUploadProtocol = Nothing
    , _rdAccessToken = Nothing
    , _rdUploadType = Nothing
    , _rdCallback = Nothing
    }


-- | The \`registration_id\` of the \`Registration\` to be deleted.
rdRegistrationId :: Lens' RegistrationsDelete Text
rdRegistrationId
  = lens _rdRegistrationId
      (\ s a -> s{_rdRegistrationId = a})

-- | V1 error format.
rdXgafv :: Lens' RegistrationsDelete (Maybe Xgafv)
rdXgafv = lens _rdXgafv (\ s a -> s{_rdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rdUploadProtocol :: Lens' RegistrationsDelete (Maybe Text)
rdUploadProtocol
  = lens _rdUploadProtocol
      (\ s a -> s{_rdUploadProtocol = a})

-- | OAuth access token.
rdAccessToken :: Lens' RegistrationsDelete (Maybe Text)
rdAccessToken
  = lens _rdAccessToken
      (\ s a -> s{_rdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rdUploadType :: Lens' RegistrationsDelete (Maybe Text)
rdUploadType
  = lens _rdUploadType (\ s a -> s{_rdUploadType = a})

-- | JSONP
rdCallback :: Lens' RegistrationsDelete (Maybe Text)
rdCallback
  = lens _rdCallback (\ s a -> s{_rdCallback = a})

instance GoogleRequest RegistrationsDelete where
        type Rs RegistrationsDelete = Empty
        type Scopes RegistrationsDelete =
             '["https://www.googleapis.com/auth/classroom.push-notifications"]
        requestClient RegistrationsDelete'{..}
          = go _rdRegistrationId _rdXgafv _rdUploadProtocol
              _rdAccessToken
              _rdUploadType
              _rdCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy RegistrationsDeleteResource)
                      mempty
