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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified matter. This updates only the name and description
-- of the matter, identified by matter id. Changes to any other fields are
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
    , matXgafv
    , matUploadProtocol
    , matAccessToken
    , matUploadType
    , matPayload
    , matMatterId
    , matCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

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
-- of the matter, identified by matter id. Changes to any other fields are
-- ignored. Returns the default view of the matter.
--
-- /See:/ 'mattersUpdate' smart constructor.
data MattersUpdate =
  MattersUpdate'
    { _matXgafv          :: !(Maybe Xgafv)
    , _matUploadProtocol :: !(Maybe Text)
    , _matAccessToken    :: !(Maybe Text)
    , _matUploadType     :: !(Maybe Text)
    , _matPayload        :: !Matter
    , _matMatterId       :: !Text
    , _matCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MattersUpdate' with the minimum fields required to make a request.
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
mattersUpdate
    :: Matter -- ^ 'matPayload'
    -> Text -- ^ 'matMatterId'
    -> MattersUpdate
mattersUpdate pMatPayload_ pMatMatterId_ =
  MattersUpdate'
    { _matXgafv = Nothing
    , _matUploadProtocol = Nothing
    , _matAccessToken = Nothing
    , _matUploadType = Nothing
    , _matPayload = pMatPayload_
    , _matMatterId = pMatMatterId_
    , _matCallback = Nothing
    }

-- | V1 error format.
matXgafv :: Lens' MattersUpdate (Maybe Xgafv)
matXgafv = lens _matXgafv (\ s a -> s{_matXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
matUploadProtocol :: Lens' MattersUpdate (Maybe Text)
matUploadProtocol
  = lens _matUploadProtocol
      (\ s a -> s{_matUploadProtocol = a})

-- | OAuth access token.
matAccessToken :: Lens' MattersUpdate (Maybe Text)
matAccessToken
  = lens _matAccessToken
      (\ s a -> s{_matAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
matUploadType :: Lens' MattersUpdate (Maybe Text)
matUploadType
  = lens _matUploadType
      (\ s a -> s{_matUploadType = a})

-- | Multipart request metadata.
matPayload :: Lens' MattersUpdate Matter
matPayload
  = lens _matPayload (\ s a -> s{_matPayload = a})

-- | The matter ID.
matMatterId :: Lens' MattersUpdate Text
matMatterId
  = lens _matMatterId (\ s a -> s{_matMatterId = a})

-- | JSONP
matCallback :: Lens' MattersUpdate (Maybe Text)
matCallback
  = lens _matCallback (\ s a -> s{_matCallback = a})

instance GoogleRequest MattersUpdate where
        type Rs MattersUpdate = Matter
        type Scopes MattersUpdate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersUpdate'{..}
          = go _matMatterId _matXgafv _matUploadProtocol
              _matAccessToken
              _matUploadType
              _matCallback
              (Just AltJSON)
              _matPayload
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersUpdateResource)
                      mempty
