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
-- Module      : Network.Google.Resource.Vault.Matters.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new matter with the given name and description. The initial
-- state is open, and the owner is the method caller. Returns the created
-- matter with default view.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.create@.
module Network.Google.Resource.Vault.Matters.Create
    (
    -- * REST Resource
      MattersCreateResource

    -- * Creating a Request
    , mattersCreate
    , MattersCreate

    -- * Request Lenses
    , mXgafv
    , mUploadProtocol
    , mAccessToken
    , mUploadType
    , mPayload
    , mCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.create@ method which the
-- 'MattersCreate' request conforms to.
type MattersCreateResource =
     "v1" :>
       "matters" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Matter :> Post '[JSON] Matter

-- | Creates a new matter with the given name and description. The initial
-- state is open, and the owner is the method caller. Returns the created
-- matter with default view.
--
-- /See:/ 'mattersCreate' smart constructor.
data MattersCreate =
  MattersCreate'
    { _mXgafv          :: !(Maybe Xgafv)
    , _mUploadProtocol :: !(Maybe Text)
    , _mAccessToken    :: !(Maybe Text)
    , _mUploadType     :: !(Maybe Text)
    , _mPayload        :: !Matter
    , _mCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mXgafv'
--
-- * 'mUploadProtocol'
--
-- * 'mAccessToken'
--
-- * 'mUploadType'
--
-- * 'mPayload'
--
-- * 'mCallback'
mattersCreate
    :: Matter -- ^ 'mPayload'
    -> MattersCreate
mattersCreate pMPayload_ =
  MattersCreate'
    { _mXgafv = Nothing
    , _mUploadProtocol = Nothing
    , _mAccessToken = Nothing
    , _mUploadType = Nothing
    , _mPayload = pMPayload_
    , _mCallback = Nothing
    }


-- | V1 error format.
mXgafv :: Lens' MattersCreate (Maybe Xgafv)
mXgafv = lens _mXgafv (\ s a -> s{_mXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mUploadProtocol :: Lens' MattersCreate (Maybe Text)
mUploadProtocol
  = lens _mUploadProtocol
      (\ s a -> s{_mUploadProtocol = a})

-- | OAuth access token.
mAccessToken :: Lens' MattersCreate (Maybe Text)
mAccessToken
  = lens _mAccessToken (\ s a -> s{_mAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mUploadType :: Lens' MattersCreate (Maybe Text)
mUploadType
  = lens _mUploadType (\ s a -> s{_mUploadType = a})

-- | Multipart request metadata.
mPayload :: Lens' MattersCreate Matter
mPayload = lens _mPayload (\ s a -> s{_mPayload = a})

-- | JSONP
mCallback :: Lens' MattersCreate (Maybe Text)
mCallback
  = lens _mCallback (\ s a -> s{_mCallback = a})

instance GoogleRequest MattersCreate where
        type Rs MattersCreate = Matter
        type Scopes MattersCreate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersCreate'{..}
          = go _mXgafv _mUploadProtocol _mAccessToken
              _mUploadType
              _mCallback
              (Just AltJSON)
              _mPayload
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersCreateResource)
                      mempty
