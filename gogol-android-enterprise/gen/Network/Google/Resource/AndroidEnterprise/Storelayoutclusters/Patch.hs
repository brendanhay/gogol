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
-- Module      : Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a cluster. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.storelayoutclusters.patch@.
module Network.Google.Resource.AndroidEnterprise.Storelayoutclusters.Patch
    (
    -- * REST Resource
      StorelayoutclustersPatchResource

    -- * Creating a Request
    , storelayoutclustersPatch
    , StorelayoutclustersPatch

    -- * Request Lenses
    , sppEnterpriseId
    , sppPageId
    , sppPayload
    , sppClusterId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.storelayoutclusters.patch@ method which the
-- 'StorelayoutclustersPatch' request conforms to.
type StorelayoutclustersPatchResource =
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
                           Patch '[JSON] StoreCluster

-- | Updates a cluster. This method supports patch semantics.
--
-- /See:/ 'storelayoutclustersPatch' smart constructor.
data StorelayoutclustersPatch = StorelayoutclustersPatch
    { _sppEnterpriseId :: !Text
    , _sppPageId       :: !Text
    , _sppPayload      :: !StoreCluster
    , _sppClusterId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StorelayoutclustersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sppEnterpriseId'
--
-- * 'sppPageId'
--
-- * 'sppPayload'
--
-- * 'sppClusterId'
storelayoutclustersPatch
    :: Text -- ^ 'sppEnterpriseId'
    -> Text -- ^ 'sppPageId'
    -> StoreCluster -- ^ 'sppPayload'
    -> Text -- ^ 'sppClusterId'
    -> StorelayoutclustersPatch
storelayoutclustersPatch pSppEnterpriseId_ pSppPageId_ pSppPayload_ pSppClusterId_ =
    StorelayoutclustersPatch
    { _sppEnterpriseId = pSppEnterpriseId_
    , _sppPageId = pSppPageId_
    , _sppPayload = pSppPayload_
    , _sppClusterId = pSppClusterId_
    }

-- | The ID of the enterprise.
sppEnterpriseId :: Lens' StorelayoutclustersPatch Text
sppEnterpriseId
  = lens _sppEnterpriseId
      (\ s a -> s{_sppEnterpriseId = a})

-- | The ID of the page.
sppPageId :: Lens' StorelayoutclustersPatch Text
sppPageId
  = lens _sppPageId (\ s a -> s{_sppPageId = a})

-- | Multipart request metadata.
sppPayload :: Lens' StorelayoutclustersPatch StoreCluster
sppPayload
  = lens _sppPayload (\ s a -> s{_sppPayload = a})

-- | The ID of the cluster.
sppClusterId :: Lens' StorelayoutclustersPatch Text
sppClusterId
  = lens _sppClusterId (\ s a -> s{_sppClusterId = a})

instance GoogleRequest StorelayoutclustersPatch where
        type Rs StorelayoutclustersPatch = StoreCluster
        type Scopes StorelayoutclustersPatch =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient StorelayoutclustersPatch{..}
          = go _sppEnterpriseId _sppPageId _sppClusterId
              (Just AltJSON)
              _sppPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy StorelayoutclustersPatchResource)
                      mempty
