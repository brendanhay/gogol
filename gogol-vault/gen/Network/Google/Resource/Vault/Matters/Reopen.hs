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
-- Module      : Network.Google.Resource.Vault.Matters.Reopen
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reopens the specified matter. Returns the matter with updated state.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.reopen@.
module Network.Google.Resource.Vault.Matters.Reopen
    (
    -- * REST Resource
      MattersReopenResource

    -- * Creating a Request
    , mattersReopen
    , MattersReopen

    -- * Request Lenses
    , mrXgafv
    , mrUploadProtocol
    , mrAccessToken
    , mrUploadType
    , mrPayload
    , mrMatterId
    , mrCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.reopen@ method which the
-- 'MattersReopen' request conforms to.
type MattersReopenResource =
     "v1" :>
       "matters" :>
         CaptureMode "matterId" "reopen" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ReopenMatterRequest :>
                         Post '[JSON] ReopenMatterResponse

-- | Reopens the specified matter. Returns the matter with updated state.
--
-- /See:/ 'mattersReopen' smart constructor.
data MattersReopen =
  MattersReopen'
    { _mrXgafv :: !(Maybe Xgafv)
    , _mrUploadProtocol :: !(Maybe Text)
    , _mrAccessToken :: !(Maybe Text)
    , _mrUploadType :: !(Maybe Text)
    , _mrPayload :: !ReopenMatterRequest
    , _mrMatterId :: !Text
    , _mrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersReopen' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrXgafv'
--
-- * 'mrUploadProtocol'
--
-- * 'mrAccessToken'
--
-- * 'mrUploadType'
--
-- * 'mrPayload'
--
-- * 'mrMatterId'
--
-- * 'mrCallback'
mattersReopen
    :: ReopenMatterRequest -- ^ 'mrPayload'
    -> Text -- ^ 'mrMatterId'
    -> MattersReopen
mattersReopen pMrPayload_ pMrMatterId_ =
  MattersReopen'
    { _mrXgafv = Nothing
    , _mrUploadProtocol = Nothing
    , _mrAccessToken = Nothing
    , _mrUploadType = Nothing
    , _mrPayload = pMrPayload_
    , _mrMatterId = pMrMatterId_
    , _mrCallback = Nothing
    }


-- | V1 error format.
mrXgafv :: Lens' MattersReopen (Maybe Xgafv)
mrXgafv = lens _mrXgafv (\ s a -> s{_mrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mrUploadProtocol :: Lens' MattersReopen (Maybe Text)
mrUploadProtocol
  = lens _mrUploadProtocol
      (\ s a -> s{_mrUploadProtocol = a})

-- | OAuth access token.
mrAccessToken :: Lens' MattersReopen (Maybe Text)
mrAccessToken
  = lens _mrAccessToken
      (\ s a -> s{_mrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mrUploadType :: Lens' MattersReopen (Maybe Text)
mrUploadType
  = lens _mrUploadType (\ s a -> s{_mrUploadType = a})

-- | Multipart request metadata.
mrPayload :: Lens' MattersReopen ReopenMatterRequest
mrPayload
  = lens _mrPayload (\ s a -> s{_mrPayload = a})

-- | The matter ID.
mrMatterId :: Lens' MattersReopen Text
mrMatterId
  = lens _mrMatterId (\ s a -> s{_mrMatterId = a})

-- | JSONP
mrCallback :: Lens' MattersReopen (Maybe Text)
mrCallback
  = lens _mrCallback (\ s a -> s{_mrCallback = a})

instance GoogleRequest MattersReopen where
        type Rs MattersReopen = ReopenMatterResponse
        type Scopes MattersReopen =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersReopen'{..}
          = go _mrMatterId _mrXgafv _mrUploadProtocol
              _mrAccessToken
              _mrUploadType
              _mrCallback
              (Just AltJSON)
              _mrPayload
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersReopenResource)
                      mempty
