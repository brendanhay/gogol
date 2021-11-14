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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an entitlement.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.get@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Get
    (
    -- * REST Resource
      EntitlementsGetResource

    -- * Creating a Request
    , entitlementsGet
    , EntitlementsGet

    -- * Request Lenses
    , egEntitlementId
    , egXgafv
    , egUploadProtocol
    , egEnterpriseId
    , egAccessToken
    , egUploadType
    , egUserId
    , egCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.get@ method which the
-- 'EntitlementsGet' request conforms to.
type EntitlementsGetResource =
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
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] Entitlement

-- | Retrieves details of an entitlement.
--
-- /See:/ 'entitlementsGet' smart constructor.
data EntitlementsGet =
  EntitlementsGet'
    { _egEntitlementId :: !Text
    , _egXgafv :: !(Maybe Xgafv)
    , _egUploadProtocol :: !(Maybe Text)
    , _egEnterpriseId :: !Text
    , _egAccessToken :: !(Maybe Text)
    , _egUploadType :: !(Maybe Text)
    , _egUserId :: !Text
    , _egCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntitlementsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egEntitlementId'
--
-- * 'egXgafv'
--
-- * 'egUploadProtocol'
--
-- * 'egEnterpriseId'
--
-- * 'egAccessToken'
--
-- * 'egUploadType'
--
-- * 'egUserId'
--
-- * 'egCallback'
entitlementsGet
    :: Text -- ^ 'egEntitlementId'
    -> Text -- ^ 'egEnterpriseId'
    -> Text -- ^ 'egUserId'
    -> EntitlementsGet
entitlementsGet pEgEntitlementId_ pEgEnterpriseId_ pEgUserId_ =
  EntitlementsGet'
    { _egEntitlementId = pEgEntitlementId_
    , _egXgafv = Nothing
    , _egUploadProtocol = Nothing
    , _egEnterpriseId = pEgEnterpriseId_
    , _egAccessToken = Nothing
    , _egUploadType = Nothing
    , _egUserId = pEgUserId_
    , _egCallback = Nothing
    }


-- | The ID of the entitlement (a product ID), e.g.
-- \"app:com.google.android.gm\".
egEntitlementId :: Lens' EntitlementsGet Text
egEntitlementId
  = lens _egEntitlementId
      (\ s a -> s{_egEntitlementId = a})

-- | V1 error format.
egXgafv :: Lens' EntitlementsGet (Maybe Xgafv)
egXgafv = lens _egXgafv (\ s a -> s{_egXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
egUploadProtocol :: Lens' EntitlementsGet (Maybe Text)
egUploadProtocol
  = lens _egUploadProtocol
      (\ s a -> s{_egUploadProtocol = a})

-- | The ID of the enterprise.
egEnterpriseId :: Lens' EntitlementsGet Text
egEnterpriseId
  = lens _egEnterpriseId
      (\ s a -> s{_egEnterpriseId = a})

-- | OAuth access token.
egAccessToken :: Lens' EntitlementsGet (Maybe Text)
egAccessToken
  = lens _egAccessToken
      (\ s a -> s{_egAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
egUploadType :: Lens' EntitlementsGet (Maybe Text)
egUploadType
  = lens _egUploadType (\ s a -> s{_egUploadType = a})

-- | The ID of the user.
egUserId :: Lens' EntitlementsGet Text
egUserId = lens _egUserId (\ s a -> s{_egUserId = a})

-- | JSONP
egCallback :: Lens' EntitlementsGet (Maybe Text)
egCallback
  = lens _egCallback (\ s a -> s{_egCallback = a})

instance GoogleRequest EntitlementsGet where
        type Rs EntitlementsGet = Entitlement
        type Scopes EntitlementsGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EntitlementsGet'{..}
          = go _egEnterpriseId _egUserId _egEntitlementId
              _egXgafv
              _egUploadProtocol
              _egAccessToken
              _egUploadType
              _egCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsGetResource)
                      mempty
