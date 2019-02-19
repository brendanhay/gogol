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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a hold by ID.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.get@.
module Network.Google.Resource.Vault.Matters.Holds.Get
    (
    -- * REST Resource
      MattersHoldsGetResource

    -- * Creating a Request
    , mattersHoldsGet
    , MattersHoldsGet

    -- * Request Lenses
    , mhgXgafv
    , mhgUploadProtocol
    , mhgHoldId
    , mhgAccessToken
    , mhgUploadType
    , mhgMatterId
    , mhgView
    , mhgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.get@ method which the
-- 'MattersHoldsGet' request conforms to.
type MattersHoldsGetResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "holds" :>
             Capture "holdId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "view" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Hold

-- | Gets a hold by ID.
--
-- /See:/ 'mattersHoldsGet' smart constructor.
data MattersHoldsGet =
  MattersHoldsGet'
    { _mhgXgafv          :: !(Maybe Xgafv)
    , _mhgUploadProtocol :: !(Maybe Text)
    , _mhgHoldId         :: !Text
    , _mhgAccessToken    :: !(Maybe Text)
    , _mhgUploadType     :: !(Maybe Text)
    , _mhgMatterId       :: !Text
    , _mhgView           :: !(Maybe Text)
    , _mhgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MattersHoldsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhgXgafv'
--
-- * 'mhgUploadProtocol'
--
-- * 'mhgHoldId'
--
-- * 'mhgAccessToken'
--
-- * 'mhgUploadType'
--
-- * 'mhgMatterId'
--
-- * 'mhgView'
--
-- * 'mhgCallback'
mattersHoldsGet
    :: Text -- ^ 'mhgHoldId'
    -> Text -- ^ 'mhgMatterId'
    -> MattersHoldsGet
mattersHoldsGet pMhgHoldId_ pMhgMatterId_ =
  MattersHoldsGet'
    { _mhgXgafv = Nothing
    , _mhgUploadProtocol = Nothing
    , _mhgHoldId = pMhgHoldId_
    , _mhgAccessToken = Nothing
    , _mhgUploadType = Nothing
    , _mhgMatterId = pMhgMatterId_
    , _mhgView = Nothing
    , _mhgCallback = Nothing
    }

-- | V1 error format.
mhgXgafv :: Lens' MattersHoldsGet (Maybe Xgafv)
mhgXgafv = lens _mhgXgafv (\ s a -> s{_mhgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhgUploadProtocol :: Lens' MattersHoldsGet (Maybe Text)
mhgUploadProtocol
  = lens _mhgUploadProtocol
      (\ s a -> s{_mhgUploadProtocol = a})

-- | The hold ID.
mhgHoldId :: Lens' MattersHoldsGet Text
mhgHoldId
  = lens _mhgHoldId (\ s a -> s{_mhgHoldId = a})

-- | OAuth access token.
mhgAccessToken :: Lens' MattersHoldsGet (Maybe Text)
mhgAccessToken
  = lens _mhgAccessToken
      (\ s a -> s{_mhgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhgUploadType :: Lens' MattersHoldsGet (Maybe Text)
mhgUploadType
  = lens _mhgUploadType
      (\ s a -> s{_mhgUploadType = a})

-- | The matter ID.
mhgMatterId :: Lens' MattersHoldsGet Text
mhgMatterId
  = lens _mhgMatterId (\ s a -> s{_mhgMatterId = a})

-- | Specifies which parts of the Hold to return.
mhgView :: Lens' MattersHoldsGet (Maybe Text)
mhgView = lens _mhgView (\ s a -> s{_mhgView = a})

-- | JSONP
mhgCallback :: Lens' MattersHoldsGet (Maybe Text)
mhgCallback
  = lens _mhgCallback (\ s a -> s{_mhgCallback = a})

instance GoogleRequest MattersHoldsGet where
        type Rs MattersHoldsGet = Hold
        type Scopes MattersHoldsGet =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersHoldsGet'{..}
          = go _mhgMatterId _mhgHoldId _mhgXgafv
              _mhgUploadProtocol
              _mhgAccessToken
              _mhgUploadType
              _mhgView
              _mhgCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsGetResource)
                      mempty
