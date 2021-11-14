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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.CompleteSignup
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes the signup flow, by specifying the Completion token and
-- Enterprise token. This request must not be called multiple times for a
-- given Enterprise Token.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.completeSignup@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.CompleteSignup
    (
    -- * REST Resource
      EnterprisesCompleteSignupResource

    -- * Creating a Request
    , enterprisesCompleteSignup
    , EnterprisesCompleteSignup

    -- * Request Lenses
    , ecsXgafv
    , ecsCompletionToken
    , ecsUploadProtocol
    , ecsAccessToken
    , ecsUploadType
    , ecsEnterpriseToken
    , ecsCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.completeSignup@ method which the
-- 'EnterprisesCompleteSignup' request conforms to.
type EnterprisesCompleteSignupResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           "completeSignup" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "completionToken" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "enterpriseToken" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Enterprise

-- | Completes the signup flow, by specifying the Completion token and
-- Enterprise token. This request must not be called multiple times for a
-- given Enterprise Token.
--
-- /See:/ 'enterprisesCompleteSignup' smart constructor.
data EnterprisesCompleteSignup =
  EnterprisesCompleteSignup'
    { _ecsXgafv :: !(Maybe Xgafv)
    , _ecsCompletionToken :: !(Maybe Text)
    , _ecsUploadProtocol :: !(Maybe Text)
    , _ecsAccessToken :: !(Maybe Text)
    , _ecsUploadType :: !(Maybe Text)
    , _ecsEnterpriseToken :: !(Maybe Text)
    , _ecsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesCompleteSignup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecsXgafv'
--
-- * 'ecsCompletionToken'
--
-- * 'ecsUploadProtocol'
--
-- * 'ecsAccessToken'
--
-- * 'ecsUploadType'
--
-- * 'ecsEnterpriseToken'
--
-- * 'ecsCallback'
enterprisesCompleteSignup
    :: EnterprisesCompleteSignup
enterprisesCompleteSignup =
  EnterprisesCompleteSignup'
    { _ecsXgafv = Nothing
    , _ecsCompletionToken = Nothing
    , _ecsUploadProtocol = Nothing
    , _ecsAccessToken = Nothing
    , _ecsUploadType = Nothing
    , _ecsEnterpriseToken = Nothing
    , _ecsCallback = Nothing
    }


-- | V1 error format.
ecsXgafv :: Lens' EnterprisesCompleteSignup (Maybe Xgafv)
ecsXgafv = lens _ecsXgafv (\ s a -> s{_ecsXgafv = a})

-- | The Completion token initially returned by GenerateSignupUrl.
ecsCompletionToken :: Lens' EnterprisesCompleteSignup (Maybe Text)
ecsCompletionToken
  = lens _ecsCompletionToken
      (\ s a -> s{_ecsCompletionToken = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ecsUploadProtocol :: Lens' EnterprisesCompleteSignup (Maybe Text)
ecsUploadProtocol
  = lens _ecsUploadProtocol
      (\ s a -> s{_ecsUploadProtocol = a})

-- | OAuth access token.
ecsAccessToken :: Lens' EnterprisesCompleteSignup (Maybe Text)
ecsAccessToken
  = lens _ecsAccessToken
      (\ s a -> s{_ecsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ecsUploadType :: Lens' EnterprisesCompleteSignup (Maybe Text)
ecsUploadType
  = lens _ecsUploadType
      (\ s a -> s{_ecsUploadType = a})

-- | The Enterprise token appended to the Callback URL.
ecsEnterpriseToken :: Lens' EnterprisesCompleteSignup (Maybe Text)
ecsEnterpriseToken
  = lens _ecsEnterpriseToken
      (\ s a -> s{_ecsEnterpriseToken = a})

-- | JSONP
ecsCallback :: Lens' EnterprisesCompleteSignup (Maybe Text)
ecsCallback
  = lens _ecsCallback (\ s a -> s{_ecsCallback = a})

instance GoogleRequest EnterprisesCompleteSignup
         where
        type Rs EnterprisesCompleteSignup = Enterprise
        type Scopes EnterprisesCompleteSignup =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesCompleteSignup'{..}
          = go _ecsXgafv _ecsCompletionToken _ecsUploadProtocol
              _ecsAccessToken
              _ecsUploadType
              _ecsEnterpriseToken
              _ecsCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesCompleteSignupResource)
                      mempty
