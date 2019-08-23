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
-- Module      : Network.Google.Resource.Vault.Matters.Exports.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Export.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.exports.delete@.
module Network.Google.Resource.Vault.Matters.Exports.Delete
    (
    -- * REST Resource
      MattersExportsDeleteResource

    -- * Creating a Request
    , mattersExportsDelete
    , MattersExportsDelete

    -- * Request Lenses
    , medXgafv
    , medUploadProtocol
    , medAccessToken
    , medUploadType
    , medMatterId
    , medExportId
    , medCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vault.Types

-- | A resource alias for @vault.matters.exports.delete@ method which the
-- 'MattersExportsDelete' request conforms to.
type MattersExportsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an Export.
--
-- /See:/ 'mattersExportsDelete' smart constructor.
data MattersExportsDelete =
  MattersExportsDelete'
    { _medXgafv          :: !(Maybe Xgafv)
    , _medUploadProtocol :: !(Maybe Text)
    , _medAccessToken    :: !(Maybe Text)
    , _medUploadType     :: !(Maybe Text)
    , _medMatterId       :: !Text
    , _medExportId       :: !Text
    , _medCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersExportsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'medXgafv'
--
-- * 'medUploadProtocol'
--
-- * 'medAccessToken'
--
-- * 'medUploadType'
--
-- * 'medMatterId'
--
-- * 'medExportId'
--
-- * 'medCallback'
mattersExportsDelete
    :: Text -- ^ 'medMatterId'
    -> Text -- ^ 'medExportId'
    -> MattersExportsDelete
mattersExportsDelete pMedMatterId_ pMedExportId_ =
  MattersExportsDelete'
    { _medXgafv = Nothing
    , _medUploadProtocol = Nothing
    , _medAccessToken = Nothing
    , _medUploadType = Nothing
    , _medMatterId = pMedMatterId_
    , _medExportId = pMedExportId_
    , _medCallback = Nothing
    }


-- | V1 error format.
medXgafv :: Lens' MattersExportsDelete (Maybe Xgafv)
medXgafv = lens _medXgafv (\ s a -> s{_medXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
medUploadProtocol :: Lens' MattersExportsDelete (Maybe Text)
medUploadProtocol
  = lens _medUploadProtocol
      (\ s a -> s{_medUploadProtocol = a})

-- | OAuth access token.
medAccessToken :: Lens' MattersExportsDelete (Maybe Text)
medAccessToken
  = lens _medAccessToken
      (\ s a -> s{_medAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
medUploadType :: Lens' MattersExportsDelete (Maybe Text)
medUploadType
  = lens _medUploadType
      (\ s a -> s{_medUploadType = a})

-- | The matter ID.
medMatterId :: Lens' MattersExportsDelete Text
medMatterId
  = lens _medMatterId (\ s a -> s{_medMatterId = a})

-- | The export ID.
medExportId :: Lens' MattersExportsDelete Text
medExportId
  = lens _medExportId (\ s a -> s{_medExportId = a})

-- | JSONP
medCallback :: Lens' MattersExportsDelete (Maybe Text)
medCallback
  = lens _medCallback (\ s a -> s{_medCallback = a})

instance GoogleRequest MattersExportsDelete where
        type Rs MattersExportsDelete = Empty
        type Scopes MattersExportsDelete =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersExportsDelete'{..}
          = go _medMatterId _medExportId _medXgafv
              _medUploadProtocol
              _medAccessToken
              _medUploadType
              _medCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersExportsDeleteResource)
                      mempty
