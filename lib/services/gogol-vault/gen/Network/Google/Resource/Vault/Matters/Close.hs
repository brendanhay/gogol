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
-- Module      : Network.Google.Resource.Vault.Matters.Close
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Closes the specified matter. Returns the matter with updated state.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.close@.
module Network.Google.Resource.Vault.Matters.Close
    (
    -- * REST Resource
      MattersCloseResource

    -- * Creating a Request
    , mattersClose
    , MattersClose

    -- * Request Lenses
    , matXgafv
    , matUploadProtocol
    , matAccessToken
    , matUploadType
    , matPayload
    , matMatterId
    , matCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.close@ method which the
-- 'MattersClose' request conforms to.
type MattersCloseResource =
     "v1" :>
       "matters" :>
         CaptureMode "matterId" "close" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CloseMatterRequest :>
                         Post '[JSON] CloseMatterResponse

-- | Closes the specified matter. Returns the matter with updated state.
--
-- /See:/ 'mattersClose' smart constructor.
data MattersClose =
  MattersClose'
    { _matXgafv :: !(Maybe Xgafv)
    , _matUploadProtocol :: !(Maybe Text)
    , _matAccessToken :: !(Maybe Text)
    , _matUploadType :: !(Maybe Text)
    , _matPayload :: !CloseMatterRequest
    , _matMatterId :: !Text
    , _matCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersClose' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'matXgafv'
--
-- * 'matUploadProtocol'
--
-- * 'matAccessToken'
--
-- * 'matUploadType'
--
-- * 'matPayload'
--
-- * 'matMatterId'
--
-- * 'matCallback'
mattersClose
    :: CloseMatterRequest -- ^ 'matPayload'
    -> Text -- ^ 'matMatterId'
    -> MattersClose
mattersClose pMatPayload_ pMatMatterId_ =
  MattersClose'
    { _matXgafv = Nothing
    , _matUploadProtocol = Nothing
    , _matAccessToken = Nothing
    , _matUploadType = Nothing
    , _matPayload = pMatPayload_
    , _matMatterId = pMatMatterId_
    , _matCallback = Nothing
    }


-- | V1 error format.
matXgafv :: Lens' MattersClose (Maybe Xgafv)
matXgafv = lens _matXgafv (\ s a -> s{_matXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
matUploadProtocol :: Lens' MattersClose (Maybe Text)
matUploadProtocol
  = lens _matUploadProtocol
      (\ s a -> s{_matUploadProtocol = a})

-- | OAuth access token.
matAccessToken :: Lens' MattersClose (Maybe Text)
matAccessToken
  = lens _matAccessToken
      (\ s a -> s{_matAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
matUploadType :: Lens' MattersClose (Maybe Text)
matUploadType
  = lens _matUploadType
      (\ s a -> s{_matUploadType = a})

-- | Multipart request metadata.
matPayload :: Lens' MattersClose CloseMatterRequest
matPayload
  = lens _matPayload (\ s a -> s{_matPayload = a})

-- | The matter ID.
matMatterId :: Lens' MattersClose Text
matMatterId
  = lens _matMatterId (\ s a -> s{_matMatterId = a})

-- | JSONP
matCallback :: Lens' MattersClose (Maybe Text)
matCallback
  = lens _matCallback (\ s a -> s{_matCallback = a})

instance GoogleRequest MattersClose where
        type Rs MattersClose = CloseMatterResponse
        type Scopes MattersClose =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersClose'{..}
          = go _matMatterId _matXgafv _matUploadProtocol
              _matAccessToken
              _matUploadType
              _matCallback
              (Just AltJSON)
              _matPayload
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersCloseResource)
                      mempty
