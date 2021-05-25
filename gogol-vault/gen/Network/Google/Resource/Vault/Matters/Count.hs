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
-- Module      : Network.Google.Resource.Vault.Matters.Count
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Counts the accounts processed by the specified query.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.count@.
module Network.Google.Resource.Vault.Matters.Count
    (
    -- * REST Resource
      MattersCountResource

    -- * Creating a Request
    , mattersCount
    , MattersCount

    -- * Request Lenses
    , mcXgafv
    , mcUploadProtocol
    , mcAccessToken
    , mcUploadType
    , mcPayload
    , mcMatterId
    , mcCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.count@ method which the
-- 'MattersCount' request conforms to.
type MattersCountResource =
     "v1" :>
       "matters" :>
         CaptureMode "matterId" "count" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CountArtifactsRequest :>
                         Post '[JSON] Operation

-- | Counts the accounts processed by the specified query.
--
-- /See:/ 'mattersCount' smart constructor.
data MattersCount =
  MattersCount'
    { _mcXgafv :: !(Maybe Xgafv)
    , _mcUploadProtocol :: !(Maybe Text)
    , _mcAccessToken :: !(Maybe Text)
    , _mcUploadType :: !(Maybe Text)
    , _mcPayload :: !CountArtifactsRequest
    , _mcMatterId :: !Text
    , _mcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersCount' with the minimum fields required to make a request.
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
mattersCount
    :: CountArtifactsRequest -- ^ 'mcPayload'
    -> Text -- ^ 'mcMatterId'
    -> MattersCount
mattersCount pMcPayload_ pMcMatterId_ =
  MattersCount'
    { _mcXgafv = Nothing
    , _mcUploadProtocol = Nothing
    , _mcAccessToken = Nothing
    , _mcUploadType = Nothing
    , _mcPayload = pMcPayload_
    , _mcMatterId = pMcMatterId_
    , _mcCallback = Nothing
    }


-- | V1 error format.
mcXgafv :: Lens' MattersCount (Maybe Xgafv)
mcXgafv = lens _mcXgafv (\ s a -> s{_mcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcUploadProtocol :: Lens' MattersCount (Maybe Text)
mcUploadProtocol
  = lens _mcUploadProtocol
      (\ s a -> s{_mcUploadProtocol = a})

-- | OAuth access token.
mcAccessToken :: Lens' MattersCount (Maybe Text)
mcAccessToken
  = lens _mcAccessToken
      (\ s a -> s{_mcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcUploadType :: Lens' MattersCount (Maybe Text)
mcUploadType
  = lens _mcUploadType (\ s a -> s{_mcUploadType = a})

-- | Multipart request metadata.
mcPayload :: Lens' MattersCount CountArtifactsRequest
mcPayload
  = lens _mcPayload (\ s a -> s{_mcPayload = a})

-- | The matter ID.
mcMatterId :: Lens' MattersCount Text
mcMatterId
  = lens _mcMatterId (\ s a -> s{_mcMatterId = a})

-- | JSONP
mcCallback :: Lens' MattersCount (Maybe Text)
mcCallback
  = lens _mcCallback (\ s a -> s{_mcCallback = a})

instance GoogleRequest MattersCount where
        type Rs MattersCount = Operation
        type Scopes MattersCount =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersCount'{..}
          = go _mcMatterId _mcXgafv _mcUploadProtocol
              _mcAccessToken
              _mcUploadType
              _mcCallback
              (Just AltJSON)
              _mcPayload
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersCountResource)
                      mempty
