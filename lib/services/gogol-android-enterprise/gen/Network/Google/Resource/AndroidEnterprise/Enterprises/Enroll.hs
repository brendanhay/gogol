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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enrolls an enterprise with the calling EMM.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.enroll@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Enroll
    (
    -- * REST Resource
      EnterprisesEnrollResource

    -- * Creating a Request
    , enterprisesEnroll
    , EnterprisesEnroll

    -- * Request Lenses
    , eeXgafv
    , eeUploadProtocol
    , eeAccessToken
    , eeToken
    , eeUploadType
    , eePayload
    , eeCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.enroll@ method which the
-- 'EnterprisesEnroll' request conforms to.
type EnterprisesEnrollResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           "enroll" :>
             QueryParam "token" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Enterprise :> Post '[JSON] Enterprise

-- | Enrolls an enterprise with the calling EMM.
--
-- /See:/ 'enterprisesEnroll' smart constructor.
data EnterprisesEnroll =
  EnterprisesEnroll'
    { _eeXgafv :: !(Maybe Xgafv)
    , _eeUploadProtocol :: !(Maybe Text)
    , _eeAccessToken :: !(Maybe Text)
    , _eeToken :: !Text
    , _eeUploadType :: !(Maybe Text)
    , _eePayload :: !Enterprise
    , _eeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesEnroll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eeXgafv'
--
-- * 'eeUploadProtocol'
--
-- * 'eeAccessToken'
--
-- * 'eeToken'
--
-- * 'eeUploadType'
--
-- * 'eePayload'
--
-- * 'eeCallback'
enterprisesEnroll
    :: Text -- ^ 'eeToken'
    -> Enterprise -- ^ 'eePayload'
    -> EnterprisesEnroll
enterprisesEnroll pEeToken_ pEePayload_ =
  EnterprisesEnroll'
    { _eeXgafv = Nothing
    , _eeUploadProtocol = Nothing
    , _eeAccessToken = Nothing
    , _eeToken = pEeToken_
    , _eeUploadType = Nothing
    , _eePayload = pEePayload_
    , _eeCallback = Nothing
    }


-- | V1 error format.
eeXgafv :: Lens' EnterprisesEnroll (Maybe Xgafv)
eeXgafv = lens _eeXgafv (\ s a -> s{_eeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eeUploadProtocol :: Lens' EnterprisesEnroll (Maybe Text)
eeUploadProtocol
  = lens _eeUploadProtocol
      (\ s a -> s{_eeUploadProtocol = a})

-- | OAuth access token.
eeAccessToken :: Lens' EnterprisesEnroll (Maybe Text)
eeAccessToken
  = lens _eeAccessToken
      (\ s a -> s{_eeAccessToken = a})

-- | Required. The token provided by the enterprise to register the EMM.
eeToken :: Lens' EnterprisesEnroll Text
eeToken = lens _eeToken (\ s a -> s{_eeToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eeUploadType :: Lens' EnterprisesEnroll (Maybe Text)
eeUploadType
  = lens _eeUploadType (\ s a -> s{_eeUploadType = a})

-- | Multipart request metadata.
eePayload :: Lens' EnterprisesEnroll Enterprise
eePayload
  = lens _eePayload (\ s a -> s{_eePayload = a})

-- | JSONP
eeCallback :: Lens' EnterprisesEnroll (Maybe Text)
eeCallback
  = lens _eeCallback (\ s a -> s{_eeCallback = a})

instance GoogleRequest EnterprisesEnroll where
        type Rs EnterprisesEnroll = Enterprise
        type Scopes EnterprisesEnroll =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesEnroll'{..}
          = go (Just _eeToken) _eeXgafv _eeUploadProtocol
              _eeAccessToken
              _eeUploadType
              _eeCallback
              (Just AltJSON)
              _eePayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesEnrollResource)
                      mempty
