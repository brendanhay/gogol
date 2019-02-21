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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.WebTokens.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a web token to access an embeddable managed Google Play web UI
-- for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webTokens.create@.
module Network.Google.Resource.AndroidManagement.Enterprises.WebTokens.Create
    (
    -- * REST Resource
      EnterprisesWebTokensCreateResource

    -- * Creating a Request
    , enterprisesWebTokensCreate
    , EnterprisesWebTokensCreate

    -- * Request Lenses
    , ewtcParent
    , ewtcXgafv
    , ewtcUploadProtocol
    , ewtcAccessToken
    , ewtcUploadType
    , ewtcPayload
    , ewtcCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.webTokens.create@ method which the
-- 'EnterprisesWebTokensCreate' request conforms to.
type EnterprisesWebTokensCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "webTokens" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WebToken :> Post '[JSON] WebToken

-- | Creates a web token to access an embeddable managed Google Play web UI
-- for a given enterprise.
--
-- /See:/ 'enterprisesWebTokensCreate' smart constructor.
data EnterprisesWebTokensCreate =
  EnterprisesWebTokensCreate'
    { _ewtcParent         :: !Text
    , _ewtcXgafv          :: !(Maybe Xgafv)
    , _ewtcUploadProtocol :: !(Maybe Text)
    , _ewtcAccessToken    :: !(Maybe Text)
    , _ewtcUploadType     :: !(Maybe Text)
    , _ewtcPayload        :: !WebToken
    , _ewtcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesWebTokensCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewtcParent'
--
-- * 'ewtcXgafv'
--
-- * 'ewtcUploadProtocol'
--
-- * 'ewtcAccessToken'
--
-- * 'ewtcUploadType'
--
-- * 'ewtcPayload'
--
-- * 'ewtcCallback'
enterprisesWebTokensCreate
    :: Text -- ^ 'ewtcParent'
    -> WebToken -- ^ 'ewtcPayload'
    -> EnterprisesWebTokensCreate
enterprisesWebTokensCreate pEwtcParent_ pEwtcPayload_ =
  EnterprisesWebTokensCreate'
    { _ewtcParent = pEwtcParent_
    , _ewtcXgafv = Nothing
    , _ewtcUploadProtocol = Nothing
    , _ewtcAccessToken = Nothing
    , _ewtcUploadType = Nothing
    , _ewtcPayload = pEwtcPayload_
    , _ewtcCallback = Nothing
    }


-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
ewtcParent :: Lens' EnterprisesWebTokensCreate Text
ewtcParent
  = lens _ewtcParent (\ s a -> s{_ewtcParent = a})

-- | V1 error format.
ewtcXgafv :: Lens' EnterprisesWebTokensCreate (Maybe Xgafv)
ewtcXgafv
  = lens _ewtcXgafv (\ s a -> s{_ewtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ewtcUploadProtocol :: Lens' EnterprisesWebTokensCreate (Maybe Text)
ewtcUploadProtocol
  = lens _ewtcUploadProtocol
      (\ s a -> s{_ewtcUploadProtocol = a})

-- | OAuth access token.
ewtcAccessToken :: Lens' EnterprisesWebTokensCreate (Maybe Text)
ewtcAccessToken
  = lens _ewtcAccessToken
      (\ s a -> s{_ewtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ewtcUploadType :: Lens' EnterprisesWebTokensCreate (Maybe Text)
ewtcUploadType
  = lens _ewtcUploadType
      (\ s a -> s{_ewtcUploadType = a})

-- | Multipart request metadata.
ewtcPayload :: Lens' EnterprisesWebTokensCreate WebToken
ewtcPayload
  = lens _ewtcPayload (\ s a -> s{_ewtcPayload = a})

-- | JSONP
ewtcCallback :: Lens' EnterprisesWebTokensCreate (Maybe Text)
ewtcCallback
  = lens _ewtcCallback (\ s a -> s{_ewtcCallback = a})

instance GoogleRequest EnterprisesWebTokensCreate
         where
        type Rs EnterprisesWebTokensCreate = WebToken
        type Scopes EnterprisesWebTokensCreate =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesWebTokensCreate'{..}
          = go _ewtcParent _ewtcXgafv _ewtcUploadProtocol
              _ewtcAccessToken
              _ewtcUploadType
              _ewtcCallback
              (Just AltJSON)
              _ewtcPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesWebTokensCreateResource)
                      mempty
