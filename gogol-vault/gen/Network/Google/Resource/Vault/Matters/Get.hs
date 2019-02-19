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
-- Module      : Network.Google.Resource.Vault.Matters.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified matter.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.get@.
module Network.Google.Resource.Vault.Matters.Get
    (
    -- * REST Resource
      MattersGetResource

    -- * Creating a Request
    , mattersGet
    , MattersGet

    -- * Request Lenses
    , mgXgafv
    , mgUploadProtocol
    , mgAccessToken
    , mgUploadType
    , mgMatterId
    , mgView
    , mgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.get@ method which the
-- 'MattersGet' request conforms to.
type MattersGetResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Matter

-- | Gets the specified matter.
--
-- /See:/ 'mattersGet' smart constructor.
data MattersGet =
  MattersGet'
    { _mgXgafv          :: !(Maybe Xgafv)
    , _mgUploadProtocol :: !(Maybe Text)
    , _mgAccessToken    :: !(Maybe Text)
    , _mgUploadType     :: !(Maybe Text)
    , _mgMatterId       :: !Text
    , _mgView           :: !(Maybe Text)
    , _mgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MattersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgXgafv'
--
-- * 'mgUploadProtocol'
--
-- * 'mgAccessToken'
--
-- * 'mgUploadType'
--
-- * 'mgMatterId'
--
-- * 'mgView'
--
-- * 'mgCallback'
mattersGet
    :: Text -- ^ 'mgMatterId'
    -> MattersGet
mattersGet pMgMatterId_ =
  MattersGet'
    { _mgXgafv = Nothing
    , _mgUploadProtocol = Nothing
    , _mgAccessToken = Nothing
    , _mgUploadType = Nothing
    , _mgMatterId = pMgMatterId_
    , _mgView = Nothing
    , _mgCallback = Nothing
    }

-- | V1 error format.
mgXgafv :: Lens' MattersGet (Maybe Xgafv)
mgXgafv = lens _mgXgafv (\ s a -> s{_mgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mgUploadProtocol :: Lens' MattersGet (Maybe Text)
mgUploadProtocol
  = lens _mgUploadProtocol
      (\ s a -> s{_mgUploadProtocol = a})

-- | OAuth access token.
mgAccessToken :: Lens' MattersGet (Maybe Text)
mgAccessToken
  = lens _mgAccessToken
      (\ s a -> s{_mgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mgUploadType :: Lens' MattersGet (Maybe Text)
mgUploadType
  = lens _mgUploadType (\ s a -> s{_mgUploadType = a})

-- | The matter ID.
mgMatterId :: Lens' MattersGet Text
mgMatterId
  = lens _mgMatterId (\ s a -> s{_mgMatterId = a})

-- | Specifies which parts of the Matter to return in the response.
mgView :: Lens' MattersGet (Maybe Text)
mgView = lens _mgView (\ s a -> s{_mgView = a})

-- | JSONP
mgCallback :: Lens' MattersGet (Maybe Text)
mgCallback
  = lens _mgCallback (\ s a -> s{_mgCallback = a})

instance GoogleRequest MattersGet where
        type Rs MattersGet = Matter
        type Scopes MattersGet =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersGet'{..}
          = go _mgMatterId _mgXgafv _mgUploadProtocol
              _mgAccessToken
              _mgUploadType
              _mgView
              _mgCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersGetResource)
                      mempty
