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
-- Module      : Network.Google.Resource.Vault.Matters.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified matter. Returns matter with updated state.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.delete@.
module Network.Google.Resource.Vault.Matters.Delete
    (
    -- * REST Resource
      MattersDeleteResource

    -- * Creating a Request
    , mattersDelete
    , MattersDelete

    -- * Request Lenses
    , mdXgafv
    , mdUploadProtocol
    , mdAccessToken
    , mdUploadType
    , mdMatterId
    , mdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.delete@ method which the
-- 'MattersDelete' request conforms to.
type MattersDeleteResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Matter

-- | Deletes the specified matter. Returns matter with updated state.
--
-- /See:/ 'mattersDelete' smart constructor.
data MattersDelete =
  MattersDelete'
    { _mdXgafv          :: !(Maybe Xgafv)
    , _mdUploadProtocol :: !(Maybe Text)
    , _mdAccessToken    :: !(Maybe Text)
    , _mdUploadType     :: !(Maybe Text)
    , _mdMatterId       :: !Text
    , _mdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdXgafv'
--
-- * 'mdUploadProtocol'
--
-- * 'mdAccessToken'
--
-- * 'mdUploadType'
--
-- * 'mdMatterId'
--
-- * 'mdCallback'
mattersDelete
    :: Text -- ^ 'mdMatterId'
    -> MattersDelete
mattersDelete pMdMatterId_ =
  MattersDelete'
    { _mdXgafv = Nothing
    , _mdUploadProtocol = Nothing
    , _mdAccessToken = Nothing
    , _mdUploadType = Nothing
    , _mdMatterId = pMdMatterId_
    , _mdCallback = Nothing
    }


-- | V1 error format.
mdXgafv :: Lens' MattersDelete (Maybe Xgafv)
mdXgafv = lens _mdXgafv (\ s a -> s{_mdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mdUploadProtocol :: Lens' MattersDelete (Maybe Text)
mdUploadProtocol
  = lens _mdUploadProtocol
      (\ s a -> s{_mdUploadProtocol = a})

-- | OAuth access token.
mdAccessToken :: Lens' MattersDelete (Maybe Text)
mdAccessToken
  = lens _mdAccessToken
      (\ s a -> s{_mdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mdUploadType :: Lens' MattersDelete (Maybe Text)
mdUploadType
  = lens _mdUploadType (\ s a -> s{_mdUploadType = a})

-- | The matter ID
mdMatterId :: Lens' MattersDelete Text
mdMatterId
  = lens _mdMatterId (\ s a -> s{_mdMatterId = a})

-- | JSONP
mdCallback :: Lens' MattersDelete (Maybe Text)
mdCallback
  = lens _mdCallback (\ s a -> s{_mdCallback = a})

instance GoogleRequest MattersDelete where
        type Rs MattersDelete = Matter
        type Scopes MattersDelete =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersDelete'{..}
          = go _mdMatterId _mdXgafv _mdUploadProtocol
              _mdAccessToken
              _mdUploadType
              _mdCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersDeleteResource)
                      mempty
