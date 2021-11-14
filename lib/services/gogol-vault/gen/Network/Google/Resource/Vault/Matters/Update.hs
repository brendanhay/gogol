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
-- Module      : Network.Google.Resource.Vault.Matters.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified matter. This updates only the name and description
-- of the matter, identified by matter ID. Changes to any other fields are
-- ignored. Returns the default view of the matter.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.update@.
module Network.Google.Resource.Vault.Matters.Update
    (
    -- * REST Resource
      MattersUpdateResource

    -- * Creating a Request
    , mattersUpdate
    , MattersUpdate

    -- * Request Lenses
    , muuXgafv
    , muuUploadProtocol
    , muuAccessToken
    , muuUploadType
    , muuPayload
    , muuMatterId
    , muuCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.update@ method which the
-- 'MattersUpdate' request conforms to.
type MattersUpdateResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Matter :> Put '[JSON] Matter

-- | Updates the specified matter. This updates only the name and description
-- of the matter, identified by matter ID. Changes to any other fields are
-- ignored. Returns the default view of the matter.
--
-- /See:/ 'mattersUpdate' smart constructor.
data MattersUpdate =
  MattersUpdate'
    { _muuXgafv :: !(Maybe Xgafv)
    , _muuUploadProtocol :: !(Maybe Text)
    , _muuAccessToken :: !(Maybe Text)
    , _muuUploadType :: !(Maybe Text)
    , _muuPayload :: !Matter
    , _muuMatterId :: !Text
    , _muuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muuXgafv'
--
-- * 'muuUploadProtocol'
--
-- * 'muuAccessToken'
--
-- * 'muuUploadType'
--
-- * 'muuPayload'
--
-- * 'muuMatterId'
--
-- * 'muuCallback'
mattersUpdate
    :: Matter -- ^ 'muuPayload'
    -> Text -- ^ 'muuMatterId'
    -> MattersUpdate
mattersUpdate pMuuPayload_ pMuuMatterId_ =
  MattersUpdate'
    { _muuXgafv = Nothing
    , _muuUploadProtocol = Nothing
    , _muuAccessToken = Nothing
    , _muuUploadType = Nothing
    , _muuPayload = pMuuPayload_
    , _muuMatterId = pMuuMatterId_
    , _muuCallback = Nothing
    }


-- | V1 error format.
muuXgafv :: Lens' MattersUpdate (Maybe Xgafv)
muuXgafv = lens _muuXgafv (\ s a -> s{_muuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
muuUploadProtocol :: Lens' MattersUpdate (Maybe Text)
muuUploadProtocol
  = lens _muuUploadProtocol
      (\ s a -> s{_muuUploadProtocol = a})

-- | OAuth access token.
muuAccessToken :: Lens' MattersUpdate (Maybe Text)
muuAccessToken
  = lens _muuAccessToken
      (\ s a -> s{_muuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
muuUploadType :: Lens' MattersUpdate (Maybe Text)
muuUploadType
  = lens _muuUploadType
      (\ s a -> s{_muuUploadType = a})

-- | Multipart request metadata.
muuPayload :: Lens' MattersUpdate Matter
muuPayload
  = lens _muuPayload (\ s a -> s{_muuPayload = a})

-- | The matter ID.
muuMatterId :: Lens' MattersUpdate Text
muuMatterId
  = lens _muuMatterId (\ s a -> s{_muuMatterId = a})

-- | JSONP
muuCallback :: Lens' MattersUpdate (Maybe Text)
muuCallback
  = lens _muuCallback (\ s a -> s{_muuCallback = a})

instance GoogleRequest MattersUpdate where
        type Rs MattersUpdate = Matter
        type Scopes MattersUpdate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersUpdate'{..}
          = go _muuMatterId _muuXgafv _muuUploadProtocol
              _muuAccessToken
              _muuUploadType
              _muuCallback
              (Just AltJSON)
              _muuPayload
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersUpdateResource)
                      mempty
