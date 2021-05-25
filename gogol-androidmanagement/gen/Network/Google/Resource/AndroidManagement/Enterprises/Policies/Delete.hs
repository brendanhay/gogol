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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Policies.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a policy. This operation is only permitted if no devices are
-- currently referencing the policy.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.policies.delete@.
module Network.Google.Resource.AndroidManagement.Enterprises.Policies.Delete
    (
    -- * REST Resource
      EnterprisesPoliciesDeleteResource

    -- * Creating a Request
    , enterprisesPoliciesDelete
    , EnterprisesPoliciesDelete

    -- * Request Lenses
    , epdXgafv
    , epdUploadProtocol
    , epdAccessToken
    , epdUploadType
    , epdName
    , epdCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.policies.delete@ method which the
-- 'EnterprisesPoliciesDelete' request conforms to.
type EnterprisesPoliciesDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a policy. This operation is only permitted if no devices are
-- currently referencing the policy.
--
-- /See:/ 'enterprisesPoliciesDelete' smart constructor.
data EnterprisesPoliciesDelete =
  EnterprisesPoliciesDelete'
    { _epdXgafv :: !(Maybe Xgafv)
    , _epdUploadProtocol :: !(Maybe Text)
    , _epdAccessToken :: !(Maybe Text)
    , _epdUploadType :: !(Maybe Text)
    , _epdName :: !Text
    , _epdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesPoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epdXgafv'
--
-- * 'epdUploadProtocol'
--
-- * 'epdAccessToken'
--
-- * 'epdUploadType'
--
-- * 'epdName'
--
-- * 'epdCallback'
enterprisesPoliciesDelete
    :: Text -- ^ 'epdName'
    -> EnterprisesPoliciesDelete
enterprisesPoliciesDelete pEpdName_ =
  EnterprisesPoliciesDelete'
    { _epdXgafv = Nothing
    , _epdUploadProtocol = Nothing
    , _epdAccessToken = Nothing
    , _epdUploadType = Nothing
    , _epdName = pEpdName_
    , _epdCallback = Nothing
    }


-- | V1 error format.
epdXgafv :: Lens' EnterprisesPoliciesDelete (Maybe Xgafv)
epdXgafv = lens _epdXgafv (\ s a -> s{_epdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
epdUploadProtocol :: Lens' EnterprisesPoliciesDelete (Maybe Text)
epdUploadProtocol
  = lens _epdUploadProtocol
      (\ s a -> s{_epdUploadProtocol = a})

-- | OAuth access token.
epdAccessToken :: Lens' EnterprisesPoliciesDelete (Maybe Text)
epdAccessToken
  = lens _epdAccessToken
      (\ s a -> s{_epdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
epdUploadType :: Lens' EnterprisesPoliciesDelete (Maybe Text)
epdUploadType
  = lens _epdUploadType
      (\ s a -> s{_epdUploadType = a})

-- | The name of the policy in the form
-- enterprises\/{enterpriseId}\/policies\/{policyId}.
epdName :: Lens' EnterprisesPoliciesDelete Text
epdName = lens _epdName (\ s a -> s{_epdName = a})

-- | JSONP
epdCallback :: Lens' EnterprisesPoliciesDelete (Maybe Text)
epdCallback
  = lens _epdCallback (\ s a -> s{_epdCallback = a})

instance GoogleRequest EnterprisesPoliciesDelete
         where
        type Rs EnterprisesPoliciesDelete = Empty
        type Scopes EnterprisesPoliciesDelete =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesPoliciesDelete'{..}
          = go _epdName _epdXgafv _epdUploadProtocol
              _epdAccessToken
              _epdUploadType
              _epdCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesPoliciesDeleteResource)
                      mempty
