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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates an entitlement to an app for a user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.update@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Update
    (
    -- * REST Resource
      EntitlementsUpdateResource

    -- * Creating a Request
    , entitlementsUpdate
    , EntitlementsUpdate

    -- * Request Lenses
    , euEntitlementId
    , euXgafv
    , euUploadProtocol
    , euEnterpriseId
    , euAccessToken
    , euUploadType
    , euPayload
    , euInstall
    , euUserId
    , euCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.update@ method which the
-- 'EntitlementsUpdate' request conforms to.
type EntitlementsUpdateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   Capture "entitlementId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "install" Bool :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Entitlement :>
                                     Put '[JSON] Entitlement

-- | Adds or updates an entitlement to an app for a user.
--
-- /See:/ 'entitlementsUpdate' smart constructor.
data EntitlementsUpdate =
  EntitlementsUpdate'
    { _euEntitlementId :: !Text
    , _euXgafv :: !(Maybe Xgafv)
    , _euUploadProtocol :: !(Maybe Text)
    , _euEnterpriseId :: !Text
    , _euAccessToken :: !(Maybe Text)
    , _euUploadType :: !(Maybe Text)
    , _euPayload :: !Entitlement
    , _euInstall :: !(Maybe Bool)
    , _euUserId :: !Text
    , _euCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntitlementsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euEntitlementId'
--
-- * 'euXgafv'
--
-- * 'euUploadProtocol'
--
-- * 'euEnterpriseId'
--
-- * 'euAccessToken'
--
-- * 'euUploadType'
--
-- * 'euPayload'
--
-- * 'euInstall'
--
-- * 'euUserId'
--
-- * 'euCallback'
entitlementsUpdate
    :: Text -- ^ 'euEntitlementId'
    -> Text -- ^ 'euEnterpriseId'
    -> Entitlement -- ^ 'euPayload'
    -> Text -- ^ 'euUserId'
    -> EntitlementsUpdate
entitlementsUpdate pEuEntitlementId_ pEuEnterpriseId_ pEuPayload_ pEuUserId_ =
  EntitlementsUpdate'
    { _euEntitlementId = pEuEntitlementId_
    , _euXgafv = Nothing
    , _euUploadProtocol = Nothing
    , _euEnterpriseId = pEuEnterpriseId_
    , _euAccessToken = Nothing
    , _euUploadType = Nothing
    , _euPayload = pEuPayload_
    , _euInstall = Nothing
    , _euUserId = pEuUserId_
    , _euCallback = Nothing
    }


-- | The ID of the entitlement (a product ID), e.g.
-- \"app:com.google.android.gm\".
euEntitlementId :: Lens' EntitlementsUpdate Text
euEntitlementId
  = lens _euEntitlementId
      (\ s a -> s{_euEntitlementId = a})

-- | V1 error format.
euXgafv :: Lens' EntitlementsUpdate (Maybe Xgafv)
euXgafv = lens _euXgafv (\ s a -> s{_euXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
euUploadProtocol :: Lens' EntitlementsUpdate (Maybe Text)
euUploadProtocol
  = lens _euUploadProtocol
      (\ s a -> s{_euUploadProtocol = a})

-- | The ID of the enterprise.
euEnterpriseId :: Lens' EntitlementsUpdate Text
euEnterpriseId
  = lens _euEnterpriseId
      (\ s a -> s{_euEnterpriseId = a})

-- | OAuth access token.
euAccessToken :: Lens' EntitlementsUpdate (Maybe Text)
euAccessToken
  = lens _euAccessToken
      (\ s a -> s{_euAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
euUploadType :: Lens' EntitlementsUpdate (Maybe Text)
euUploadType
  = lens _euUploadType (\ s a -> s{_euUploadType = a})

-- | Multipart request metadata.
euPayload :: Lens' EntitlementsUpdate Entitlement
euPayload
  = lens _euPayload (\ s a -> s{_euPayload = a})

-- | Set to true to also install the product on all the user\'s devices where
-- possible. Failure to install on one or more devices will not prevent
-- this operation from returning successfully, as long as the entitlement
-- was successfully assigned to the user.
euInstall :: Lens' EntitlementsUpdate (Maybe Bool)
euInstall
  = lens _euInstall (\ s a -> s{_euInstall = a})

-- | The ID of the user.
euUserId :: Lens' EntitlementsUpdate Text
euUserId = lens _euUserId (\ s a -> s{_euUserId = a})

-- | JSONP
euCallback :: Lens' EntitlementsUpdate (Maybe Text)
euCallback
  = lens _euCallback (\ s a -> s{_euCallback = a})

instance GoogleRequest EntitlementsUpdate where
        type Rs EntitlementsUpdate = Entitlement
        type Scopes EntitlementsUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EntitlementsUpdate'{..}
          = go _euEnterpriseId _euUserId _euEntitlementId
              _euXgafv
              _euUploadProtocol
              _euAccessToken
              _euUploadType
              _euInstall
              _euCallback
              (Just AltJSON)
              _euPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsUpdateResource)
                      mempty
