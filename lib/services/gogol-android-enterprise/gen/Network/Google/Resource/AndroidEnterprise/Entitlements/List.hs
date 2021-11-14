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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all entitlements for the specified user. Only the ID is set.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.list@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.List
    (
    -- * REST Resource
      EntitlementsListResource

    -- * Creating a Request
    , entitlementsList
    , EntitlementsList

    -- * Request Lenses
    , entXgafv
    , entUploadProtocol
    , entEnterpriseId
    , entAccessToken
    , entUploadType
    , entUserId
    , entCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.list@ method which the
-- 'EntitlementsList' request conforms to.
type EntitlementsListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] EntitlementsListResponse

-- | Lists all entitlements for the specified user. Only the ID is set.
--
-- /See:/ 'entitlementsList' smart constructor.
data EntitlementsList =
  EntitlementsList'
    { _entXgafv :: !(Maybe Xgafv)
    , _entUploadProtocol :: !(Maybe Text)
    , _entEnterpriseId :: !Text
    , _entAccessToken :: !(Maybe Text)
    , _entUploadType :: !(Maybe Text)
    , _entUserId :: !Text
    , _entCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntitlementsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'entXgafv'
--
-- * 'entUploadProtocol'
--
-- * 'entEnterpriseId'
--
-- * 'entAccessToken'
--
-- * 'entUploadType'
--
-- * 'entUserId'
--
-- * 'entCallback'
entitlementsList
    :: Text -- ^ 'entEnterpriseId'
    -> Text -- ^ 'entUserId'
    -> EntitlementsList
entitlementsList pEntEnterpriseId_ pEntUserId_ =
  EntitlementsList'
    { _entXgafv = Nothing
    , _entUploadProtocol = Nothing
    , _entEnterpriseId = pEntEnterpriseId_
    , _entAccessToken = Nothing
    , _entUploadType = Nothing
    , _entUserId = pEntUserId_
    , _entCallback = Nothing
    }


-- | V1 error format.
entXgafv :: Lens' EntitlementsList (Maybe Xgafv)
entXgafv = lens _entXgafv (\ s a -> s{_entXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
entUploadProtocol :: Lens' EntitlementsList (Maybe Text)
entUploadProtocol
  = lens _entUploadProtocol
      (\ s a -> s{_entUploadProtocol = a})

-- | The ID of the enterprise.
entEnterpriseId :: Lens' EntitlementsList Text
entEnterpriseId
  = lens _entEnterpriseId
      (\ s a -> s{_entEnterpriseId = a})

-- | OAuth access token.
entAccessToken :: Lens' EntitlementsList (Maybe Text)
entAccessToken
  = lens _entAccessToken
      (\ s a -> s{_entAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
entUploadType :: Lens' EntitlementsList (Maybe Text)
entUploadType
  = lens _entUploadType
      (\ s a -> s{_entUploadType = a})

-- | The ID of the user.
entUserId :: Lens' EntitlementsList Text
entUserId
  = lens _entUserId (\ s a -> s{_entUserId = a})

-- | JSONP
entCallback :: Lens' EntitlementsList (Maybe Text)
entCallback
  = lens _entCallback (\ s a -> s{_entCallback = a})

instance GoogleRequest EntitlementsList where
        type Rs EntitlementsList = EntitlementsListResponse
        type Scopes EntitlementsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EntitlementsList'{..}
          = go _entEnterpriseId _entUserId _entXgafv
              _entUploadProtocol
              _entAccessToken
              _entUploadType
              _entCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsListResource)
                      mempty
