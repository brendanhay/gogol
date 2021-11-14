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
-- Module      : Network.Google.Resource.Vault.Matters.Exports.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists details about the exports in the specified matter.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.exports.list@.
module Network.Google.Resource.Vault.Matters.Exports.List
    (
    -- * REST Resource
      MattersExportsListResource

    -- * Creating a Request
    , mattersExportsList
    , MattersExportsList

    -- * Request Lenses
    , melXgafv
    , melUploadProtocol
    , melAccessToken
    , melUploadType
    , melMatterId
    , melPageToken
    , melPageSize
    , melCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.exports.list@ method which the
-- 'MattersExportsList' request conforms to.
type MattersExportsListResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "exports" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListExportsResponse

-- | Lists details about the exports in the specified matter.
--
-- /See:/ 'mattersExportsList' smart constructor.
data MattersExportsList =
  MattersExportsList'
    { _melXgafv :: !(Maybe Xgafv)
    , _melUploadProtocol :: !(Maybe Text)
    , _melAccessToken :: !(Maybe Text)
    , _melUploadType :: !(Maybe Text)
    , _melMatterId :: !Text
    , _melPageToken :: !(Maybe Text)
    , _melPageSize :: !(Maybe (Textual Int32))
    , _melCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersExportsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'melXgafv'
--
-- * 'melUploadProtocol'
--
-- * 'melAccessToken'
--
-- * 'melUploadType'
--
-- * 'melMatterId'
--
-- * 'melPageToken'
--
-- * 'melPageSize'
--
-- * 'melCallback'
mattersExportsList
    :: Text -- ^ 'melMatterId'
    -> MattersExportsList
mattersExportsList pMelMatterId_ =
  MattersExportsList'
    { _melXgafv = Nothing
    , _melUploadProtocol = Nothing
    , _melAccessToken = Nothing
    , _melUploadType = Nothing
    , _melMatterId = pMelMatterId_
    , _melPageToken = Nothing
    , _melPageSize = Nothing
    , _melCallback = Nothing
    }


-- | V1 error format.
melXgafv :: Lens' MattersExportsList (Maybe Xgafv)
melXgafv = lens _melXgafv (\ s a -> s{_melXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
melUploadProtocol :: Lens' MattersExportsList (Maybe Text)
melUploadProtocol
  = lens _melUploadProtocol
      (\ s a -> s{_melUploadProtocol = a})

-- | OAuth access token.
melAccessToken :: Lens' MattersExportsList (Maybe Text)
melAccessToken
  = lens _melAccessToken
      (\ s a -> s{_melAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
melUploadType :: Lens' MattersExportsList (Maybe Text)
melUploadType
  = lens _melUploadType
      (\ s a -> s{_melUploadType = a})

-- | The matter ID.
melMatterId :: Lens' MattersExportsList Text
melMatterId
  = lens _melMatterId (\ s a -> s{_melMatterId = a})

-- | The pagination token as returned in the response.
melPageToken :: Lens' MattersExportsList (Maybe Text)
melPageToken
  = lens _melPageToken (\ s a -> s{_melPageToken = a})

-- | The number of exports to return in the response.
melPageSize :: Lens' MattersExportsList (Maybe Int32)
melPageSize
  = lens _melPageSize (\ s a -> s{_melPageSize = a}) .
      mapping _Coerce

-- | JSONP
melCallback :: Lens' MattersExportsList (Maybe Text)
melCallback
  = lens _melCallback (\ s a -> s{_melCallback = a})

instance GoogleRequest MattersExportsList where
        type Rs MattersExportsList = ListExportsResponse
        type Scopes MattersExportsList =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersExportsList'{..}
          = go _melMatterId _melXgafv _melUploadProtocol
              _melAccessToken
              _melUploadType
              _melPageToken
              _melPageSize
              _melCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersExportsListResource)
                      mempty
