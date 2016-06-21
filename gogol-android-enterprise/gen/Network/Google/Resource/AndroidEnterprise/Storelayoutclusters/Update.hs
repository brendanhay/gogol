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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , suuEnterpriseId
    , suuPageId
    , suuPayload
    , suuClusterId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

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
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] StoreCluster :>
                           Put '[JSON] StoreCluster

-- | Updates a cluster.
--
-- /See:/ 'storelayoutclustersUpdate' smart constructor.
data StorelayoutclustersUpdate = StorelayoutclustersUpdate'
    { _suuEnterpriseId :: !Text
    , _suuPageId       :: !Text
    , _suuPayload      :: !StoreCluster
    , _suuClusterId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StorelayoutclustersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suuEnterpriseId'
--
-- * 'suuPageId'
--
-- * 'suuPayload'
--
-- * 'suuClusterId'
storelayoutclustersUpdate
    :: Text -- ^ 'suuEnterpriseId'
    -> Text -- ^ 'suuPageId'
    -> StoreCluster -- ^ 'suuPayload'
    -> Text -- ^ 'suuClusterId'
    -> StorelayoutclustersUpdate
storelayoutclustersUpdate pSuuEnterpriseId_ pSuuPageId_ pSuuPayload_ pSuuClusterId_ =
    StorelayoutclustersUpdate'
    { _suuEnterpriseId = pSuuEnterpriseId_
    , _suuPageId = pSuuPageId_
    , _suuPayload = pSuuPayload_
    , _suuClusterId = pSuuClusterId_
    }

-- | The ID of the enterprise.
suuEnterpriseId :: Lens' StorelayoutclustersUpdate Text
suuEnterpriseId
  = lens _suuEnterpriseId
      (\ s a -> s{_suuEnterpriseId = a})

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

instance GoogleRequest StorelayoutclustersUpdate
         where
        type Rs StorelayoutclustersUpdate = StoreCluster
        type Scopes StorelayoutclustersUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutclustersUpdate'{..}
          = go _suuEnterpriseId _suuPageId _suuClusterId
              (Just AltJSON)
              _suuPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersUpdateResource)
                      mempty
