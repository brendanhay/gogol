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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Operations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference> for @securitycenter.organizations.operations.delete@.
module Network.Google.Resource.SecurityCenter.Organizations.Operations.Delete
    (
    -- * REST Resource
      OrganizationsOperationsDeleteResource

    -- * Creating a Request
    , organizationsOperationsDelete
    , OrganizationsOperationsDelete

    -- * Request Lenses
    , oodXgafv
    , oodUploadProtocol
    , oodAccessToken
    , oodUploadType
    , oodName
    , oodCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.operations.delete@ method which the
-- 'OrganizationsOperationsDelete' request conforms to.
type OrganizationsOperationsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a long-running operation. This method indicates that the client
-- is no longer interested in the operation result. It does not cancel the
-- operation. If the server doesn\'t support this method, it returns
-- \`google.rpc.Code.UNIMPLEMENTED\`.
--
-- /See:/ 'organizationsOperationsDelete' smart constructor.
data OrganizationsOperationsDelete =
  OrganizationsOperationsDelete'
    { _oodXgafv          :: !(Maybe Xgafv)
    , _oodUploadProtocol :: !(Maybe Text)
    , _oodAccessToken    :: !(Maybe Text)
    , _oodUploadType     :: !(Maybe Text)
    , _oodName           :: !Text
    , _oodCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsOperationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oodXgafv'
--
-- * 'oodUploadProtocol'
--
-- * 'oodAccessToken'
--
-- * 'oodUploadType'
--
-- * 'oodName'
--
-- * 'oodCallback'
organizationsOperationsDelete
    :: Text -- ^ 'oodName'
    -> OrganizationsOperationsDelete
organizationsOperationsDelete pOodName_ =
  OrganizationsOperationsDelete'
    { _oodXgafv = Nothing
    , _oodUploadProtocol = Nothing
    , _oodAccessToken = Nothing
    , _oodUploadType = Nothing
    , _oodName = pOodName_
    , _oodCallback = Nothing
    }


-- | V1 error format.
oodXgafv :: Lens' OrganizationsOperationsDelete (Maybe Xgafv)
oodXgafv = lens _oodXgafv (\ s a -> s{_oodXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oodUploadProtocol :: Lens' OrganizationsOperationsDelete (Maybe Text)
oodUploadProtocol
  = lens _oodUploadProtocol
      (\ s a -> s{_oodUploadProtocol = a})

-- | OAuth access token.
oodAccessToken :: Lens' OrganizationsOperationsDelete (Maybe Text)
oodAccessToken
  = lens _oodAccessToken
      (\ s a -> s{_oodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oodUploadType :: Lens' OrganizationsOperationsDelete (Maybe Text)
oodUploadType
  = lens _oodUploadType
      (\ s a -> s{_oodUploadType = a})

-- | The name of the operation resource to be deleted.
oodName :: Lens' OrganizationsOperationsDelete Text
oodName = lens _oodName (\ s a -> s{_oodName = a})

-- | JSONP
oodCallback :: Lens' OrganizationsOperationsDelete (Maybe Text)
oodCallback
  = lens _oodCallback (\ s a -> s{_oodCallback = a})

instance GoogleRequest OrganizationsOperationsDelete
         where
        type Rs OrganizationsOperationsDelete = Empty
        type Scopes OrganizationsOperationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsOperationsDelete'{..}
          = go _oodName _oodXgafv _oodUploadProtocol
              _oodAccessToken
              _oodUploadType
              _oodCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsOperationsDeleteResource)
                      mempty
