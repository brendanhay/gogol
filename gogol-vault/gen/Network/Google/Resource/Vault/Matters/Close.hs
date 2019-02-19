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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Closes the specified matter. Returns matter with updated state.
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
    , mcXgafv
    , mcUploadProtocol
    , mcAccessToken
    , mcUploadType
    , mcPayload
    , mcMatterId
    , mcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

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

-- | Closes the specified matter. Returns matter with updated state.
--
-- /See:/ 'mattersClose' smart constructor.
data MattersClose =
  MattersClose'
    { _mcXgafv          :: !(Maybe Xgafv)
    , _mcUploadProtocol :: !(Maybe Text)
    , _mcAccessToken    :: !(Maybe Text)
    , _mcUploadType     :: !(Maybe Text)
    , _mcPayload        :: !CloseMatterRequest
    , _mcMatterId       :: !Text
    , _mcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersClose' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcXgafv'
--
-- * 'mcUploadProtocol'
--
-- * 'mcAccessToken'
--
-- * 'mcUploadType'
--
-- * 'mcPayload'
--
-- * 'mcMatterId'
--
-- * 'mcCallback'
mattersClose
    :: CloseMatterRequest -- ^ 'mcPayload'
    -> Text -- ^ 'mcMatterId'
    -> MattersClose
mattersClose pMcPayload_ pMcMatterId_ =
  MattersClose'
    { _mcXgafv = Nothing
    , _mcUploadProtocol = Nothing
    , _mcAccessToken = Nothing
    , _mcUploadType = Nothing
    , _mcPayload = pMcPayload_
    , _mcMatterId = pMcMatterId_
    , _mcCallback = Nothing
    }


-- | V1 error format.
mcXgafv :: Lens' MattersClose (Maybe Xgafv)
mcXgafv = lens _mcXgafv (\ s a -> s{_mcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcUploadProtocol :: Lens' MattersClose (Maybe Text)
mcUploadProtocol
  = lens _mcUploadProtocol
      (\ s a -> s{_mcUploadProtocol = a})

-- | OAuth access token.
mcAccessToken :: Lens' MattersClose (Maybe Text)
mcAccessToken
  = lens _mcAccessToken
      (\ s a -> s{_mcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcUploadType :: Lens' MattersClose (Maybe Text)
mcUploadType
  = lens _mcUploadType (\ s a -> s{_mcUploadType = a})

-- | Multipart request metadata.
mcPayload :: Lens' MattersClose CloseMatterRequest
mcPayload
  = lens _mcPayload (\ s a -> s{_mcPayload = a})

-- | The matter ID.
mcMatterId :: Lens' MattersClose Text
mcMatterId
  = lens _mcMatterId (\ s a -> s{_mcMatterId = a})

-- | JSONP
mcCallback :: Lens' MattersClose (Maybe Text)
mcCallback
  = lens _mcCallback (\ s a -> s{_mcCallback = a})

instance GoogleRequest MattersClose where
        type Rs MattersClose = CloseMatterResponse
        type Scopes MattersClose =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersClose'{..}
          = go _mcMatterId _mcXgafv _mcUploadProtocol
              _mcAccessToken
              _mcUploadType
              _mcCallback
              (Just AltJSON)
              _mcPayload
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersCloseResource)
                      mempty
