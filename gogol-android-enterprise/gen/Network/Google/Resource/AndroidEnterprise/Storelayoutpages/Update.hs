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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of a store page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutpages.update@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutpages.Update
    (
    -- * REST Resource
      StorelayoutpagesUpdateResource

    -- * Creating a Request
    , storelayoutpagesUpdate
    , StorelayoutpagesUpdate

    -- * Request Lenses
    , suXgafv
    , suUploadProtocol
    , suEnterpriseId
    , suAccessToken
    , suUploadType
    , suPageId
    , suPayload
    , suCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutpages.update@ method which the
-- 'StorelayoutpagesUpdate' request conforms to.
type StorelayoutpagesUpdateResource =
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
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] StorePage :>
                                 Put '[JSON] StorePage

-- | Updates the content of a store page.
--
-- /See:/ 'storelayoutpagesUpdate' smart constructor.
data StorelayoutpagesUpdate =
  StorelayoutpagesUpdate'
    { _suXgafv :: !(Maybe Xgafv)
    , _suUploadProtocol :: !(Maybe Text)
    , _suEnterpriseId :: !Text
    , _suAccessToken :: !(Maybe Text)
    , _suUploadType :: !(Maybe Text)
    , _suPageId :: !Text
    , _suPayload :: !StorePage
    , _suCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutpagesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suXgafv'
--
-- * 'suUploadProtocol'
--
-- * 'suEnterpriseId'
--
-- * 'suAccessToken'
--
-- * 'suUploadType'
--
-- * 'suPageId'
--
-- * 'suPayload'
--
-- * 'suCallback'
storelayoutpagesUpdate
    :: Text -- ^ 'suEnterpriseId'
    -> Text -- ^ 'suPageId'
    -> StorePage -- ^ 'suPayload'
    -> StorelayoutpagesUpdate
storelayoutpagesUpdate pSuEnterpriseId_ pSuPageId_ pSuPayload_ =
  StorelayoutpagesUpdate'
    { _suXgafv = Nothing
    , _suUploadProtocol = Nothing
    , _suEnterpriseId = pSuEnterpriseId_
    , _suAccessToken = Nothing
    , _suUploadType = Nothing
    , _suPageId = pSuPageId_
    , _suPayload = pSuPayload_
    , _suCallback = Nothing
    }


-- | V1 error format.
suXgafv :: Lens' StorelayoutpagesUpdate (Maybe Xgafv)
suXgafv = lens _suXgafv (\ s a -> s{_suXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
suUploadProtocol :: Lens' StorelayoutpagesUpdate (Maybe Text)
suUploadProtocol
  = lens _suUploadProtocol
      (\ s a -> s{_suUploadProtocol = a})

-- | The ID of the enterprise.
suEnterpriseId :: Lens' StorelayoutpagesUpdate Text
suEnterpriseId
  = lens _suEnterpriseId
      (\ s a -> s{_suEnterpriseId = a})

-- | OAuth access token.
suAccessToken :: Lens' StorelayoutpagesUpdate (Maybe Text)
suAccessToken
  = lens _suAccessToken
      (\ s a -> s{_suAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
suUploadType :: Lens' StorelayoutpagesUpdate (Maybe Text)
suUploadType
  = lens _suUploadType (\ s a -> s{_suUploadType = a})

-- | The ID of the page.
suPageId :: Lens' StorelayoutpagesUpdate Text
suPageId = lens _suPageId (\ s a -> s{_suPageId = a})

-- | Multipart request metadata.
suPayload :: Lens' StorelayoutpagesUpdate StorePage
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | JSONP
suCallback :: Lens' StorelayoutpagesUpdate (Maybe Text)
suCallback
  = lens _suCallback (\ s a -> s{_suCallback = a})

instance GoogleRequest StorelayoutpagesUpdate where
        type Rs StorelayoutpagesUpdate = StorePage
        type Scopes StorelayoutpagesUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutpagesUpdate'{..}
          = go _suEnterpriseId _suPageId _suXgafv
              _suUploadProtocol
              _suAccessToken
              _suUploadType
              _suCallback
              (Just AltJSON)
              _suPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutpagesUpdateResource)
                      mempty
