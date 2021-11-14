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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.insert@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Insert
    (
    -- * REST Resource
      StorelayoutpagesInsertResource

    -- * Creating a Request
    , storelayoutpagesInsert
    , StorelayoutpagesInsert

    -- * Request Lenses
    , siXgafv
    , siUploadProtocol
    , siEnterpriseId
    , siAccessToken
    , siUploadType
    , siPayload
    , siCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.insert@ method which the
-- 'StorelayoutpagesInsert' request conforms to.
type StorelayoutpagesInsertResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] StorePage :> Post '[JSON] StorePage

-- | Inserts a new store page.
--
-- /See:/ 'storelayoutpagesInsert' smart constructor.
data StorelayoutpagesInsert =
  StorelayoutpagesInsert'
    { _siXgafv :: !(Maybe Xgafv)
    , _siUploadProtocol :: !(Maybe Text)
    , _siEnterpriseId :: !Text
    , _siAccessToken :: !(Maybe Text)
    , _siUploadType :: !(Maybe Text)
    , _siPayload :: !StorePage
    , _siCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutpagesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siXgafv'
--
-- * 'siUploadProtocol'
--
-- * 'siEnterpriseId'
--
-- * 'siAccessToken'
--
-- * 'siUploadType'
--
-- * 'siPayload'
--
-- * 'siCallback'
storelayoutpagesInsert
    :: Text -- ^ 'siEnterpriseId'
    -> StorePage -- ^ 'siPayload'
    -> StorelayoutpagesInsert
storelayoutpagesInsert pSiEnterpriseId_ pSiPayload_ =
  StorelayoutpagesInsert'
    { _siXgafv = Nothing
    , _siUploadProtocol = Nothing
    , _siEnterpriseId = pSiEnterpriseId_
    , _siAccessToken = Nothing
    , _siUploadType = Nothing
    , _siPayload = pSiPayload_
    , _siCallback = Nothing
    }


-- | V1 error format.
siXgafv :: Lens' StorelayoutpagesInsert (Maybe Xgafv)
siXgafv = lens _siXgafv (\ s a -> s{_siXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
siUploadProtocol :: Lens' StorelayoutpagesInsert (Maybe Text)
siUploadProtocol
  = lens _siUploadProtocol
      (\ s a -> s{_siUploadProtocol = a})

-- | The ID of the enterprise.
siEnterpriseId :: Lens' StorelayoutpagesInsert Text
siEnterpriseId
  = lens _siEnterpriseId
      (\ s a -> s{_siEnterpriseId = a})

-- | OAuth access token.
siAccessToken :: Lens' StorelayoutpagesInsert (Maybe Text)
siAccessToken
  = lens _siAccessToken
      (\ s a -> s{_siAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
siUploadType :: Lens' StorelayoutpagesInsert (Maybe Text)
siUploadType
  = lens _siUploadType (\ s a -> s{_siUploadType = a})

-- | Multipart request metadata.
siPayload :: Lens' StorelayoutpagesInsert StorePage
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | JSONP
siCallback :: Lens' StorelayoutpagesInsert (Maybe Text)
siCallback
  = lens _siCallback (\ s a -> s{_siCallback = a})

instance GoogleRequest StorelayoutpagesInsert where
        type Rs StorelayoutpagesInsert = StorePage
        type Scopes StorelayoutpagesInsert =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutpagesInsert'{..}
          = go _siEnterpriseId _siXgafv _siUploadProtocol
              _siAccessToken
              _siUploadType
              _siCallback
              (Just AltJSON)
              _siPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesInsertResource)
                      mempty
