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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of all clusters on the specified page.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.list@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.List
    (
    -- * REST Resource
      StorelayoutclustersListResource

    -- * Creating a Request
    , storelayoutclustersList
    , StorelayoutclustersList

    -- * Request Lenses
    , sllXgafv
    , sllUploadProtocol
    , sllEnterpriseId
    , sllAccessToken
    , sllUploadType
    , sllPageId
    , sllCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutclusters.list@ method which the
-- 'StorelayoutclustersList' request conforms to.
type StorelayoutclustersListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   "clusters" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] StoreLayoutClustersListResponse

-- | Retrieves the details of all clusters on the specified page.
--
-- /See:/ 'storelayoutclustersList' smart constructor.
data StorelayoutclustersList =
  StorelayoutclustersList'
    { _sllXgafv :: !(Maybe Xgafv)
    , _sllUploadProtocol :: !(Maybe Text)
    , _sllEnterpriseId :: !Text
    , _sllAccessToken :: !(Maybe Text)
    , _sllUploadType :: !(Maybe Text)
    , _sllPageId :: !Text
    , _sllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutclustersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sllXgafv'
--
-- * 'sllUploadProtocol'
--
-- * 'sllEnterpriseId'
--
-- * 'sllAccessToken'
--
-- * 'sllUploadType'
--
-- * 'sllPageId'
--
-- * 'sllCallback'
storelayoutclustersList
    :: Text -- ^ 'sllEnterpriseId'
    -> Text -- ^ 'sllPageId'
    -> StorelayoutclustersList
storelayoutclustersList pSllEnterpriseId_ pSllPageId_ =
  StorelayoutclustersList'
    { _sllXgafv = Nothing
    , _sllUploadProtocol = Nothing
    , _sllEnterpriseId = pSllEnterpriseId_
    , _sllAccessToken = Nothing
    , _sllUploadType = Nothing
    , _sllPageId = pSllPageId_
    , _sllCallback = Nothing
    }


-- | V1 error format.
sllXgafv :: Lens' StorelayoutclustersList (Maybe Xgafv)
sllXgafv = lens _sllXgafv (\ s a -> s{_sllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sllUploadProtocol :: Lens' StorelayoutclustersList (Maybe Text)
sllUploadProtocol
  = lens _sllUploadProtocol
      (\ s a -> s{_sllUploadProtocol = a})

-- | The ID of the enterprise.
sllEnterpriseId :: Lens' StorelayoutclustersList Text
sllEnterpriseId
  = lens _sllEnterpriseId
      (\ s a -> s{_sllEnterpriseId = a})

-- | OAuth access token.
sllAccessToken :: Lens' StorelayoutclustersList (Maybe Text)
sllAccessToken
  = lens _sllAccessToken
      (\ s a -> s{_sllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sllUploadType :: Lens' StorelayoutclustersList (Maybe Text)
sllUploadType
  = lens _sllUploadType
      (\ s a -> s{_sllUploadType = a})

-- | The ID of the page.
sllPageId :: Lens' StorelayoutclustersList Text
sllPageId
  = lens _sllPageId (\ s a -> s{_sllPageId = a})

-- | JSONP
sllCallback :: Lens' StorelayoutclustersList (Maybe Text)
sllCallback
  = lens _sllCallback (\ s a -> s{_sllCallback = a})

instance GoogleRequest StorelayoutclustersList where
        type Rs StorelayoutclustersList =
             StoreLayoutClustersListResponse
        type Scopes StorelayoutclustersList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutclustersList'{..}
          = go _sllEnterpriseId _sllPageId _sllXgafv
              _sllUploadProtocol
              _sllAccessToken
              _sllUploadType
              _sllCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersListResource)
                      mempty
