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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Policies.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or creates a policy.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.policies.patch@.
module Network.Google.Resource.AndroidManagement.Enterprises.Policies.Patch
    (
    -- * REST Resource
      EnterprisesPoliciesPatchResource

    -- * Creating a Request
    , enterprisesPoliciesPatch
    , EnterprisesPoliciesPatch

    -- * Request Lenses
    , eppXgafv
    , eppUploadProtocol
    , eppUpdateMask
    , eppAccessToken
    , eppUploadType
    , eppPayload
    , eppName
    , eppCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.policies.patch@ method which the
-- 'EnterprisesPoliciesPatch' request conforms to.
type EnterprisesPoliciesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Policy :> Patch '[JSON] Policy

-- | Updates or creates a policy.
--
-- /See:/ 'enterprisesPoliciesPatch' smart constructor.
data EnterprisesPoliciesPatch =
  EnterprisesPoliciesPatch'
    { _eppXgafv :: !(Maybe Xgafv)
    , _eppUploadProtocol :: !(Maybe Text)
    , _eppUpdateMask :: !(Maybe GFieldMask)
    , _eppAccessToken :: !(Maybe Text)
    , _eppUploadType :: !(Maybe Text)
    , _eppPayload :: !Policy
    , _eppName :: !Text
    , _eppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesPoliciesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eppXgafv'
--
-- * 'eppUploadProtocol'
--
-- * 'eppUpdateMask'
--
-- * 'eppAccessToken'
--
-- * 'eppUploadType'
--
-- * 'eppPayload'
--
-- * 'eppName'
--
-- * 'eppCallback'
enterprisesPoliciesPatch
    :: Policy -- ^ 'eppPayload'
    -> Text -- ^ 'eppName'
    -> EnterprisesPoliciesPatch
enterprisesPoliciesPatch pEppPayload_ pEppName_ =
  EnterprisesPoliciesPatch'
    { _eppXgafv = Nothing
    , _eppUploadProtocol = Nothing
    , _eppUpdateMask = Nothing
    , _eppAccessToken = Nothing
    , _eppUploadType = Nothing
    , _eppPayload = pEppPayload_
    , _eppName = pEppName_
    , _eppCallback = Nothing
    }


-- | V1 error format.
eppXgafv :: Lens' EnterprisesPoliciesPatch (Maybe Xgafv)
eppXgafv = lens _eppXgafv (\ s a -> s{_eppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eppUploadProtocol :: Lens' EnterprisesPoliciesPatch (Maybe Text)
eppUploadProtocol
  = lens _eppUploadProtocol
      (\ s a -> s{_eppUploadProtocol = a})

-- | The field mask indicating the fields to update. If not set, all
-- modifiable fields will be modified.
eppUpdateMask :: Lens' EnterprisesPoliciesPatch (Maybe GFieldMask)
eppUpdateMask
  = lens _eppUpdateMask
      (\ s a -> s{_eppUpdateMask = a})

-- | OAuth access token.
eppAccessToken :: Lens' EnterprisesPoliciesPatch (Maybe Text)
eppAccessToken
  = lens _eppAccessToken
      (\ s a -> s{_eppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eppUploadType :: Lens' EnterprisesPoliciesPatch (Maybe Text)
eppUploadType
  = lens _eppUploadType
      (\ s a -> s{_eppUploadType = a})

-- | Multipart request metadata.
eppPayload :: Lens' EnterprisesPoliciesPatch Policy
eppPayload
  = lens _eppPayload (\ s a -> s{_eppPayload = a})

-- | The name of the policy in the form
-- enterprises\/{enterpriseId}\/policies\/{policyId}.
eppName :: Lens' EnterprisesPoliciesPatch Text
eppName = lens _eppName (\ s a -> s{_eppName = a})

-- | JSONP
eppCallback :: Lens' EnterprisesPoliciesPatch (Maybe Text)
eppCallback
  = lens _eppCallback (\ s a -> s{_eppCallback = a})

instance GoogleRequest EnterprisesPoliciesPatch where
        type Rs EnterprisesPoliciesPatch = Policy
        type Scopes EnterprisesPoliciesPatch =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesPoliciesPatch'{..}
          = go _eppName _eppXgafv _eppUploadProtocol
              _eppUpdateMask
              _eppAccessToken
              _eppUploadType
              _eppCallback
              (Just AltJSON)
              _eppPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesPoliciesPatchResource)
                      mempty
