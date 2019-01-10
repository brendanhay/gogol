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
-- Module      : Network.Google.Resource.IAM.Roles.QueryGrantableRoles
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries roles that can be granted on a particular resource. A role is
-- grantable if it can be used as the role in a binding for a policy for
-- that resource.
--
-- /See:/ <https://cloud.google.com/iam/ Identity and Access Management (IAM) API Reference> for @iam.roles.queryGrantableRoles@.
module Network.Google.Resource.IAM.Roles.QueryGrantableRoles
    (
    -- * REST Resource
      RolesQueryGrantableRolesResource

    -- * Creating a Request
    , rolesQueryGrantableRoles
    , RolesQueryGrantableRoles

    -- * Request Lenses
    , rqgrXgafv
    , rqgrUploadProtocol
    , rqgrAccessToken
    , rqgrUploadType
    , rqgrPayload
    , rqgrCallback
    ) where

import           Network.Google.IAM.Types
import           Network.Google.Prelude

-- | A resource alias for @iam.roles.queryGrantableRoles@ method which the
-- 'RolesQueryGrantableRoles' request conforms to.
type RolesQueryGrantableRolesResource =
     "v1" :>
       "roles:queryGrantableRoles" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] QueryGrantableRolesRequest :>
                       Post '[JSON] QueryGrantableRolesResponse

-- | Queries roles that can be granted on a particular resource. A role is
-- grantable if it can be used as the role in a binding for a policy for
-- that resource.
--
-- /See:/ 'rolesQueryGrantableRoles' smart constructor.
data RolesQueryGrantableRoles = RolesQueryGrantableRoles'
    { _rqgrXgafv          :: !(Maybe Xgafv)
    , _rqgrUploadProtocol :: !(Maybe Text)
    , _rqgrAccessToken    :: !(Maybe Text)
    , _rqgrUploadType     :: !(Maybe Text)
    , _rqgrPayload        :: !QueryGrantableRolesRequest
    , _rqgrCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RolesQueryGrantableRoles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqgrXgafv'
--
-- * 'rqgrUploadProtocol'
--
-- * 'rqgrAccessToken'
--
-- * 'rqgrUploadType'
--
-- * 'rqgrPayload'
--
-- * 'rqgrCallback'
rolesQueryGrantableRoles
    :: QueryGrantableRolesRequest -- ^ 'rqgrPayload'
    -> RolesQueryGrantableRoles
rolesQueryGrantableRoles pRqgrPayload_ =
    RolesQueryGrantableRoles'
    { _rqgrXgafv = Nothing
    , _rqgrUploadProtocol = Nothing
    , _rqgrAccessToken = Nothing
    , _rqgrUploadType = Nothing
    , _rqgrPayload = pRqgrPayload_
    , _rqgrCallback = Nothing
    }

-- | V1 error format.
rqgrXgafv :: Lens' RolesQueryGrantableRoles (Maybe Xgafv)
rqgrXgafv
  = lens _rqgrXgafv (\ s a -> s{_rqgrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rqgrUploadProtocol :: Lens' RolesQueryGrantableRoles (Maybe Text)
rqgrUploadProtocol
  = lens _rqgrUploadProtocol
      (\ s a -> s{_rqgrUploadProtocol = a})

-- | OAuth access token.
rqgrAccessToken :: Lens' RolesQueryGrantableRoles (Maybe Text)
rqgrAccessToken
  = lens _rqgrAccessToken
      (\ s a -> s{_rqgrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rqgrUploadType :: Lens' RolesQueryGrantableRoles (Maybe Text)
rqgrUploadType
  = lens _rqgrUploadType
      (\ s a -> s{_rqgrUploadType = a})

-- | Multipart request metadata.
rqgrPayload :: Lens' RolesQueryGrantableRoles QueryGrantableRolesRequest
rqgrPayload
  = lens _rqgrPayload (\ s a -> s{_rqgrPayload = a})

-- | JSONP
rqgrCallback :: Lens' RolesQueryGrantableRoles (Maybe Text)
rqgrCallback
  = lens _rqgrCallback (\ s a -> s{_rqgrCallback = a})

instance GoogleRequest RolesQueryGrantableRoles where
        type Rs RolesQueryGrantableRoles =
             QueryGrantableRolesResponse
        type Scopes RolesQueryGrantableRoles =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient RolesQueryGrantableRoles'{..}
          = go _rqgrXgafv _rqgrUploadProtocol _rqgrAccessToken
              _rqgrUploadType
              _rqgrCallback
              (Just AltJSON)
              _rqgrPayload
              iAMService
          where go
                  = buildClient
                      (Proxy :: Proxy RolesQueryGrantableRolesResource)
                      mempty
