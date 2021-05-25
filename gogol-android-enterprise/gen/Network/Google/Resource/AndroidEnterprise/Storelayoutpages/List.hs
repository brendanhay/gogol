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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all pages in the store.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.list@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.List
    (
    -- * REST Resource
      StorelayoutpagesListResource

    -- * Creating a Request
    , storelayoutpagesList
    , StorelayoutpagesList

    -- * Request Lenses
    , slXgafv
    , slUploadProtocol
    , slEnterpriseId
    , slAccessToken
    , slUploadType
    , slCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.list@ method which the
-- 'StorelayoutpagesList' request conforms to.
type StorelayoutpagesListResource =
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
                             Get '[JSON] StoreLayoutPagesListResponse

-- | Retrieves the details of all pages in the store.
--
-- /See:/ 'storelayoutpagesList' smart constructor.
data StorelayoutpagesList =
  StorelayoutpagesList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slEnterpriseId :: !Text
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutpagesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slEnterpriseId'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slCallback'
storelayoutpagesList
    :: Text -- ^ 'slEnterpriseId'
    -> StorelayoutpagesList
storelayoutpagesList pSlEnterpriseId_ =
  StorelayoutpagesList'
    { _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slEnterpriseId = pSlEnterpriseId_
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' StorelayoutpagesList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' StorelayoutpagesList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | The ID of the enterprise.
slEnterpriseId :: Lens' StorelayoutpagesList Text
slEnterpriseId
  = lens _slEnterpriseId
      (\ s a -> s{_slEnterpriseId = a})

-- | OAuth access token.
slAccessToken :: Lens' StorelayoutpagesList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' StorelayoutpagesList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | JSONP
slCallback :: Lens' StorelayoutpagesList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest StorelayoutpagesList where
        type Rs StorelayoutpagesList =
             StoreLayoutPagesListResponse
        type Scopes StorelayoutpagesList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutpagesList'{..}
          = go _slEnterpriseId _slXgafv _slUploadProtocol
              _slAccessToken
              _slUploadType
              _slCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesListResource)
                      mempty
