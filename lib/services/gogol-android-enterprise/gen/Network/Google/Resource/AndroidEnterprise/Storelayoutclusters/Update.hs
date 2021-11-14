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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a cluster.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.update@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Update
    (
    -- * REST Resource
      StorelayoutclustersUpdateResource

    -- * Creating a Request
    , storelayoutclustersUpdate
    , StorelayoutclustersUpdate

    -- * Request Lenses
    , suuXgafv
    , suuUploadProtocol
    , suuEnterpriseId
    , suuAccessToken
    , suuUploadType
    , suuPageId
    , suuPayload
    , suuClusterId
    , suuCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutclusters.update@ method which the
-- 'StorelayoutclustersUpdate' request conforms to.
type StorelayoutclustersUpdateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "storeLayout" :>
               "pages" :>
                 Capture "pageId" Text :>
                   "clusters" :>
                     Capture "clusterId" Text :>
                       QueryParam "$.xgafv" Xgafv :>
                         QueryParam "upload_protocol" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] StoreCluster :>
                                     Put '[JSON] StoreCluster

-- | Updates a cluster.
--
-- /See:/ 'storelayoutclustersUpdate' smart constructor.
data StorelayoutclustersUpdate =
  StorelayoutclustersUpdate'
    { _suuXgafv :: !(Maybe Xgafv)
    , _suuUploadProtocol :: !(Maybe Text)
    , _suuEnterpriseId :: !Text
    , _suuAccessToken :: !(Maybe Text)
    , _suuUploadType :: !(Maybe Text)
    , _suuPageId :: !Text
    , _suuPayload :: !StoreCluster
    , _suuClusterId :: !Text
    , _suuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutclustersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suuXgafv'
--
-- * 'suuUploadProtocol'
--
-- * 'suuEnterpriseId'
--
-- * 'suuAccessToken'
--
-- * 'suuUploadType'
--
-- * 'suuPageId'
--
-- * 'suuPayload'
--
-- * 'suuClusterId'
--
-- * 'suuCallback'
storelayoutclustersUpdate
    :: Text -- ^ 'suuEnterpriseId'
    -> Text -- ^ 'suuPageId'
    -> StoreCluster -- ^ 'suuPayload'
    -> Text -- ^ 'suuClusterId'
    -> StorelayoutclustersUpdate
storelayoutclustersUpdate pSuuEnterpriseId_ pSuuPageId_ pSuuPayload_ pSuuClusterId_ =
  StorelayoutclustersUpdate'
    { _suuXgafv = Nothing
    , _suuUploadProtocol = Nothing
    , _suuEnterpriseId = pSuuEnterpriseId_
    , _suuAccessToken = Nothing
    , _suuUploadType = Nothing
    , _suuPageId = pSuuPageId_
    , _suuPayload = pSuuPayload_
    , _suuClusterId = pSuuClusterId_
    , _suuCallback = Nothing
    }


-- | V1 error format.
suuXgafv :: Lens' StorelayoutclustersUpdate (Maybe Xgafv)
suuXgafv = lens _suuXgafv (\ s a -> s{_suuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
suuUploadProtocol :: Lens' StorelayoutclustersUpdate (Maybe Text)
suuUploadProtocol
  = lens _suuUploadProtocol
      (\ s a -> s{_suuUploadProtocol = a})

-- | The ID of the enterprise.
suuEnterpriseId :: Lens' StorelayoutclustersUpdate Text
suuEnterpriseId
  = lens _suuEnterpriseId
      (\ s a -> s{_suuEnterpriseId = a})

-- | OAuth access token.
suuAccessToken :: Lens' StorelayoutclustersUpdate (Maybe Text)
suuAccessToken
  = lens _suuAccessToken
      (\ s a -> s{_suuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
suuUploadType :: Lens' StorelayoutclustersUpdate (Maybe Text)
suuUploadType
  = lens _suuUploadType
      (\ s a -> s{_suuUploadType = a})

-- | The ID of the page.
suuPageId :: Lens' StorelayoutclustersUpdate Text
suuPageId
  = lens _suuPageId (\ s a -> s{_suuPageId = a})

-- | Multipart request metadata.
suuPayload :: Lens' StorelayoutclustersUpdate StoreCluster
suuPayload
  = lens _suuPayload (\ s a -> s{_suuPayload = a})

-- | The ID of the cluster.
suuClusterId :: Lens' StorelayoutclustersUpdate Text
suuClusterId
  = lens _suuClusterId (\ s a -> s{_suuClusterId = a})

-- | JSONP
suuCallback :: Lens' StorelayoutclustersUpdate (Maybe Text)
suuCallback
  = lens _suuCallback (\ s a -> s{_suuCallback = a})

instance GoogleRequest StorelayoutclustersUpdate
         where
        type Rs StorelayoutclustersUpdate = StoreCluster
        type Scopes StorelayoutclustersUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutclustersUpdate'{..}
          = go _suuEnterpriseId _suuPageId _suuClusterId
              _suuXgafv
              _suuUploadProtocol
              _suuAccessToken
              _suuUploadType
              _suuCallback
              (Just AltJSON)
              _suuPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersUpdateResource)
                      mempty
