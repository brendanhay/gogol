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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.delete@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Delete
    (
    -- * REST Resource
      StorelayoutpagesDeleteResource

    -- * Creating a Request
    , storelayoutpagesDelete
    , StorelayoutpagesDelete

    -- * Request Lenses
    , sdXgafv
    , sdUploadProtocol
    , sdEnterpriseId
    , sdAccessToken
    , sdUploadType
    , sdPageId
    , sdCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.delete@ method which the
-- 'StorelayoutpagesDelete' request conforms to.
type StorelayoutpagesDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a store page.
--
-- /See:/ 'storelayoutpagesDelete' smart constructor.
data StorelayoutpagesDelete =
  StorelayoutpagesDelete'
    { _sdXgafv :: !(Maybe Xgafv)
    , _sdUploadProtocol :: !(Maybe Text)
    , _sdEnterpriseId :: !Text
    , _sdAccessToken :: !(Maybe Text)
    , _sdUploadType :: !(Maybe Text)
    , _sdPageId :: !Text
    , _sdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutpagesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdXgafv'
--
-- * 'sdUploadProtocol'
--
-- * 'sdEnterpriseId'
--
-- * 'sdAccessToken'
--
-- * 'sdUploadType'
--
-- * 'sdPageId'
--
-- * 'sdCallback'
storelayoutpagesDelete
    :: Text -- ^ 'sdEnterpriseId'
    -> Text -- ^ 'sdPageId'
    -> StorelayoutpagesDelete
storelayoutpagesDelete pSdEnterpriseId_ pSdPageId_ =
  StorelayoutpagesDelete'
    { _sdXgafv = Nothing
    , _sdUploadProtocol = Nothing
    , _sdEnterpriseId = pSdEnterpriseId_
    , _sdAccessToken = Nothing
    , _sdUploadType = Nothing
    , _sdPageId = pSdPageId_
    , _sdCallback = Nothing
    }


-- | V1 error format.
sdXgafv :: Lens' StorelayoutpagesDelete (Maybe Xgafv)
sdXgafv = lens _sdXgafv (\ s a -> s{_sdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdUploadProtocol :: Lens' StorelayoutpagesDelete (Maybe Text)
sdUploadProtocol
  = lens _sdUploadProtocol
      (\ s a -> s{_sdUploadProtocol = a})

-- | The ID of the enterprise.
sdEnterpriseId :: Lens' StorelayoutpagesDelete Text
sdEnterpriseId
  = lens _sdEnterpriseId
      (\ s a -> s{_sdEnterpriseId = a})

-- | OAuth access token.
sdAccessToken :: Lens' StorelayoutpagesDelete (Maybe Text)
sdAccessToken
  = lens _sdAccessToken
      (\ s a -> s{_sdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdUploadType :: Lens' StorelayoutpagesDelete (Maybe Text)
sdUploadType
  = lens _sdUploadType (\ s a -> s{_sdUploadType = a})

-- | The ID of the page.
sdPageId :: Lens' StorelayoutpagesDelete Text
sdPageId = lens _sdPageId (\ s a -> s{_sdPageId = a})

-- | JSONP
sdCallback :: Lens' StorelayoutpagesDelete (Maybe Text)
sdCallback
  = lens _sdCallback (\ s a -> s{_sdCallback = a})

instance GoogleRequest StorelayoutpagesDelete where
        type Rs StorelayoutpagesDelete = ()
        type Scopes StorelayoutpagesDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutpagesDelete'{..}
          = go _sdEnterpriseId _sdPageId _sdXgafv
              _sdUploadProtocol
              _sdAccessToken
              _sdUploadType
              _sdCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesDeleteResource)
                      mempty
