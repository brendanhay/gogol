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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an entitlement to an app for a user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.delete@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.Delete
    (
    -- * REST Resource
      EntitlementsDeleteResource

    -- * Creating a Request
    , entitlementsDelete
    , EntitlementsDelete

    -- * Request Lenses
    , edEntitlementId
    , edXgafv
    , edUploadProtocol
    , edEnterpriseId
    , edAccessToken
    , edUploadType
    , edUserId
    , edCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.delete@ method which the
-- 'EntitlementsDelete' request conforms to.
type EntitlementsDeleteResource =
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
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes an entitlement to an app for a user.
--
-- /See:/ 'entitlementsDelete' smart constructor.
data EntitlementsDelete =
  EntitlementsDelete'
    { _edEntitlementId :: !Text
    , _edXgafv :: !(Maybe Xgafv)
    , _edUploadProtocol :: !(Maybe Text)
    , _edEnterpriseId :: !Text
    , _edAccessToken :: !(Maybe Text)
    , _edUploadType :: !(Maybe Text)
    , _edUserId :: !Text
    , _edCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntitlementsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edEntitlementId'
--
-- * 'edXgafv'
--
-- * 'edUploadProtocol'
--
-- * 'edEnterpriseId'
--
-- * 'edAccessToken'
--
-- * 'edUploadType'
--
-- * 'edUserId'
--
-- * 'edCallback'
entitlementsDelete
    :: Text -- ^ 'edEntitlementId'
    -> Text -- ^ 'edEnterpriseId'
    -> Text -- ^ 'edUserId'
    -> EntitlementsDelete
entitlementsDelete pEdEntitlementId_ pEdEnterpriseId_ pEdUserId_ =
  EntitlementsDelete'
    { _edEntitlementId = pEdEntitlementId_
    , _edXgafv = Nothing
    , _edUploadProtocol = Nothing
    , _edEnterpriseId = pEdEnterpriseId_
    , _edAccessToken = Nothing
    , _edUploadType = Nothing
    , _edUserId = pEdUserId_
    , _edCallback = Nothing
    }


-- | The ID of the entitlement (a product ID), e.g.
-- \"app:com.google.android.gm\".
edEntitlementId :: Lens' EntitlementsDelete Text
edEntitlementId
  = lens _edEntitlementId
      (\ s a -> s{_edEntitlementId = a})

-- | V1 error format.
edXgafv :: Lens' EntitlementsDelete (Maybe Xgafv)
edXgafv = lens _edXgafv (\ s a -> s{_edXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edUploadProtocol :: Lens' EntitlementsDelete (Maybe Text)
edUploadProtocol
  = lens _edUploadProtocol
      (\ s a -> s{_edUploadProtocol = a})

-- | The ID of the enterprise.
edEnterpriseId :: Lens' EntitlementsDelete Text
edEnterpriseId
  = lens _edEnterpriseId
      (\ s a -> s{_edEnterpriseId = a})

-- | OAuth access token.
edAccessToken :: Lens' EntitlementsDelete (Maybe Text)
edAccessToken
  = lens _edAccessToken
      (\ s a -> s{_edAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edUploadType :: Lens' EntitlementsDelete (Maybe Text)
edUploadType
  = lens _edUploadType (\ s a -> s{_edUploadType = a})

-- | The ID of the user.
edUserId :: Lens' EntitlementsDelete Text
edUserId = lens _edUserId (\ s a -> s{_edUserId = a})

-- | JSONP
edCallback :: Lens' EntitlementsDelete (Maybe Text)
edCallback
  = lens _edCallback (\ s a -> s{_edCallback = a})

instance GoogleRequest EntitlementsDelete where
        type Rs EntitlementsDelete = ()
        type Scopes EntitlementsDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EntitlementsDelete'{..}
          = go _edEnterpriseId _edUserId _edEntitlementId
              _edXgafv
              _edUploadProtocol
              _edAccessToken
              _edUploadType
              _edCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsDeleteResource)
                      mempty
