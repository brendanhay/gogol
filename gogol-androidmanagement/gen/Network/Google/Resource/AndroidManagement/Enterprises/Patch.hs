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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.patch@.
module Network.Google.Resource.AndroidManagement.Enterprises.Patch
    (
    -- * REST Resource
      EnterprisesPatchResource

    -- * Creating a Request
    , enterprisesPatch
    , EnterprisesPatch

    -- * Request Lenses
    , epXgafv
    , epUploadProtocol
    , epUpdateMask
    , epAccessToken
    , epUploadType
    , epPayload
    , epName
    , epCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.patch@ method which the
-- 'EnterprisesPatch' request conforms to.
type EnterprisesPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Enterprise :>
                         Patch '[JSON] Enterprise

-- | Updates an enterprise.
--
-- /See:/ 'enterprisesPatch' smart constructor.
data EnterprisesPatch =
  EnterprisesPatch'
    { _epXgafv :: !(Maybe Xgafv)
    , _epUploadProtocol :: !(Maybe Text)
    , _epUpdateMask :: !(Maybe GFieldMask)
    , _epAccessToken :: !(Maybe Text)
    , _epUploadType :: !(Maybe Text)
    , _epPayload :: !Enterprise
    , _epName :: !Text
    , _epCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epXgafv'
--
-- * 'epUploadProtocol'
--
-- * 'epUpdateMask'
--
-- * 'epAccessToken'
--
-- * 'epUploadType'
--
-- * 'epPayload'
--
-- * 'epName'
--
-- * 'epCallback'
enterprisesPatch
    :: Enterprise -- ^ 'epPayload'
    -> Text -- ^ 'epName'
    -> EnterprisesPatch
enterprisesPatch pEpPayload_ pEpName_ =
  EnterprisesPatch'
    { _epXgafv = Nothing
    , _epUploadProtocol = Nothing
    , _epUpdateMask = Nothing
    , _epAccessToken = Nothing
    , _epUploadType = Nothing
    , _epPayload = pEpPayload_
    , _epName = pEpName_
    , _epCallback = Nothing
    }


-- | V1 error format.
epXgafv :: Lens' EnterprisesPatch (Maybe Xgafv)
epXgafv = lens _epXgafv (\ s a -> s{_epXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
epUploadProtocol :: Lens' EnterprisesPatch (Maybe Text)
epUploadProtocol
  = lens _epUploadProtocol
      (\ s a -> s{_epUploadProtocol = a})

-- | The field mask indicating the fields to update. If not set, all
-- modifiable fields will be modified.
epUpdateMask :: Lens' EnterprisesPatch (Maybe GFieldMask)
epUpdateMask
  = lens _epUpdateMask (\ s a -> s{_epUpdateMask = a})

-- | OAuth access token.
epAccessToken :: Lens' EnterprisesPatch (Maybe Text)
epAccessToken
  = lens _epAccessToken
      (\ s a -> s{_epAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
epUploadType :: Lens' EnterprisesPatch (Maybe Text)
epUploadType
  = lens _epUploadType (\ s a -> s{_epUploadType = a})

-- | Multipart request metadata.
epPayload :: Lens' EnterprisesPatch Enterprise
epPayload
  = lens _epPayload (\ s a -> s{_epPayload = a})

-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
epName :: Lens' EnterprisesPatch Text
epName = lens _epName (\ s a -> s{_epName = a})

-- | JSONP
epCallback :: Lens' EnterprisesPatch (Maybe Text)
epCallback
  = lens _epCallback (\ s a -> s{_epCallback = a})

instance GoogleRequest EnterprisesPatch where
        type Rs EnterprisesPatch = Enterprise
        type Scopes EnterprisesPatch =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesPatch'{..}
          = go _epName _epXgafv _epUploadProtocol _epUpdateMask
              _epAccessToken
              _epUploadType
              _epCallback
              (Just AltJSON)
              _epPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesPatchResource)
                      mempty
