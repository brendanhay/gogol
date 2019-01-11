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
-- Module      : Network.Google.Resource.Vault.Matters.Holds.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a hold in the given matter.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.holds.create@.
module Network.Google.Resource.Vault.Matters.Holds.Create
    (
    -- * REST Resource
      MattersHoldsCreateResource

    -- * Creating a Request
    , mattersHoldsCreate
    , MattersHoldsCreate

    -- * Request Lenses
    , mhcXgafv
    , mhcUploadProtocol
    , mhcAccessToken
    , mhcUploadType
    , mhcPayload
    , mhcMatterId
    , mhcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.holds.create@ method which the
-- 'MattersHoldsCreate' request conforms to.
type MattersHoldsCreateResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "holds" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Hold :> Post '[JSON] Hold

-- | Creates a hold in the given matter.
--
-- /See:/ 'mattersHoldsCreate' smart constructor.
data MattersHoldsCreate = MattersHoldsCreate'
    { _mhcXgafv          :: !(Maybe Xgafv)
    , _mhcUploadProtocol :: !(Maybe Text)
    , _mhcAccessToken    :: !(Maybe Text)
    , _mhcUploadType     :: !(Maybe Text)
    , _mhcPayload        :: !Hold
    , _mhcMatterId       :: !Text
    , _mhcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MattersHoldsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mhcXgafv'
--
-- * 'mhcUploadProtocol'
--
-- * 'mhcAccessToken'
--
-- * 'mhcUploadType'
--
-- * 'mhcPayload'
--
-- * 'mhcMatterId'
--
-- * 'mhcCallback'
mattersHoldsCreate
    :: Hold -- ^ 'mhcPayload'
    -> Text -- ^ 'mhcMatterId'
    -> MattersHoldsCreate
mattersHoldsCreate pMhcPayload_ pMhcMatterId_ =
    MattersHoldsCreate'
    { _mhcXgafv = Nothing
    , _mhcUploadProtocol = Nothing
    , _mhcAccessToken = Nothing
    , _mhcUploadType = Nothing
    , _mhcPayload = pMhcPayload_
    , _mhcMatterId = pMhcMatterId_
    , _mhcCallback = Nothing
    }

-- | V1 error format.
mhcXgafv :: Lens' MattersHoldsCreate (Maybe Xgafv)
mhcXgafv = lens _mhcXgafv (\ s a -> s{_mhcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mhcUploadProtocol :: Lens' MattersHoldsCreate (Maybe Text)
mhcUploadProtocol
  = lens _mhcUploadProtocol
      (\ s a -> s{_mhcUploadProtocol = a})

-- | OAuth access token.
mhcAccessToken :: Lens' MattersHoldsCreate (Maybe Text)
mhcAccessToken
  = lens _mhcAccessToken
      (\ s a -> s{_mhcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mhcUploadType :: Lens' MattersHoldsCreate (Maybe Text)
mhcUploadType
  = lens _mhcUploadType
      (\ s a -> s{_mhcUploadType = a})

-- | Multipart request metadata.
mhcPayload :: Lens' MattersHoldsCreate Hold
mhcPayload
  = lens _mhcPayload (\ s a -> s{_mhcPayload = a})

-- | The matter ID.
mhcMatterId :: Lens' MattersHoldsCreate Text
mhcMatterId
  = lens _mhcMatterId (\ s a -> s{_mhcMatterId = a})

-- | JSONP
mhcCallback :: Lens' MattersHoldsCreate (Maybe Text)
mhcCallback
  = lens _mhcCallback (\ s a -> s{_mhcCallback = a})

instance GoogleRequest MattersHoldsCreate where
        type Rs MattersHoldsCreate = Hold
        type Scopes MattersHoldsCreate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersHoldsCreate'{..}
          = go _mhcMatterId _mhcXgafv _mhcUploadProtocol
              _mhcAccessToken
              _mhcUploadType
              _mhcCallback
              (Just AltJSON)
              _mhcPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersHoldsCreateResource)
                      mempty
