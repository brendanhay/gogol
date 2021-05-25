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
-- Module      : Network.Google.Resource.Vault.Matters.Exports.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an export.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.exports.get@.
module Network.Google.Resource.Vault.Matters.Exports.Get
    (
    -- * REST Resource
      MattersExportsGetResource

    -- * Creating a Request
    , mattersExportsGet
    , MattersExportsGet

    -- * Request Lenses
    , megXgafv
    , megUploadProtocol
    , megAccessToken
    , megUploadType
    , megMatterId
    , megExportId
    , megCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.exports.get@ method which the
-- 'MattersExportsGet' request conforms to.
type MattersExportsGetResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "exports" :>
             Capture "exportId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Export

-- | Gets an export.
--
-- /See:/ 'mattersExportsGet' smart constructor.
data MattersExportsGet =
  MattersExportsGet'
    { _megXgafv :: !(Maybe Xgafv)
    , _megUploadProtocol :: !(Maybe Text)
    , _megAccessToken :: !(Maybe Text)
    , _megUploadType :: !(Maybe Text)
    , _megMatterId :: !Text
    , _megExportId :: !Text
    , _megCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersExportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'megXgafv'
--
-- * 'megUploadProtocol'
--
-- * 'megAccessToken'
--
-- * 'megUploadType'
--
-- * 'megMatterId'
--
-- * 'megExportId'
--
-- * 'megCallback'
mattersExportsGet
    :: Text -- ^ 'megMatterId'
    -> Text -- ^ 'megExportId'
    -> MattersExportsGet
mattersExportsGet pMegMatterId_ pMegExportId_ =
  MattersExportsGet'
    { _megXgafv = Nothing
    , _megUploadProtocol = Nothing
    , _megAccessToken = Nothing
    , _megUploadType = Nothing
    , _megMatterId = pMegMatterId_
    , _megExportId = pMegExportId_
    , _megCallback = Nothing
    }


-- | V1 error format.
megXgafv :: Lens' MattersExportsGet (Maybe Xgafv)
megXgafv = lens _megXgafv (\ s a -> s{_megXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
megUploadProtocol :: Lens' MattersExportsGet (Maybe Text)
megUploadProtocol
  = lens _megUploadProtocol
      (\ s a -> s{_megUploadProtocol = a})

-- | OAuth access token.
megAccessToken :: Lens' MattersExportsGet (Maybe Text)
megAccessToken
  = lens _megAccessToken
      (\ s a -> s{_megAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
megUploadType :: Lens' MattersExportsGet (Maybe Text)
megUploadType
  = lens _megUploadType
      (\ s a -> s{_megUploadType = a})

-- | The matter ID.
megMatterId :: Lens' MattersExportsGet Text
megMatterId
  = lens _megMatterId (\ s a -> s{_megMatterId = a})

-- | The export ID.
megExportId :: Lens' MattersExportsGet Text
megExportId
  = lens _megExportId (\ s a -> s{_megExportId = a})

-- | JSONP
megCallback :: Lens' MattersExportsGet (Maybe Text)
megCallback
  = lens _megCallback (\ s a -> s{_megCallback = a})

instance GoogleRequest MattersExportsGet where
        type Rs MattersExportsGet = Export
        type Scopes MattersExportsGet =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersExportsGet'{..}
          = go _megMatterId _megExportId _megXgafv
              _megUploadProtocol
              _megAccessToken
              _megUploadType
              _megCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersExportsGetResource)
                      mempty
