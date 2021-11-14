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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Policies.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a policy.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.policies.get@.
module Network.Google.Resource.AndroidManagement.Enterprises.Policies.Get
    (
    -- * REST Resource
      EnterprisesPoliciesGetResource

    -- * Creating a Request
    , enterprisesPoliciesGet
    , EnterprisesPoliciesGet

    -- * Request Lenses
    , epgXgafv
    , epgUploadProtocol
    , epgAccessToken
    , epgUploadType
    , epgName
    , epgCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.policies.get@ method which the
-- 'EnterprisesPoliciesGet' request conforms to.
type EnterprisesPoliciesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets a policy.
--
-- /See:/ 'enterprisesPoliciesGet' smart constructor.
data EnterprisesPoliciesGet =
  EnterprisesPoliciesGet'
    { _epgXgafv :: !(Maybe Xgafv)
    , _epgUploadProtocol :: !(Maybe Text)
    , _epgAccessToken :: !(Maybe Text)
    , _epgUploadType :: !(Maybe Text)
    , _epgName :: !Text
    , _epgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesPoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epgXgafv'
--
-- * 'epgUploadProtocol'
--
-- * 'epgAccessToken'
--
-- * 'epgUploadType'
--
-- * 'epgName'
--
-- * 'epgCallback'
enterprisesPoliciesGet
    :: Text -- ^ 'epgName'
    -> EnterprisesPoliciesGet
enterprisesPoliciesGet pEpgName_ =
  EnterprisesPoliciesGet'
    { _epgXgafv = Nothing
    , _epgUploadProtocol = Nothing
    , _epgAccessToken = Nothing
    , _epgUploadType = Nothing
    , _epgName = pEpgName_
    , _epgCallback = Nothing
    }


-- | V1 error format.
epgXgafv :: Lens' EnterprisesPoliciesGet (Maybe Xgafv)
epgXgafv = lens _epgXgafv (\ s a -> s{_epgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
epgUploadProtocol :: Lens' EnterprisesPoliciesGet (Maybe Text)
epgUploadProtocol
  = lens _epgUploadProtocol
      (\ s a -> s{_epgUploadProtocol = a})

-- | OAuth access token.
epgAccessToken :: Lens' EnterprisesPoliciesGet (Maybe Text)
epgAccessToken
  = lens _epgAccessToken
      (\ s a -> s{_epgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
epgUploadType :: Lens' EnterprisesPoliciesGet (Maybe Text)
epgUploadType
  = lens _epgUploadType
      (\ s a -> s{_epgUploadType = a})

-- | The name of the policy in the form
-- enterprises\/{enterpriseId}\/policies\/{policyId}.
epgName :: Lens' EnterprisesPoliciesGet Text
epgName = lens _epgName (\ s a -> s{_epgName = a})

-- | JSONP
epgCallback :: Lens' EnterprisesPoliciesGet (Maybe Text)
epgCallback
  = lens _epgCallback (\ s a -> s{_epgCallback = a})

instance GoogleRequest EnterprisesPoliciesGet where
        type Rs EnterprisesPoliciesGet = Policy
        type Scopes EnterprisesPoliciesGet =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesPoliciesGet'{..}
          = go _epgName _epgXgafv _epgUploadProtocol
              _epgAccessToken
              _epgUploadType
              _epgCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesPoliciesGetResource)
                      mempty
