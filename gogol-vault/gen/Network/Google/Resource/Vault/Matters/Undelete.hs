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
-- Module      : Network.Google.Resource.Vault.Matters.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes the specified matter. Returns matter with updated state.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.undelete@.
module Network.Google.Resource.Vault.Matters.Undelete
    (
    -- * REST Resource
      MattersUndeleteResource

    -- * Creating a Request
    , mattersUndelete
    , MattersUndelete

    -- * Request Lenses
    , muXgafv
    , muUploadProtocol
    , muAccessToken
    , muUploadType
    , muPayload
    , muMatterId
    , muCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.undelete@ method which the
-- 'MattersUndelete' request conforms to.
type MattersUndeleteResource =
     "v1" :>
       "matters" :>
         CaptureMode "matterId" "undelete" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UndeleteMatterRequest :>
                         Post '[JSON] Matter

-- | Undeletes the specified matter. Returns matter with updated state.
--
-- /See:/ 'mattersUndelete' smart constructor.
data MattersUndelete =
  MattersUndelete'
    { _muXgafv          :: !(Maybe Xgafv)
    , _muUploadProtocol :: !(Maybe Text)
    , _muAccessToken    :: !(Maybe Text)
    , _muUploadType     :: !(Maybe Text)
    , _muPayload        :: !UndeleteMatterRequest
    , _muMatterId       :: !Text
    , _muCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MattersUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muXgafv'
--
-- * 'muUploadProtocol'
--
-- * 'muAccessToken'
--
-- * 'muUploadType'
--
-- * 'muPayload'
--
-- * 'muMatterId'
--
-- * 'muCallback'
mattersUndelete
    :: UndeleteMatterRequest -- ^ 'muPayload'
    -> Text -- ^ 'muMatterId'
    -> MattersUndelete
mattersUndelete pMuPayload_ pMuMatterId_ =
  MattersUndelete'
    { _muXgafv = Nothing
    , _muUploadProtocol = Nothing
    , _muAccessToken = Nothing
    , _muUploadType = Nothing
    , _muPayload = pMuPayload_
    , _muMatterId = pMuMatterId_
    , _muCallback = Nothing
    }

-- | V1 error format.
muXgafv :: Lens' MattersUndelete (Maybe Xgafv)
muXgafv = lens _muXgafv (\ s a -> s{_muXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
muUploadProtocol :: Lens' MattersUndelete (Maybe Text)
muUploadProtocol
  = lens _muUploadProtocol
      (\ s a -> s{_muUploadProtocol = a})

-- | OAuth access token.
muAccessToken :: Lens' MattersUndelete (Maybe Text)
muAccessToken
  = lens _muAccessToken
      (\ s a -> s{_muAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
muUploadType :: Lens' MattersUndelete (Maybe Text)
muUploadType
  = lens _muUploadType (\ s a -> s{_muUploadType = a})

-- | Multipart request metadata.
muPayload :: Lens' MattersUndelete UndeleteMatterRequest
muPayload
  = lens _muPayload (\ s a -> s{_muPayload = a})

-- | The matter ID.
muMatterId :: Lens' MattersUndelete Text
muMatterId
  = lens _muMatterId (\ s a -> s{_muMatterId = a})

-- | JSONP
muCallback :: Lens' MattersUndelete (Maybe Text)
muCallback
  = lens _muCallback (\ s a -> s{_muCallback = a})

instance GoogleRequest MattersUndelete where
        type Rs MattersUndelete = Matter
        type Scopes MattersUndelete =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersUndelete'{..}
          = go _muMatterId _muXgafv _muUploadProtocol
              _muAccessToken
              _muUploadType
              _muCallback
              (Just AltJSON)
              _muPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersUndeleteResource)
                      mempty
