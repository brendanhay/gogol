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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a cluster.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.get@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Get
    (
    -- * REST Resource
      StorelayoutclustersGetResource

    -- * Creating a Request
    , storelayoutclustersGet
    , StorelayoutclustersGet

    -- * Request Lenses
    , stoXgafv
    , stoUploadProtocol
    , stoEnterpriseId
    , stoAccessToken
    , stoUploadType
    , stoPageId
    , stoClusterId
    , stoCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutclusters.get@ method which the
-- 'StorelayoutclustersGet' request conforms to.
type StorelayoutclustersGetResource =
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
                                   Get '[JSON] StoreCluster

-- | Retrieves details of a cluster.
--
-- /See:/ 'storelayoutclustersGet' smart constructor.
data StorelayoutclustersGet =
  StorelayoutclustersGet'
    { _stoXgafv :: !(Maybe Xgafv)
    , _stoUploadProtocol :: !(Maybe Text)
    , _stoEnterpriseId :: !Text
    , _stoAccessToken :: !(Maybe Text)
    , _stoUploadType :: !(Maybe Text)
    , _stoPageId :: !Text
    , _stoClusterId :: !Text
    , _stoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StorelayoutclustersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stoXgafv'
--
-- * 'stoUploadProtocol'
--
-- * 'stoEnterpriseId'
--
-- * 'stoAccessToken'
--
-- * 'stoUploadType'
--
-- * 'stoPageId'
--
-- * 'stoClusterId'
--
-- * 'stoCallback'
storelayoutclustersGet
    :: Text -- ^ 'stoEnterpriseId'
    -> Text -- ^ 'stoPageId'
    -> Text -- ^ 'stoClusterId'
    -> StorelayoutclustersGet
storelayoutclustersGet pStoEnterpriseId_ pStoPageId_ pStoClusterId_ =
  StorelayoutclustersGet'
    { _stoXgafv = Nothing
    , _stoUploadProtocol = Nothing
    , _stoEnterpriseId = pStoEnterpriseId_
    , _stoAccessToken = Nothing
    , _stoUploadType = Nothing
    , _stoPageId = pStoPageId_
    , _stoClusterId = pStoClusterId_
    , _stoCallback = Nothing
    }


-- | V1 error format.
stoXgafv :: Lens' StorelayoutclustersGet (Maybe Xgafv)
stoXgafv = lens _stoXgafv (\ s a -> s{_stoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
stoUploadProtocol :: Lens' StorelayoutclustersGet (Maybe Text)
stoUploadProtocol
  = lens _stoUploadProtocol
      (\ s a -> s{_stoUploadProtocol = a})

-- | The ID of the enterprise.
stoEnterpriseId :: Lens' StorelayoutclustersGet Text
stoEnterpriseId
  = lens _stoEnterpriseId
      (\ s a -> s{_stoEnterpriseId = a})

-- | OAuth access token.
stoAccessToken :: Lens' StorelayoutclustersGet (Maybe Text)
stoAccessToken
  = lens _stoAccessToken
      (\ s a -> s{_stoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
stoUploadType :: Lens' StorelayoutclustersGet (Maybe Text)
stoUploadType
  = lens _stoUploadType
      (\ s a -> s{_stoUploadType = a})

-- | The ID of the page.
stoPageId :: Lens' StorelayoutclustersGet Text
stoPageId
  = lens _stoPageId (\ s a -> s{_stoPageId = a})

-- | The ID of the cluster.
stoClusterId :: Lens' StorelayoutclustersGet Text
stoClusterId
  = lens _stoClusterId (\ s a -> s{_stoClusterId = a})

-- | JSONP
stoCallback :: Lens' StorelayoutclustersGet (Maybe Text)
stoCallback
  = lens _stoCallback (\ s a -> s{_stoCallback = a})

instance GoogleRequest StorelayoutclustersGet where
        type Rs StorelayoutclustersGet = StoreCluster
        type Scopes StorelayoutclustersGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutclustersGet'{..}
          = go _stoEnterpriseId _stoPageId _stoClusterId
              _stoXgafv
              _stoUploadProtocol
              _stoAccessToken
              _stoUploadType
              _stoCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersGetResource)
                      mempty
